# Codebook

### Necessary Files:
* subject_train.txt consists of a 7351 X 1 data frame of subject numbers
* X_train.txt consists of a 7351 X 561 data frame of the training set of variables defined in the features.txt file with more info in the features_info.txt file
* y_train.txt consists of a 7351 X 1 data frame of numerics corresponding to the 6 types of activities

* Similar files named subject_test.txt, X_test.txt, and y_test.txt but for the testing set. The number of rows of each are 2947

* activity_labels provides the descriptive names of the activities and corresponding numbers to which they are assigned

*More info provided in the README.txt file contained in UCI HAR Dataset*

### Data Cleaning Process:
* The 3 txt files are read for the training set from the "train" folder within the "UCI HAR Dataset" directory and are in this order: subject_train.txt, y_train.txt, X_train.txt. These are renamed subjects_train, activities_train, and xdata_train respectively and column binded into comb_train. 

* Same steps for the testing set to get subjects_test, activities_test, and xdata_test resulting in comb_test. Finally comb_train and comb_test are row binded to create train_test.

* The first two variables are renamed "subject" and "activity" while the remaining variables are named corresponding to feature_names which reads the features.txt file.

* train_test is arranged first for "subject" then for "activity"

* activity_labels is created from activity_labels.txt and used to replace the activity numerics with descriptive factors: 1. Walking, 2. Walking Upstairs, 3. Walking Downstairs, 4. Sitting, 5. Standing, 6. Laying

* train_test is subsetted to only include the "subject", "activity", "mean()", and "std()" variables per the assignment instructions resulting in mean_std.

* mean_std is further cleaned and used to create a tidy dataset (named "tidy" in R script) contained in this repository as "tidydata.txt" which provides the average (mean) of each variable for every combination of subject and activity. Example: first row of tidydata.txt provides average values of measurements for subject 1 for Walking, second row provides average values for subject 1 for Walking Upstairs etc

### Variables in tidydata.txt:

Variable Name | Column # | Class | Description
--------------|----------|-------|------------
subject | 1 | integer | subject #     
activity | 2 | factor | activity type           
tBodyAccelmeanX | 3 | numeric | sensory measurement
tBodyAccelmeanY | 4 | numeric | sensory measurement           
tBodyAccelmeanZ | 5 | numeric | sensory measurement           
tBodyAccelstdX | 6 | numeric | sensory measurement          
tBodyAccelstdY | 7 | numeric | sensory measurement               
tBodyAccelstdZ |8 | numeric | sensory measurement               
tGravityAccelmeanX | 9 | numeric | sensory measurement          
tGravityAccelmeanY | 10 | numeric | sensory measurement            
tGravityAccelmeanZ | 11 | numeric | sensory measurement            
tGravityAccelstdX | 12 | numeric | sensory measurement            
tGravityAccelstdY | 13 | numeric | sensory measurement             
tGravityAccelstdZ | 14 | numeric | sensory measurement             
tBodyAccelJerkmeanX | 15 | numeric | sensory measurement          
tBodyAccelJerkmeanY | 16 | numeric | sensory measurement          
tBodyAccelJerkmeanZ | 17 | numeric | sensory measurement       
tBodyAccelJerkstdX | 18 | numeric | sensory measurement         
tBodyAccelJerkstdY | 19 | numeric | sensory measurement       
tBodyAccelJerkstdZ | 20 | numeric | sensory measurement       
tBodyGyromeanX | 21 | numeric | sensory measurement      
tBodyGyromeanY | 22 | numeric | sensory measurement           
tBodyGyromeanZ | 23 | numeric | sensory measurement           
tBodyGyrostdX | 24 | numeric | sensory measurement          
tBodyGyrostdY | 25 | numeric | sensory measurement            
tBodyGyrostdZ | 26 | numeric | sensory measurement                 
tBodyGyroJerkmeanX | 27 | numeric | sensory measurement           
tBodyGyroJerkmeanY | 28 | numeric | sensory measurement          
tBodyGyroJerkmeanZ | 29 | numeric | sensory measurement          
tBodyGyroJerkstdX | 30 | numeric | sensory measurement            
tBodyGyroJerkstdY | 31 | numeric | sensory measurement            
tBodyGyroJerkstdZ | 32 | numeric | sensory measurement           
tBodyAccelMagmean | 33 | numeric | sensory measurement            
tBodyAccelMagstd | 34 | numeric | sensory measurement              
tGravityAccelMagmean | 35 | numeric | sensory measurement          
tGravityAccelMagstd | 36 | numeric | sensory measurement         
tBodyAccelJerkMagmean | 37 | numeric | sensory measurement         
tBodyAccelJerkMagstd | 38 | numeric | sensory measurement          
tBodyGyroMagmean | 39 | numeric | sensory measurement             
tBodyGyroMagstd | 40 | numeric | sensory measurement               
tBodyGyroJerkMagmean | 41 | numeric | sensory measurement          
tBodyGyroJerkMagstd | 42 | numeric | sensory measurement          
fBodyAccelmeanX | 43 | numeric | sensory measurement              
fBodyAccelmeanY | 44 | numeric | sensory measurement              
fBodyAccelmeanZ | 45 | numeric | sensory measurement             
fBodyAccelstdX | 46 | numeric | sensory measurement                
fBodyAccelstdY | 47 | numeric | sensory measurement                
fBodyAccelstdZ | 48 | numeric | sensory measurement              
fBodyAccelmeanFreqX | 49 | numeric | sensory measurement           
fBodyAccelmeanFreqY | 50 | numeric | sensory measurement         
fBodyAccelmeanFreqZ | 51 | numeric | sensory measurement         
fBodyAccelJerkmeanX | 52 | numeric | sensory measurement          
fBodyAccelJerkmeanY | 53 | numeric | sensory measurement          
fBodyAccelJerkmeanZ | 54 | numeric | sensory measurement         
fBodyAccelJerkstdX | 55 | numeric | sensory measurement          
fBodyAccelJerkstdY | 56 | numeric | sensory measurement            
fBodyAccelJerkstdZ | 57 | numeric | sensory measurement           
fBodyAccelJerkmeanFreqX | 58 | numeric | sensory measurement       
fBodyAccelJerkmeanFreqY | 59 | numeric | sensory measurement     
fBodyAccelJerkmeanFreqZ | 60 | numeric | sensory measurement      
fBodyGyromeanX | 61 | numeric | sensory measurement     
fBodyGyromeanY | 62 | numeric | sensory measurement               
fBodyGyromeanZ | 63 | numeric | sensory measurement              
fBodyGyrostdX | 64 | numeric | sensory measurement                 
fBodyGyrostdY | 65 | numeric | sensory measurement                
fBodyGyrostdZ | 66 | numeric | sensory measurement               
fBodyGyromeanFreqX | 67 | numeric | sensory measurement            
fBodyGyromeanFreqY | 68 | numeric | sensory measurement            
fBodyGyromeanFreqZ | 69 | numeric | sensory measurement           
fBodyAccelMagmean | 70 | numeric | sensory measurement             
fBodyAccelMagstd | 71 | numeric | sensory measurement              
fBodyAccelMagmeanFreq | 72 | numeric | sensory measurement        
fBodyBodyAccelJerkMagmean | 73 | numeric | sensory measurement   
fBodyBodyAccelJerkMagstd | 74 | numeric | sensory measurement      
fBodyBodyAccelJerkMagmeanFreq | 75 | numeric | sensory measurement
fBodyBodyGyroMagmean | 76 | numeric | sensory measurement          
fBodyBodyGyroMagstd | 77 | numeric | sensory measurement           
fBodyBodyGyroMagmeanFreq | 78 | numeric | sensory measurement     
fBodyBodyGyroJerkMagmean | 79 | numeric | sensory measurement      
fBodyBodyGyroJerkMagstd | 80 | numeric | sensory measurement       
fBodyBodyGyroJerkMagmeanFreq | 90 | numeric | sensory measurement 


