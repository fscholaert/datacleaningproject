# datacleaningproject

This is a repository which contains the code for a coursera project.

The R code in this package makes use of the plyr and dplyr packages. 

Initially it reads in the files from a subdirectory 'UCI HAR Dataset' in the working directory, that contains the extracted zip files needed for this project. 

The files contain the results for the Test and Training data sets as well as the relevant lables an descriptions.  

The R code makes use of the rbind() function to append the test and training tables together. 

It simply adds the participants ('subject' tables) and activity information ('Y' tables) as columns to the measurements table ('X' tables) 

The dplyr package is used to creat the tidy dataset (namely by making use of the functions 'group_by' and 'summarise_each()'

For more detailed information on the functioning of the script, please see the comments within the R code. 
