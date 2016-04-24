## Name: run_analysis.R
## Author: Dave Lemen
## Date: 2016-04-24

## Configuration
sourceUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localFile <- "har.zip"
tidyFile <- "har_mean_observations.csv"

## Download and extract the data, or use localFile if it was previously downloaded.
if(!file.exists(localFile)) {
    download.file(sourceUrl, localFile)
}

## Combine the training and test data sets for activity, subject, and measurements.
activity <- rbind(
    read.table(unz(localFile, "UCI HAR Dataset/test/y_test.txt")),
    read.table(unz(localFile, "UCI HAR Dataset/train/y_train.txt"))
)
## Convert the integer values for activities to a factor with appropriate labels.
labels <- read.table(unz(localFile, "UCI HAR Dataset/activity_labels.txt"))
activity$label <- factor(activity$V1, levels=labels$V1, labels=labels$V2)

subject <- rbind(
    read.table(unz(localFile, "UCI HAR Dataset/test/subject_test.txt")),
    read.table(unz(localFile, "UCI HAR Dataset/train/subject_train.txt"))
)

measure <- rbind(
    read.table(unz(localFile, "UCI HAR Dataset/test/X_test.txt")),
    read.table(unz(localFile, "UCI HAR Dataset/train/X_train.txt"))
)

## Create a data frame with all observations, using only the measures we're interested in.
df1 <- data.frame(
    activity$label,
    subject$V1,
    measure[, c(1:6, 41:46, 81:86, 121:126, 161:166)]
)
colnames(df1) <- c(
    "activity",
    "subject",
    
    "bodyaccelmeanx",
    "bodyaccelmeany",
    "bodyaccelmeanz",
    "bodyaccelstdx",
    "bodyaccelstdy",
    "bodyaccelstdz",
    
    "gravityaccelmeanx",
    "gravityaccelmeany",
    "gravityaccelmeanz",
    "gravityaccelstdx",
    "gravityaccelstdy",
    "gravityaccelstdz",
    
    "bodyacceljerkmeanx",
    "bodyacceljerkmeany",
    "bodyacceljerkmeanz",
    "bodyacceljerkstdx",
    "bodyacceljerkstdy",
    "bodyacceljerkstdz",
    
    "bodygyromeanx",
    "bodygyromeany",
    "bodygyromeanz",
    "bodygyrostdx",
    "bodygyrostdy",
    "bodygyrostdz",
    
    "bodygyrojerkmeanx",
    "bodygyrojerkmeany",
    "bodygyrojerkmeanz",
    "bodygyrojerkstdx",
    "bodygyrojerkstdy",
    "bodygyrojerkstdz"
)
## Order the data frame by activity and subject.
df1 <- df1[order(df1$activity, df1$subject),]

## Uncomment the following line to write out the full data set as a CSV file.
# write.csv(df1, "har_all_observations.csv", row.names=FALSE)

## Create a second data set which calculates the mean for each time series measure, grouped by activity 
## and subject.
df2 <- aggregate(df1[, 3:32], df1[,1:2], FUN=mean)
df2 <- df2[order(df2$activity, df2$subject),]

## Write out the aggregated, tidy data set as a CSV file.
write.csv(df2, tidyFile, row.names=FALSE)


