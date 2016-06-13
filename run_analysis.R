# run_analysis.R
library(dplyr)
library(data.table)
library(tidyr)


#Step 1 - Download File and Read Traing & Test Data Set


setwd("/home/boole2/coursera/cleanData")
getwd()
if(!file.exists("project.zip")){
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url= fileUrl, method="curl", destfile = "./project.zip")

unzip(zipfile = "./project.zip", exdir = "./")
}
list.files()
setwd("./UCI HAR Dataset")
list.files()

### Load Variable Name and Activity name
filepathTest <- "./"
activityNames <- read.table(file.path(filepathTest,"activity_labels.txt"))
variableNames <- read.table(file.path(filepathTest,"features.txt"))

# load Dataframes for test
filepathTest <- "./test"
df_subject_test <- read.table(file.path(filepathTest,"subject_test.txt"))
df_x_test <- read.table(file.path(filepathTest,"X_test.txt"))
df_y_test <- read.table(file.path(filepathTest,"y_test.txt"))
#check data frame loaded.
dim(df_subject_test)
head(df_subject_test)
names(df_subject_test)
dim(df_x_test)
names(df_x_test)
head(df_x_test)
dim(df_y_test)
head(df_y_test)
#Apply Name variable to measures
names(df_x_test) <-  variableNames$V2
#verify rename is ok.
head(df_x_test[,c(472:482)])

# load Dataframes for train

filepathTest <- "./train"
df_subject_train <- read.table(file.path(filepathTest,"subject_train.txt"))
df_x_train <- read.table(file.path(filepathTest,"X_train.txt"))
df_y_train <- read.table(file.path(filepathTest,"y_train.txt"))

#check data frame loaded.
dim(df_subject_train)
head(df_subject_train)

dim(df_x_train)
head(df_x_train)
dim(df_y_train)
head(df_y_train)

#Apply Name of  variable to measures dataset.
names(df_x_train) <-  variableNames$V2

#verify  renaming the variable  is ok by show some subset of 
head(df_x_train[,c(472:482)])

#check row number before marge
nrow(df_subject_test) + nrow(df_subject_train)

#Step 2 - Merges the training and the test sets to create one data set.
#bing the colum of Subject and Activity together with measurement.
df_test  <- cbind(subject = df_subject_test$V1,activity = df_y_test$V1 , df_x_test )
head(df_test)
df_train  <- cbind(subject = df_subject_train$V1  ,activity = df_y_train$V1 , df_x_train )
head(df_train)

#marge by row the two dataset.
df_all <- rbind(df_train, df_test)
head(df_all)
dim(df_all)
head(df_all[,c(1:15)])



#Step -3 Extracts only the measurements on the mean and standard deviation for each measurement.


df_all_tbl <- data.table(df_all)




#grep only mean or std column 
df_mean_std <- df_all_tbl %>%
        select(activity, subject, grep("mean\\(\\)|std\\(\\)", names(df_all_tbl))) 


  

#Step 4-  Uses descriptive activity names to name the activities in the data set#using only the subset of the original data.frame with only the mean and std values 
df_all_tbl <- df_mean_std %>%
         mutate(activity = activityNames[activity,]$V2 )  
head(select(df_all_tbl, 1:3))     


#Appropriately labels the data set with descriptive variable names.
# Raname column with valid column names removing duplicate
valid_column_names <- make.names(names=names(df_all_tbl), unique=TRUE, allow_ = TRUE)
names(df_all_tbl) <- valid_column_names


names(df_all_tbl) <- gsub("^t","time", names(df_all_tbl) )
names(df_all_tbl) <- gsub("^f","frequency", names(df_all_tbl) )

names(df_all_tbl) <- gsub("Acc","Accelerometer", names(df_all_tbl) )
names(df_all_tbl) <- gsub("Gyro","Gyroscope", names(df_all_tbl) )
names(df_all_tbl) <- gsub("Mag","Magnitude", names(df_all_tbl) )
names(df_all_tbl) <- gsub("BodyBody","Body", names(df_all_tbl) )


#save new Variables name for codebook document.
write.table( data.frame ( new_name = names(df_all_tbl)), "new_name.txt", row.names = TRUE, quote = FALSE)

#Step 5- From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.


df_all_tbl_fact <-  df_all_tbl  %>% 
        mutate( activity = as.factor(activity), subject = as.factor(subject) )

#melt trasforming data set from wide to Long format with activity and subject as grupping  key 
df_all_tbl_fact_melted <- melt(df_all_tbl_fact, id = c( "activity","subject"))
head(df_all_tbl_fact_melted)
tail(df_all_tbl_fact_melted)
dim(df_all_tbl_fact_melted)


df_all_tbl_tidy__mean <- dcast(df_all_tbl_fact_melted, subject + activity ~ variable, mean)
#check if Cast inversion create the 6 activity* 30 subjact = 180 row, x 66 column with avarage tidy data frame.
dim(df_all_tbl_tidy__mean)
head(select( df_all_tbl_tidy__mean, 1:5))
tail(select( df_all_tbl_tidy__mean, 1:5))
#check result last 13 variables for subject 2 activity SITTING
head(df_all_tbl_tidy__mean %>%  filter(subject ==2 & activity == "SITTING" ) %>%  select(55:68) )


write.table(df_all_tbl_tidy__mean, "tidy.txt", row.names = FALSE, quote = FALSE)

