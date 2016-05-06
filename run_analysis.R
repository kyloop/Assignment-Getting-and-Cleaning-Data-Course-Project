## The following steps which create one R script called run_analysis.R that does the following.

## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names.
## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Getting the function of dcast from reshape2
library(reshape2)

## Read the data from activity labels and featres from the tables (Column #2)
activityLabels<-read.table("./github/UCI HAR Dataset/activity_labels.txt")
activityLabels<-activityLabels[,2]
feature<-read.table("./github/UCI HAR Dataset/features.txt")
feature<-feature[,2]

# Step 1.Merges the training and the test sets to create one data set.
## Read test data from test tables
testResult<-read.table("./github/UCI HAR Dataset/test/X_test.txt")
testActivity<-read.table("./github/UCI HAR Dataset/test/y_test.txt")
testSubject<-read.table("./github/UCI HAR Dataset/test/subject_test.txt")
trainResult<-read.table("./github/UCI HAR Dataset/train/X_train.txt")
trainActivity<-read.table("./github/UCI HAR Dataset/train/y_train.txt")
trainSubject<-read.table("./github/UCI HAR Dataset/train/subject_train.txt")

##Assign names to testResult Group from the feature table
names(testResult)<-feature
names(trainResult)<-feature

## Uses descriptive activity names to name the activities in the data set (Also, Step 4)
testActivity[,2]<-activityLabels[testActivity[,1]]
trainActivity[,2]<-activityLabels[trainActivity[,1]]

## Appropriately labels the data set with descriptive variable names. (Also Step 3) 
names(testSubject)<-"subject"
names(testActivity)<-c("activity.ID","activity.Names")
names(trainSubject)<-"subject"
names(trainActivity)<-c("activity.ID","activity.Names")

## Form/Combine the data set in one form
testData<-cbind(testSubject,testActivity,testResult) ##Combine test data
trainData<-cbind(trainSubject,trainActivity,trainResult) ##Combine train data
combineData<-rbind(testData,trainData) ##Combine test and train data

# Step 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
extractCombineData<-combineData[,grepl("subject|activity.ID|activity.Names|mean|std",names(combineData))]

# Step 5 creates a second, independent tidy data set with the average of each variable for each activity and each subject.
mainLabels<-c("subject","activity.ID","activity.Names") ## Pick out the first 3 columns
data_labels = setdiff(colnames(extractCombineData), mainLabels) ## Find those columns except the first 3 columns
meltData<-melt(extractCombineData,id.vars=mainLabels,measure.var=data_labels) ##reshape the column with the first 3 main columns
tidyData<-dcast(meltData, subject + activity.Names ~ variable , mean) ## Taking the mean for each columns variables

# Create the table for the tidyData
write.table(tidyData,"./github/UCI HAR Dataset/tidyData.csv",row.names = FALSE)
