## Course: 03_Getting_and_Cleaning_Data
## Authors: Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD
## MOOC Provider: Coursera
## Month_Year: November, 2014
## Course Project by Serguei Mikhailov (@cadastreng), November, 2014

library(dplyr)
library(tidyr)

## 1 Merges the training and the test sets to create one data set
path <- "./UCI HAR Dataset/"
path2train <- "./UCI HAR Dataset/train/"
path2test <- "./UCI HAR Dataset/test/"

X_train <- read.table(paste(path2train,  "X_train.txt", sep = ""))
y_train <- read.table(paste(path2train,  "y_train.txt", sep = ""))
subject_train <- read.table(paste(path2train, "subject_train.txt", sep = ""))

X_test <- read.table(paste(path2test,  "X_test.txt", sep = ""))
y_test <- read.table(paste(path2test,  "y_test.txt", sep = ""))
subject_test <- read.table(paste(path2test, "subject_test.txt", sep = ""))

X_full <- rbind(X_train, X_test)
y_full <- rbind(y_train, y_test)
subject_full <- rbind(subject_train, subject_test)

## 2 Extracts only the measurements on the mean and standard deviation 
##   for each measurement

features <- read.table(paste(path, "features.txt", sep = ""))
colnames(X_full) <- features[,2]

X_full_ex <- select(X_full[, !duplicated(colnames(X_full))], 
                    contains("mean"), contains("std"))

## 3 Uses descriptive activity names to name the activities in the data set

activities <- read.table(paste(path, "activity_labels.txt", sep = ""))
colnames(activities) <- c("id", "name")

activity <- cut(y_full[,1], 6, activities[,2])

subject <- subject_full[,1]

X_full_ex <- cbind(subject, activity, X_full_ex)
colnames(X_full_ex)

## 4 Appropriately labels the data set with descriptive variable names. 
##      t -> time
##      f -> frequency
##      Acc -> Accelerometer
##      Gyro -> Gyroscope
##      Mag -> Magnitude
##      mean -> Mean
##      std -> Std
##      () or - -> ""

descriptive_cnames <- gsub("^[t]","time", 
                           colnames(X_full_ex), perl = TRUE)
descriptive_cnames <- gsub("^[f]","frequency", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("Acc","Accelerometer", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("Gyro","Gyroscope", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("Mag","Magnitude", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("mean","Mean", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("std","Std", 
                           descriptive_cnames, perl = TRUE)
descriptive_cnames <- gsub("\\(\\)|-","", 
                           descriptive_cnames, perl = TRUE)
print(descriptive_cnames)

colnames(X_full_ex) <- descriptive_cnames

## 5 Creates a second, independent tidy data set with the average 
##   of each variable for each activity and each subject.

tidy_data <- aggregate(. ~ activity + subject, data=X_full_ex, mean)
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
