#Getting and Cleaning Data, Course Project
Nicolas Favaro, *June 21, 2015*

##README

This README explains how the code in the file `run_analysis.R` works.

In the interest of efficiency, I chose to do the steps a bit out of order, but the result is the same.

##Process

The code downloads the file from the internet, and then unzips it into the working directory. It then loads the activity labels (1-6) and then the features labels (1-561).

Using a regular expression, I add a variable `$keep` to the `features` label dataset which indicates `numeric` if the measurement is to be kept (mean or standard deviation) and `NULL` if the measurement is to be discarded. That way, I can feed in this list to the `colClasses` argument of `read.table()` so that we only keep the 66 relevant variables right from the start.

Next, I start loading in both the TRAIN and TEST sets in parallel: 

* First, I read into memory the `subject_*.txt` files
* Then I `cbind()` the `y_*.txt` files, which indicate the activites type data
* Finally, I `cbind()` the `X_*.txt` files
    + By passing in the `$keep` variable I previously mentioned to the `colClasses` argument, this satisfies requirement **(2) Extracts only the measurements on the mean and standard deviation for each measurement.**
    + By passing in the `$features` list to the `col.names` argument, this satisfies requirement **(4) Appropriately labels the data set with descriptive variable names.**
    
At this point, I am ready to merge the TRAIN and TEST sets with `rbind()`, which satisfies requirement **(1) Merges the training and the test sets to create one data set.**

I add activity labels by merging the `activity_labels` data set to the master data set, which satisifies requirement **(3) Uses descriptive activity names to name the activities in the data set.**

Finally, I use the `aggregate()` function to create a tidy data set with the average of each variable for each activity and each subject. Since this is in wide form, there are 180 observations (30 subjects * 6 activity types) with 68 variables (subject + activity + 66 variables). This satisfies requirement **(5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

The last line of the code outputs the new tidy data set to the text file.
