library(dplyr)

setwd("C:/Users/jjoshuac714/Desktop/R/Coursera- Johns Hopkins Data Science - Foundations Using R/3. Getting and Cleaning Data/Week 4")

# create a folder in directory named "Week 4 Assignment" if it doesn't already exist
if(!file.exists("./Week 4 Assignment")) {
      dir.create("./Week 4 Assignment")
}

# download data and unzip in a new folder named "Samsung Galaxy"
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "./Week 4 Assignment/Samsung Galaxy.zip", method = "curl")
unzip("./Week 4 Assignment/Samsung Galaxy.zip", exdir = "./Week 4 Assignment/Samsung Galaxy")



### 1. COMBINE TRAIN AND TEST DATASETS

# read in subject vector, activities vector, and dataset for training. Combine the three by column. 
dir1 <- list.files("./Week 4 Assignment/Samsung Galaxy/UCI HAR Dataset/train", full.names = TRUE)
subjects_train <- read.table(dir1[2])
xdata_train <- read.table(dir1[3])
activities_train <- read.table(dir1[4])
comb_train <- cbind(subjects_train, activities_train, xdata_train)

# read in subject  vector, activities vector, and dataset for testing. Combine the three by column.
dir2 <- list.files("./Week 4 Assignment/Samsung Galaxy/UCI HAR Dataset/test", full.names = TRUE)
subjects_test <- read.table(dir2[2])
xdata_test <- read.table(dir2[3])
activities_test <- read.table(dir2[4])
comb_test <- cbind(subjects_test, activities_test, xdata_test)

# combine the resulting train data with the test data.
train_test <- rbind(comb_train, comb_test)

### 2. RENAME VARIABLE NAMES AND ORDER BY SUBJECT #, THEN ACTIVITY #

# rename the first two column names
names(train_test)[1:2] <- c("subject", "activity")
# read in variable (feature) names and rename the rest of the columns
feature_names <- read.table("./Week 4 Assignment/Samsung Galaxy/UCI HAR Dataset/features.txt")
names(train_test)[-1:-2] <- as.character(feature_names[,2])

# arrange the dataset by ascending order of subject, then activity. 
train_test <- arrange(train_test, subject)
train_test <- arrange(train_test, activity)

### 3. REPLACE ACTIVITY # WITH ACTIVITY LABELS

# read in activity labels and replace activity #'s correspondingly as factors.
activity_labels <- read.table("./Week 4 Assignment/Samsung Galaxy/UCI HAR Dataset/activity_labels.txt")
train_test$activity <- factor(train_test$activity, labels = activity_labels[,2])

### 4. SUBSET NECESSARY DATA AND CLEAN UP VARIABLE NAMES

# subset only variables "subject", "activity", and variables containing "mean()" or "std()" from dataset.
mean_std <- train_test[,grepl("subject|activity|mean()|std()", names(train_test))]

# remove all parentheses, commas, and hyphens in variable names.
names(mean_std) <- gsub("\\()|,|-", "", names(mean_std))
# replace all "Acc" with "Accel" in variable names
names(mean_std) <- gsub("Acc", "Accel", names(mean_std))

### 5. CREATE A TIDY DATASET CONTAINING THE AVERAGE PER VARIABLE FOR EACH SUBJECT AND ACTIVITY

tidy <- group_by(mean_std, subject, activity)
tidy <- summarize_all(tidy, .funs = mean, na.rm = TRUE)

### 6. WRITE TIDY DATASET AS TXT FILE

write.table(tidy, file = "./Week 4 Assignment/tidydata.txt", row.names = FALSE)
