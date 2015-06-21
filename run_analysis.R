setwd("~/Documents/Education/Coursera/2015/getdata-015/GetDataProject/GetDataProject")

# download zip file
if(!file.exists("dataset.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                "dataset.zip", 
                method = "curl")
}

# unzip
unzip("dataset.zip")

# load activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",
                              col.names = c("activity.id", "activity"))

# load feature labels
features <- read.table("UCI HAR Dataset/features.txt",
                       col.names = c("feature.id", "feature"))

# mark mean and standard deviation features 
# ("numeric" to keep, "NULL" to reject for use with colClasses later)
features$keep = "NULL"
features$keep[grep("(mean\\(\\)|std\\(\\))", features$feature)] = "numeric"

# load train and test subjects
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                            col.names = "subject")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           col.names = "subject")

# add y activities data
subject_train <- cbind(subject_train,
                       read.table("UCI HAR Dataset/train/y_train.txt",
                                  col.names = "activity.id"))
subject_test <- cbind(subject_test,
                      read.table("UCI HAR Dataset/test/y_test.txt",
                                 col.names = "activity.id"))

# add X features data, keeping only means and standard deviations
subject_train <- cbind(subject_train,
                       read.table("UCI HAR Dataset/train/X_train.txt",
                                  colClasses = features$keep,
                                  col.names = features$feature))
subject_test <- cbind(subject_test,
                      read.table("UCI HAR Dataset/test/X_test.txt",
                                 colClasses = features$keep,
                                 col.names = features$feature))

# merge subjects
subject_merged <- rbind(subject_test, subject_train)

# add activity labels
subject_merged <- merge(subject_merged, activity_labels, by = "activity.id")

# aggregate averages into tidy data set
subject_avgs <- aggregate(. ~ subject + activity, 
                          data = subject_merged[ , names(subject_merged) != "activity.id"], 
                          FUN = mean)

# write tidy data set to file
write.table(subject_avgs, "tidy_data.txt", row.names = FALSE)
