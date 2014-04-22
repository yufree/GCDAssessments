CodeBook for Human Activity Recognition Using Smartphones 
==============

# Introduction

The data come from experiments with a group of 30 volunteers aging 19-48 years. Six activities including walking, walking upstairs, walking downstairs, sitting, standing and laying were recorded by a smartphone(Samsung Galaxy S II) on the waist of volunteers.3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were collected and video-recorded manually. 

# Pre-process

The sensor signals were pre-processed by noise filters and then sampled. 

# Data structure

- Raw data have a 561-feature vector with time and frequency domain variables. 
- Only the measurements on the mean and standard deviation for each measurement was used here.
- The tidy data include the average of each variable for each activity and each subject.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- 180 observations for the each activity and each subject.
- 79 variables for the the average of the mean and the standard deviation of the measurements.
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Data were ordered by activities and subject ID.

# Notes

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.