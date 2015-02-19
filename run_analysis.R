 library(plyr)
 library(dplyr)

 # read in test measures, activities and participants data sets
 Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
 Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
 Subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
 
 # read in training measures, activities and participants data sets
 Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
 Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
 Subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
 
 # append the test and training measures, activities and participants tables
 Xcombined <- rbind(Xtest, Xtrain);
 Ycombined <- rbind(Ytest, Ytrain);
 Subjectcombined <- rbind(Subjecttest, Subjecttrain);
 
 # now read in and assign the labels for the measurements
 Features <- read.table("UCI HAR Dataset/features.txt")
 colnames(Xcombined) <- Features[,2]
 
 
 # Let's first limit now the measurements to the mean and std ones
 
 allXcolnames <- colnames(Xcombined)
 
 Xmean <- Xcombined[,grep('mean',allXcolnames)]
 Xstd  <- Xcombined[,grep('std',allXcolnames)]
 
 Xdata <- cbind(Xmean,Xstd)
 
 
 # now let's merge the three participant, activities and measurements table
 
 Xparticipants <- Subjectcombined[, 1]
 Xactivities <- Ycombined[,1]

 Xdata <- cbind(cbind(Xparticipants,Xactivities),Xdata)
 
 
 # now read in and add the activity labels by joining on the common id
 activities <- read.table("UCI HAR Dataset/activity_labels.txt")
 
 colnames(activities) <- c("Activity_code","Activity_label")
 
 Xdata <- merge(activities,Xdata,by.x="Activity_code",by.y="Xactivities")
 
 
 # finally, let's created a tidy dataset that is grouped by the activity and participant id, 
 # showing the mean of each measurement for that combination
 Xdata2 <- Xdata %>% group_by(Activity_code, Activity_label, Xparticipants)
 Xdata3 <- Xdata2 %>% summarise_each(funs(mean)) 

 # write out the data set 
 write.table(Xdata3, file = "Tidy.txt", row.names = FALSE)
 
