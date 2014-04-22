GCDAssessments
==============

> This repo is for the peer assessment of Getting and Cleaning Data

# getdata.R

Run this script and you will download the dataset and save them into a folder called "data" in the working directory. You will find the zip file has been unzip in a sub folder called "UCI HAR Dataset" which contains the data for this assessments.

# run_analysis.R

This script is used to clean the data and you will get "tidydata.txt" after you run it. It performs the following steps:

- Read the train and the test data
- Merges the training and the test sets to create one data set
- Extracts only the measurements on the mean and standard deviation for each measurement
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names
- Creates tidy data set with the average of each variable for each activity and each subject
- Save the clean data

# CodeBook.md

This file describes the variables, the data, and any transformations or work that you performed to clean up the data.
