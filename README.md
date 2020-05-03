# Getting and Cleaning Data by Johns Hopkins & Coursera

This assignment requires smartphone data for human activity recognition https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
from UCI's Machine Learning Repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data:
The data consists of sensory recordings using the accelerometer and gyroscope of a Samsung Galaxy S II which is waist embedded onto 30 subjects (within ages 19 and 48) doing various daily activities such as walking, walking upstairs, walking downstairs, sitting, standing, and laying. 

*"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."* 

### Goals:
1. Use the training and testing sets of the data to form a single clean dataset which is labeled appropriately and informatively for the "activity" column as well as the other variable names.

2. Create a tidy dataset which contains the average values for all variables for every subject and activity. This will be saved as a txt file: "tidydata.txt"

* The codes for 1. and 2. will be presented in an R file: "run_analysis.R"
* The script requires the package "dplyr"

3. Create a codebook which describes the data and variables while elaborating on the code done to clean the data.
