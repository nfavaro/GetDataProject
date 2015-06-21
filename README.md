#Getting and Cleaning Data, Course Project
*Nicolas Favaro, June 21, 2015*

##README

This README explains how the code in the file `run_analysis.R` works.

In the interest of efficiency, I chose to do the steps a bit out of order, but the result is the same.

The code downloads the file from the internet, and then unzips it into the working directory. It then loads the activity labels (1-6) and then the features labels (1-561).

Using a regular expression, I add a variable `$keep` to the `features` label dataset which indicates `numeric` if the measurement is to be kept (mean or standard deviation) and `NULL` if the measurement is to be discarded. That way, I can feed in this list to the `colClasses` argument of `read.table()` so that we only keep the 66 relevant variables right from the start.

Next, I start loading in both the TRAIN and TEST sets in parallel: 

* First, I read into memory the `subject_*.txt` files
* Then I `cbind()` the `y_*.txt` files, which indicate the activites type data
* Finally, I `cbind()` the `X_*.txt` files
    + By passing in the `$keep` variable I previously mentioned to the `colClasses` argument, this satisfies requirement **(2) Extracts only the measurements on the mean and standard deviation for each measurement.**
    + By passing in the `$features` list to the `col.names` argument, this satisfies requirement **(3) Appropriately labels the data set with descriptive variable names.**
    
At this point, I am ready to merge the TRAIN and TEST sets with `rbind()`, which satisfies requirement **(1) Merges the training and the test sets to create one data set.**