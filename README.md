# Getting_Cleaning_Data_Final_Project
##Human Activity Recognition Using Smart phones Dataset.

The purpose of the script run_analysis, is to produce a tidy dataset, Starting from data sampled at 50Hz by Smartphones as motion sensors with 30 volunteers and monitoring 6 different Activity and
pre-pocessed to produce 561 different measures both in time window then in frequency domain (by FFT).
At the very end the tidy dataset produced present average value of all the original measures grouped by Activity and Subject.
So the tidy file has  180 = 6 Activity * 30 subject row and 561 average value in column.


the step followed in the R script are:

### Step 1
 Download the zip file, create the working directory by unzip the archive.
#### Step 1.1.
 load  in to R environment both the test and train  file with measures, subject id and Activity id.
 load also the file with variable names and Activity in character Starting format.
### Step 2.
Merge in a single file train and test dataset, attaching the corresponding Activity and subject row key by
column binding the Activity and subject dataframe column.  
#### Step 2.1.
Rename the column of the merged data.frame with the  variable names get from the descriptive file.
### Step 3.
Create a second data frame with only mean and standard deviation variable: df_mean_std. we have use grep function
with regular expression apply to column name to filter only the mean and std column for this dataframe using also data.table to
mange duplicated column name.
### Step 4.
 Mutate the value of the Activity form numeric to character set get from Activity file. (we have use Mutate function from
  dplyr package)  
#### Step 4.1
 Rename the Column with more ridable names, here we have pay attention to compilance of the column name for the
Data.table removing duplication due to multiple measures of the same type apply to different time or frequency window.  (3 windows)
We have use name like time and frequency instead of  t or f.
### Step 5.
 We have use melt and dcast to transform the data.table in to Long format by Activity and Subject as aggregate key and then mean as aggregate function in dcast reverse wide format transform, obtaining a tidy data frame that was the final purpose of
the project. We have save the result in to tidy.txt file.
