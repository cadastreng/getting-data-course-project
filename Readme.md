# Course Project

The goal of the Course Project of the [Getting and Cleaning Data Course](https://www.coursera.org/course/getdata) is to create a tidy data set from original experimental data that can be used to analysis with `run_analysis.R` script.

## Original Data Set
An original Human Activity Recognition Using Smartphones Data Set [1] was used 
to perfom a manipulation and analysis. The full description of techniques used 
to create and prepare the original data set you can found on the web site:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The description of the derivative data set which was created with `run_analysis.R` script you can see in the [Codebook](codebook.md).

## Manipulation and Analysis Design
According to the goal of the course project we should to perfom some tasks to create tidy data set:

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

We tried to realize these steps with a code in the `run_analysis.R` script. In this script we use following main variables:

    1. `X_train, y_train, subject_train` for train data sets.
    2. `X_test, y_test, subject_test` for test data sets.
    3. `X_full, y_full, subject_full` for merged train and test data sets.
    4. `X_full_ex` for data set with only the mean and standard deviation variables (columns).
    5. `activities` for the activity labels  data set.
    6. `tidy_data` for the final data set.
    
The final data set was wrote to the file `tidy_data.txt`.

## Reproduce of Analysis

This project was performed on the Linux Ubuntu 14.10 64-bit platform with R version 3.1.2 (2014-10-31, "Pumpkin Helmet") and RStudio version 0.98.1079.

To reproduce our results you should clone this repository in your working directory, download original data set from [this source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it in working directory. Then you could to run `run_analysis.R` script with R in your console or RStudio. When the script will be finished the file `tidy_data.txt` will be created. If you would like to use this data set in your later projects you could read it with following sample R code:

```{r}
data <- read.table(file_path, header = TRUE)
View(data)
```

## Literature

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012