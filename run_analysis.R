#### load necessary libraries

  library(gdata)
  library(plyr)

#### Get data set from URL

  dl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

  download.file(dl, destfile = "./dataset.zip")

#### Unzip archive

  unzip("./dataset.zip")

#### set basic parameter
  
  directory <- "UCI HAR Dataset" 
  
  activities <- read.table(file = file.path(directory, "activity_labels.txt"), sep = " ")
  colnames(activities) <- c("id", "activity")
  
  features <- read.table(file = file.path(directory, "features.txt"), sep = " ")
  colnames(features) <- c("id", "feature")
  
#### create function to read in data: First read in data, then assign new column names, remove all feature entries without mean()
#### or std() and combine all datasets (subject, features and activities)

  merge.data <- function (input_data) {
    
          s <- read.table(file.path(directory, input_data, paste("subject_", input_data, ".txt", sep = "")))
          colnames(s) <- "subject"
          
          x <- read.table(file.path(directory, input_data, paste("X_", input_data, ".txt", sep = "")))
          colnames(x) <- features$feature
          
          y <- read.table(file.path(directory, input_data, paste("y_", input_data, ".txt", sep = "")))
          colnames(y) <- "activity_id"

          x <- x[colnames(x)[grepl("\\-(mean|std)\\(\\)", colnames(x))]]
    
          cbind(s, y, x)
  }
   
#### process data

  # read in and combine training and test set and clear memory afterwards
  file.test <- merge.data("test")
  
  file.train <- merge.data("train")
  
  data.1 <- rbind(file.test, file.train)
  
  remove(file.test, file.train)
  
  # Getting clean data: change values to labels, clean up colnames, sort data, subset data, remove duplicates
  data.1$subject <- factor(data.1$subject)
  
  data.1 <- merge(data.1, activities, by.x = "activity_id", by.y = "id")
  
  colnames(data.1) <- gsub("\\-", ".", gsub("\\(\\)", "", colnames(data.1)))
  
  data.1 <- data.1[unique(c("subject", "activity", colnames(data.1)[colnames(data.1) != "activity_id"]))]
  
  data.1 <- arrange(data.1, subject, activity)

  # Getting clean average data for each activity and each subject
  data.2 <- frameApply(data.1,
                      by = c("subject", "activity"),
                      on = colnames(data.1)[!(colnames(data.1) %in% c("subject", "activity"))],
                      fun = colMeans)
  
  data2 <- arrange(data.2, subject, activity)

  # write final output
  write.table(data.1, "data.txt", col.names = TRUE, row.names = FALSE)
  
  write.table(data.2, "data_avg.txt", col.names = TRUE, row.names = FALSE)
  
  # delete temp input files
  unlink(paste("./", directory, sep = ""), recursive = TRUE)
  
  unlink(paste("./", "dataset.zip", sep = ""))