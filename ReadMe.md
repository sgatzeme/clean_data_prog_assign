## Getting Clean Data: Readme
*Human Activity Recognition Database (September 21, 2014)*

### Introduction

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

    Source:
            
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
    Smartlab - Non Linear Complex Systems Laboratory 
    DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
    activityrecognition '@' smartlab.ws 
    www.smartlab.ws

More information about the original data set can be obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Assignment

The assignment contains the following steps:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

### Script

Executing the script "run_analysis.R" results in two datasets (dataset.txt and dataset_avg.txt), which contain clean and tidy data. The script also downloads the input data, unzips the archive to the working directory and deletes the initial input data after preprocessing. For further explanations, please inspect the script code. 
