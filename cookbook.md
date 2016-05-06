#Cookbook

*This code book that describes the variables, the data, and any transformations or work that you performed to clean up the data*

##Project Sources
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones*

##Data Sources
*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip*

##Data Set includes the following files
*activity_labels.txt*

*features_info.txt*

*features.txt*

*README.txt*

*subject_train.txt*

*X_train.txt*

*y_train.txt*

*subject_test.txt*

*X_test.txt*

*y_test.txt*

*Inertial Signals Measurments (body_acc / gyro / total_acc)*

##These signals were used to estimate variables of the feature vector for each pattern:  

*'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

*tBodyAcc-XYZ*

*tGravityAcc-XYZ*

*tBodyAccJerk-XYZ*

*tBodyGyro-XYZ*

*tBodyGyroJerk-XYZ*

*tBodyAccMag*

*tGravityAccMag*

*tBodyAccJerkMag*

*tBodyGyroMag*

*tBodyGyroJerkMag*

*fBodyAcc-XYZ*

*fBodyAccJerk-XYZ*

*fBodyGyro-XYZ*

*fBodyAccMag*

*fBodyAccJerkMag*

*fBodyGyroMag*

*fBodyGyroJerkMag*

##The set of variables that were estimated from these signals are: 

*mean(): Mean value*

*std(): Standard deviation*

*mad(): Median absolute deviation*

*max(): Largest value in array*

*min(): Smallest value in array*

*sma(): Signal magnitude area*

*energy(): Energy measure. Sum of the squares divided by the number of values.*

*iqr(): Interquartile range* 

*entropy(): Signal entropy*

*arCoeff(): Autorregresion coefficients with Burg order equal to 4*

*correlation(): correlation coefficient between two signals*

*maxInds(): index of the frequency component with largest magnitude*

*meanFreq(): Weighted average of the frequency components to obtain a mean frequency*

*skewness(): skewness of the frequency domain signal*

*kurtosis(): kurtosis of the frequency domain signal*

*bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window*

*angle(): Angle between to vectors.*

##Steps to approach the project
*Merges the training and the test sets to create one data set.*

*Extracts only the measurements on the mean and standard deviation for each measurement.*

*Uses descriptive activity names to name the activities in the data set.*

*Appropriately labels the data set with descriptive variable names.*

*From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.*


    
    
    
    
    
    
    
    
    
    
