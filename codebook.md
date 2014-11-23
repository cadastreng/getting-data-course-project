# Course Project Codebook

This codebook describes the original and derivative tidy data sets which was used in the Course Project of the [Getting and Cleaning Data Course](https://www.coursera.org/course/getdata).

## Original Data Set

An original Human Activity Recognition Using Smartphones Data Set [1] was used
to perfom a manipulation and analysis. The full description of techniques used
to create and prepare the original data set you can found on the web site:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Original Data Set Structure

You can download the original data set with [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). When you unzip this archive you will see new directory `UCI HAR Dataset` with following structure:

```
UCI HAR Dataset/
        test/
                Inertial Signals/
                subject_test.txt
                X_test.txt
                y_test.txt
        train/
                Inertial Signals/
                subject_train.txt
                X_train.txt
                y_train.txt
        activity_labels.txt
        features.txt
        features_info.txt
        README.txt
```

As you can see the original data set includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

The file in the `Inertial Signals/` directories are the raw signals and measures obtained during the original experiment. These data don't use in the course project activity.

### Original Data Set Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


## Tidy Data Set

Derivative tidy data set was created with `run_analysis.R` script and has `X_full_ex` name.

### Tidy Data Set Variables

The tidy data set contains 88 variables (columns). The variables containing the Mean and Std in their names means avarage and standard deviations values respectively. The units of measurements of variables with number 3-88 are the same as in the original data set.

  1.   subject
        The id of the person. It has values in the range of [1:30]. 
  2.   activity
        The name of person's activities. This is a factor variable with 6                 levels:
        WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING
  3.   timeBodyAccelerometerMeanX
  4.   timeBodyAccelerometerMeanY
  5.   timeBodyAccelerometerMeanZ
  6.   timeGravityAccelerometerMeanX
  7.   timeGravityAccelerometerMeanY
  8.   timeGravityAccelerometerMeanZ
  9.   timeBodyAccelerometerJerkMeanX
 10.   timeBodyAccelerometerJerkMeanY
 11.   timeBodyAccelerometerJerkMeanZ
 12.   timeBodyGyroscopeMeanX
 13.   timeBodyGyroscopeMeanY
 14.   timeBodyGyroscopeMeanZ
 15.   timeBodyGyroscopeJerkMeanX
 16.   timeBodyGyroscopeJerkMeanY
 17.   timeBodyGyroscopeJerkMeanZ
 18.   timeBodyAccelerometerMagnitudeMean
 19.   timeGravityAccelerometerMagnitudeMean
 20.   timeBodyAccelerometerJerkMagnitudeMean
 21.   timeBodyGyroscopeMagnitudeMean
 22.   timeBodyGyroscopeJerkMagnitudeMean
 23.   frequencyBodyAccelerometerMeanX
 24.   frequencyBodyAccelerometerMeanY
 25.   frequencyBodyAccelerometerMeanZ
 26.   frequencyBodyAccelerometerMeanFreqX
 27.   frequencyBodyAccelerometerMeanFreqY
 28.   frequencyBodyAccelerometerMeanFreqZ
 29.   frequencyBodyAccelerometerJerkMeanX
 30.   frequencyBodyAccelerometerJerkMeanY
 31.   frequencyBodyAccelerometerJerkMeanZ
 32.   frequencyBodyAccelerometerJerkMeanFreqX
 33.   frequencyBodyAccelerometerJerkMeanFreqY
 34.   frequencyBodyAccelerometerJerkMeanFreqZ
 35.   frequencyBodyGyroscopeMeanX
 36.   frequencyBodyGyroscopeMeanY
 37.   frequencyBodyGyroscopeMeanZ
 38.   frequencyBodyGyroscopeMeanFreqX
 39.   frequencyBodyGyroscopeMeanFreqY
 40.   frequencyBodyGyroscopeMeanFreqZ
 41.   frequencyBodyAccelerometerMagnitudeMean
 42.   frequencyBodyAccelerometerMagnitudeMeanFreq
 43.   frequencyBodyBodyAccelerometerJerkMagnitudeMean
 44.   frequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq
 45.   frequencyBodyBodyGyroscopeMagnitudeMean
 46.   frequencyBodyBodyGyroscopeMagnitudeMeanFreq
 47.   frequencyBodyBodyGyroscopeJerkMagnitudeMean
 48.   frequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq
 49.   angle(tBodyAccelerometerMean,gravity)
 50.   angle(tBodyAccelerometerJerkMean),gravityMean)
 51.   angle(tBodyGyroscopeMean,gravityMean)
 52.   angle(tBodyGyroscopeJerkMean,gravityMean)
 53.   angle(X,gravityMean)
 54.   angle(Y,gravityMean)
 55.   angle(Z,gravityMean)
 56.   timeBodyAccelerometerStdX
 57.   timeBodyAccelerometerStdY
 58.   timeBodyAccelerometerStdZ
 59.   timeGravityAccelerometerStdX
 60.   timeGravityAccelerometerStdY
 61.   timeGravityAccelerometerStdZ
 62.   timeBodyAccelerometerJerkStdX
 63.   timeBodyAccelerometerJerkStdY
 64.   timeBodyAccelerometerJerkStdZ
 65.   timeBodyGyroscopeStdX
 66.   timeBodyGyroscopeStdY
 67.   timeBodyGyroscopeStdZ
 68.   timeBodyGyroscopeJerkStdX
 69.   timeBodyGyroscopeJerkStdY
 70.   timeBodyGyroscopeJerkStdZ
 71.   timeBodyAccelerometerMagnitudeStd
 72.   timeGravityAccelerometerMagnitudeStd
 73.   timeBodyAccelerometerJerkMagnitudeStd
 74.   timeBodyGyroscopeMagnitudeStd
 75.   timeBodyGyroscopeJerkMagnitudeStd
 76.   frequencyBodyAccelerometerStdX
 77.   frequencyBodyAccelerometerStdY
 78.   frequencyBodyAccelerometerStdZ
 79.   frequencyBodyAccelerometerJerkStdX
 80.   frequencyBodyAccelerometerJerkStdY
 81.   frequencyBodyAccelerometerJerkStdZ
 82.   frequencyBodyGyroscopeStdX
 83.   frequencyBodyGyroscopeStdY
 84.   frequencyBodyGyroscopeStdZ
 85.   frequencyBodyAccelerometerMagnitudeStd
 86.   frequencyBodyBodyAccelerometerJerkMagnitudeStd
 87.   frequencyBodyBodyGyroscopeMagnitudeStd
 88.   frequencyBodyBodyGyroscopeJerkMagnitudeStd    

### How the Tidy Data Set was created

To create the the tidy data set we used the `run_analysis.R` script which performs the folloing steps:

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final data set created in the step 5 was also wrote to the file `tidy_data.txt`.

## Literature

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
