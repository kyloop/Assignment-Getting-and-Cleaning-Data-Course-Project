## Getting and Cleaning Course Project
*The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.*

##Project purpose
*The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.*

##Project Background
*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.*

## Steps to create one R script called run_analysis.R 
*1.Merges the training and the test sets to create one data set.*

*2.Extracts only the measurements on the mean and standard deviation for each measurement.*

*3.Uses descriptive activity names to name the activities in the data set.*

*4.Appropriately labels the data set with descriptive variable names.*

*5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.*


##Notes on how to run the run_analysis.R
* Requires read.table / names / cbind / rbind / setdiff / melt / dcast etc function.*

* Read all the required source files into R.*

* Merge train and test data sets .*

* Name and labals all the column from the feature.txt.*

* Extract mean and standard deviation columns corresponding to subject and activities.*

* Create table to show the tidy data set with the average of each variable for each activity and each subject.*
    