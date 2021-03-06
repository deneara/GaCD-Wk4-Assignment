---
title: "Codebook for tidy_data_final dataset"
author: "Jessica Geahlen"
date: "11/19/2018"
---

This code book explains the data contained in the tidy_data_final dataset. For information on the run.analysis.R script, please see the README file.

The tidy_data_final dataset is a summary of the UCI Human Activity Recognition (HAR) Using Smartphones Data Set obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

From the UCI HAR data, the test and training data sets were merged and the means and standard deviations (stds) for each of the 17 features were extracted for each experimental run. Since there were several measurements for each test subject in each position, the average means and stds were calculated and these are measurements contained within the tidy_data_final. Please see run.analysis.R script and corresponding README file for more information. 

**The tidy_data_final dataset includes the following variables:**

**Columns 1-3**
* Date.Type – Test or Training Subjects
* Subject.Number – 1-30
* Position – Either Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs

**Columns 4-89**
The averages of the means and standard deviations for each of the 3-axial signal directions (X, Y, Z), of the 17 UCI HAR features (descriptions of features and their calculations are quoted from the UCI HAR info files below). 

* tBodyAcc.mean.(X, Y, Z) – the average of the time domain body accelerometer signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAcc.std.(X, Y, Z) – the average of the time domain body accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tGravityAcc.mean.(X, Y, Z) – the average of the time domain gravity accelerometer signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tGravityAcc.std.(X, Y, Z) – the average of the time domain gravity accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccJerk.mean.(X, Y, Z) – the average of the time domain body accelerometer Jerk signal (derived from the linear acceleration) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccJerk.std.(X, Y, Z) – the average of the time domain body accelerometer Jerk signal (derived from the linear acceleration) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyro.mean.(X, Y, Z) – the average of the time domain body gyroscope signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyro.std.(X, Y, Z) – the average of the time domain body gyroscope signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroJerk.mean.(X, Y, Z) – the average of the time domain body gyroscope Jerk signal (derived from the angular velocity) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroJerk.std.(X, Y, Z) – the average of the time domain body gyroscope Jerk signal (derived from the angular velocity) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccMag.mean.(X, Y, Z) – the average of the magnitude time domain body accelerometer signal means for eacsh subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccMag.std.(X, Y, Z) – the average of the magnitude time domain body accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tGravityAccMag.mean.(X, Y, Z) – the average of the magnitude time domain gravity accelerometer signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tGravityAccMag.std.(X, Y, Z) – the average of the magnitude time domain gravity accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccJerkMag.mean.(X, Y, Z) – the average of the magnitude time domain body accelerometer Jerk signal (derived from the linear acceleration) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyAccJerkMag.std.(X, Y, Z) – the average of the magnitude time domain body accelerometer Jerk signal (derived from the linear acceleration) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroMag.mean.(X, Y, Z) – the average of the magnitude time domain body gyroscope signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroMag std.(X, Y, Z) – the average of the magnitude time domain body gyroscope signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroJerkMag.mean.(X, Y, Z) – the average of the time domain body gyroscope Jerk signal (derived from the angular velocity) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* tBodyGyroJerkMag.std.(X, Y, Z) – the average of the time domain body gyroscope Jerk signal (derived from the angular velocity) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAcc.mean.(X, Y, Z) – the average of the frequency domain body accelerometer signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
-XYZ
* fBodyAcc.std.(X, Y, Z) – the average of the frequency domain body accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction -XYZ
* fBodyAccJerk.mean.(X, Y, Z) – the average of the frequency domain body accelerometer Jerk signal (derived from the linear acceleration) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAccJerk.std.(X, Y, Z) – the average of the frequency domain body accelerometer Jerk signal (derived from the linear acceleration) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyro.mean.(X, Y, Z) – the average of the frequency domain body gyroscope signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyro.std.(X, Y, Z) – the average of the frequency domain body gyroscope signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAccMag.mean.(X, Y, Z) – the average of the magnitude frequency domain body accelerometer signal means for eacsh subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAccMag.std.(X, Y, Z) – the average of the magnitude frequency domain body accelerometer signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAccJerkMag.mean.(X, Y, Z) – the average of the magnitude frequency domain body accelerometer Jerk signal (derived from the linear acceleration) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyAccJerkMag.std.(X, Y, Z) – the average of the magnitude frequency domain body accelerometer Jerk signal (derived from the linear acceleration) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyroMag.mean.(X, Y, Z) – the average of the magnitude frequency domain body gyroscope signal means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyroMag std.(X, Y, Z) – the average of the magnitude frequency domain body gyroscope signal standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyroJerkMag.mean.(X, Y, Z) – the average of the frequency domain body gyroscope Jerk signal (derived from the angular velocity) means for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction
* fBodyGyroJerkMag.std.(X, Y, Z) – the average of the frequency domain body gyroscope Jerk signal (derived from the angular velocity) standards of deviation for each subject performing the test in each position, in the X, Y, and Z 3-axial signal direction


**UCI HAR DATA Summary**

The following description of the data capture and processing has been quoted from the original UCI HAR README file. 

“The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.”

The following description of the features data has been quoted from the original UCI HAR features_info file. 

“The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.”

+ tBodyAcc-XYZ
+ tGravityAcc-XYZ
+ tBodyAccJerk-XYZ
+ tBodyGyro-XYZ
+ tBodyGyroJerk-XYZ
+ tBodyAccMag
+ tGravityAccMag
+ tBodyAccJerkMag
+ tBodyGyroMag
+ tBodyGyroJerkMag
+ fBodyAcc-XYZ
+ fBodyAccJerk-XYZ
+ fBodyGyro-XYZ
+ fBodyAccMag
+ fBodyAccJerkMag
+ fBodyGyroMag
+ fBodyGyroJerkMag

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information on the UCI HAR DataSet.
