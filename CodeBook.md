#Getting and Cleaning Data, Course Project
Nicolas Favaro, *June 21, 2015*

##CodeBook

`subject` - the number 1-30 indicating which subject

`activity` - the activity type (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`), derived from the `activity_labels.txt` data set

The following 66 features were selected (only means and standard deviations). Averages for each measurement were taken for the final tidy data set. Periods in names indicate illegal characters for variable names in `R` such as parentheses, etc. that were removed:

`tBodyAcc.mean...X`

`tBodyAcc.mean...Y`

`tBodyAcc.mean...Z`

`tBodyAcc.std...X`

`tBodyAcc.std...Y`

`tBodyAcc.std...Z`

`tGravityAcc.mean...X`

`tGravityAcc.mean...Y`

`tGravityAcc.mean...Z`

`tGravityAcc.std...X`

`tGravityAcc.std...Y`

`tGravityAcc.std...Z`

`tBodyAccJerk.mean...X`

`tBodyAccJerk.mean...Y`

`tBodyAccJerk.mean...Z`

`tBodyAccJerk.std...X`

`tBodyAccJerk.std...Y`

`tBodyAccJerk.std...Z`

`tBodyGyro.mean...X`

`tBodyGyro.mean...Y`

`tBodyGyro.mean...Z`

`tBodyGyro.std...X`

`tBodyGyro.std...Y`

`tBodyGyro.std...Z`

`tBodyGyroJerk.mean...X`

`tBodyGyroJerk.mean...Y`

`tBodyGyroJerk.mean...Z`

`tBodyGyroJerk.std...X`

`tBodyGyroJerk.std...Y`

`tBodyGyroJerk.std...Z`

`tBodyAccMag.mean..`

`tBodyAccMag.std..`

`tGravityAccMag.mean..`

`tGravityAccMag.std..`

`tBodyAccJerkMag.mean..`

`tBodyAccJerkMag.std..`

`tBodyGyroMag.mean..`

`tBodyGyroMag.std..`

`tBodyGyroJerkMag.mean..`

`tBodyGyroJerkMag.std..`

`fBodyAcc.mean...X`

`fBodyAcc.mean...Y`

`fBodyAcc.mean...Z`

`fBodyAcc.std...X`

`fBodyAcc.std...Y`

`fBodyAcc.std...Z`

`fBodyAccJerk.mean...X`

`fBodyAccJerk.mean...Y`

`fBodyAccJerk.mean...Z`

`fBodyAccJerk.std...X`

`fBodyAccJerk.std...Y`

`fBodyAccJerk.std...Z`

`fBodyGyro.mean...X`

`fBodyGyro.mean...Y`

`fBodyGyro.mean...Z`

`fBodyGyro.std...X`

`fBodyGyro.std...Y`

`fBodyGyro.std...Z`

`fBodyAccMag.mean..`

`fBodyAccMag.std..`

`fBodyBodyAccJerkMag.mean..`

`fBodyBodyAccJerkMag.std..`

`fBodyBodyGyroMag.mean..`

`fBodyBodyGyroMag.std..`

`fBodyBodyGyroJerkMag.mean..`

`fBodyBodyGyroJerkMag.std..`