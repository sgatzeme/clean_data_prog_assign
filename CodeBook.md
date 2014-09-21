
## Getting Clean Data: Codebook 
*Human Activity Recognition Database (September 21, 2014)*

### Datasets

* **data.txt:** Clean dataset containing mean and standard deviation information for each measurement.
* **data_avg.txt:** Clean dataset containing summary information (average of each variable) for each activity and each subject.

### Structure

* **Nobs in dataset.txt:** 10,299
* **Nobs in dataset_avg.txt:** 180
* **No of variables:** 68
* **Data source:** http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Variables

General

        subject: Identifier of the subject who carried out the experiment [1:30]
        activity: Activity label {LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS}  

Accelerometer: prefix f = frequency, t = time

        tBodyAcc.mean.X: [-1, 1]
        tBodyAcc.mean.Y: [-1, 1]
        tBodyAcc.mean.Z: [-1, 1]
        tBodyAcc.std.X: [-1, 1]
        tBodyAcc.std.Y: [-1, 1]
        tBodyAcc.std.Z: [-1, 1]
        tGravityAcc.mean.X: [-1, 1]
        tGravityAcc.mean.Y: [-1, 1]
        tGravityAcc.mean.Z: [-1, 1]
        tGravityAcc.std.X: [-1, 1]
        tGravityAcc.std.Y: [-1, 1]
        tGravityAcc.std.Z: [-1, 1]
        tGravityAccMag.mean: [-1, 1]
        tGravityAccMag.std: [-1, 1]
        tBodyAccJerk.mean.X: [-1, 1]
        tBodyAccJerk.mean.Y: [-1, 1]
        tBodyAccJerk.mean.Z: [-1, 1]
        tBodyAccJerk.std.X: [-1, 1]
        tBodyAccJerk.std.Y: [-1, 1]
        tBodyAccJerk.std.Z: [-1, 1]
        tBodyAccJerkMag.mean: [-1, 1]
        tBodyAccJerkMag.std: [-1, 1]
        tBodyAccMag.mean: [-1, 1]
        tBodyAccMag.std: [-1, 1]
        fBodyAcc.mean.X: [-1, 1]
        fBodyAcc.mean.Y: [-1, 1]
        fBodyAcc.mean.Z: [-1, 1]
        fBodyAcc.std.X: [-1, 1]
        fBodyAcc.std.Y: [-1, 1]
        fBodyAcc.std.Z: [-1, 1]
        fBodyAccJerk.mean.X: [-1, 1]
        fBodyAccJerk.mean.Y: [-1, 1]
        fBodyAccJerk.mean.Z: [-1, 1]
        fBodyAccJerk.std.X: [-1, 1]
        fBodyAccJerk.std.Y: [-1, 1]
        fBodyAccJerk.std.Z: [-1, 1]
        fBodyAccMag.mean: [-1, 1]
        fBodyAccMag.std: [-1, 1]
        fBodyBodyAccJerkMag.mean: [-1, 1]
        fBodyBodyAccJerkMag.std: [-1, 1]

Gyrometer: prefix f = frequency, t = time

        tBodyGyro.mean.X: [-1, 1]
        tBodyGyro.mean.Y: [-1, 1]
        tBodyGyro.mean.Z: [-1, 1]
        tBodyGyro.std.X: [-1, 1]
        tBodyGyro.std.Y: [-1, 1]
        tBodyGyro.std.Z: [-1, 1]
        tBodyGyroJerk.mean.X: [-1, 1]
        tBodyGyroJerk.mean.Y: [-1, 1]
        tBodyGyroJerk.mean.Z: [-1, 1]
        tBodyGyroJerk.std.X: [-1, 1]
        tBodyGyroJerk.std.Y: [-1, 1]
        tBodyGyroJerk.std.Z: [-1, 1]
        tBodyGyroMag.mean: [-1, 1]
        tBodyGyroMag.std: [-1, 1]
        tBodyGyroJerkMag.mean: [-1, 1]
        tBodyGyroJerkMag.std: [-1, 1]
        fBodyGyro.mean.X: [-1, 1]
        fBodyGyro.mean.Y: [-1, 1]
        fBodyGyro.mean.Z: [-1, 1]
        fBodyGyro.std.X: [-1, 1]
        fBodyGyro.std.Y: [-1, 1]
        fBodyGyro.std.Z: [-1, 1]
        fBodyBodyGyroMag.mean: [-1, 1]
        fBodyBodyGyroMag.std: [-1, 1]
        fBodyBodyGyroJerkMag.mean: [-1, 1]
        fBodyBodyGyroJerkMag.std: [-1, 1]
