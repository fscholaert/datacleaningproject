CodeBook for Tidy UCI HAR Dataset
=================================

## What is it?

This CodeBook describes the data contained in the output of the `run_analysis.R` script contained in this repository. 


This script creates a tidy, condensed version of the University of California Irvine's (UCI's) dataset for Human Activity Recognition (HAR) using smartphones (see https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The tidy flat text file can be read using `read.table` to create a data table for further analysis.

```R
tidy_data <- read.table("Tidy.txt")
```

It contains the results of experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

In this tidy data set, average means and average standard deviations are shown for each combination of person and activity.  

The exact meaning of each column can be know by its value of the first row. The Activity is shown in the first two columns (code and label) and the participant it in the third column. 

The following columns are average mean() and std() of the measurements: 
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

For more information, see also the features_info.txt of the zipped UCI HAR dataset referenced above. 
