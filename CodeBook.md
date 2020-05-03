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

* mean_std is further cleaned and used to create a tidy dataset (named "tidy" in R script) contained in this repository as "tidydata.txt" which provides the average (mean) of each variable for every combination of subject and activity. EX: first row of tidydata.txt provides average values of measurements for subject 1 for Walking. second row provides average values for subject 1 for Walking Upstairs. etc

### Variables in tidydata.txt

Variable Name | Column # | Class | Description
--------------|----------|-------|------------

subject | 1               
activity | 2              
tBodyAccelmeanX | 3              
tBodyAccelmeanY | 4           
tBodyAccelmeanZ | 5           
tBodyAccelstdX | 6          
tBodyAccelstdY | 7               
tBodyAccelstdZ |8               
tGravityAccelmeanX | 9          
tGravityAccelmeanY | 10            
tGravityAccelmeanZ | 11            
tGravityAccelstdX | 12            
tGravityAccelstdY | 13             
tGravityAccelstdZ | 14             
tBodyAccelJerkmeanX | 15          
tBodyAccelJerkmeanY | 16          
tBodyAccelJerkmeanZ | 17       
tBodyAccelJerkstdX | 18         
tBodyAccelJerkstdY | 19       
tBodyAccelJerkstdZ | 20       
tBodyGyromeanX | 21      
tBodyGyromeanY | 22           
tBodyGyromeanZ | 23           
tBodyGyrostdX | 24          
tBodyGyrostdY | 25            
tBodyGyrostdZ | 26                 
tBodyGyroJerkmeanX | 27           
tBodyGyroJerkmeanY | 28          
tBodyGyroJerkmeanZ | 29          
tBodyGyroJerkstdX | 30            
tBodyGyroJerkstdY | 31            
tBodyGyroJerkstdZ | 32           
tBodyAccelMagmean | 33            
tBodyAccelMagstd | 34              
tGravityAccelMagmean | 35          
tGravityAccelMagstd | 36         
tBodyAccelJerkMagmean | 37         
tBodyAccelJerkMagstd | 38          
tBodyGyroMagmean | 39             
tBodyGyroMagstd | 40               
tBodyGyroJerkMagmean | 41          
tBodyGyroJerkMagstd | 42          
fBodyAccelmeanX | 43              
fBodyAccelmeanY | 44              
fBodyAccelmeanZ | 45             
fBodyAccelstdX | 46                
fBodyAccelstdY | 47                
fBodyAccelstdZ | 48              
fBodyAccelmeanFreqX | 49           
fBodyAccelmeanFreqY | 50         
fBodyAccelmeanFreqZ | 51         
fBodyAccelJerkmeanX | 52          
fBodyAccelJerkmeanY | 53          
fBodyAccelJerkmeanZ | 54         
fBodyAccelJerkstdX | 55          
fBodyAccelJerkstdY | 56            
fBodyAccelJerkstdZ | 57           
fBodyAccelJerkmeanFreqX | 58       
fBodyAccelJerkmeanFreqY | 59     
fBodyAccelJerkmeanFreqZ | 60      
fBodyGyromeanX | 61     
fBodyGyromeanY | 62               
fBodyGyromeanZ | 63              
fBodyGyrostdX | 64                 
fBodyGyrostdY | 65                
fBodyGyrostdZ | 66               
fBodyGyromeanFreqX | 67            
fBodyGyromeanFreqY | 68            
fBodyGyromeanFreqZ | 69           
fBodyAccelMagmean | 70             
fBodyAccelMagstd | 71              
fBodyAccelMagmeanFreq | 72        
fBodyBodyAccelJerkMagmean | 73   
fBodyBodyAccelJerkMagstd | 74      
fBodyBodyAccelJerkMagmeanFreq | 75
fBodyBodyGyroMagmean | 76          
fBodyBodyGyroMagstd | 77           
fBodyBodyGyroMagmeanFreq | 78     
fBodyBodyGyroJerkMagmean | 79      
fBodyBodyGyroJerkMagstd | 80       
fBodyBodyGyroJerkMagmeanFreq | 90 


