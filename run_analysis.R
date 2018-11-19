# This script if merging the training and test datasets for the Getting and Cleaning Data course Week 4 class assignment
# required packages (dplyr, tidyr)
# Please see the corresponding README file for an explanation of this code
# This code can be run all at one to produce the tidy_data_final.txt file

library(dplyr)
library(tidyr)
setwd("~/Documents/bio_inf/Data_Science_Specialization/Getting and Cleaning Data/Week Four/Assignment") #directory that contains the UCI HAR Dataset folder
xtest <- read.table("UCI HAR Dataset/test/X_test.txt") #reads the X_test.txt dataframe into R
ytest <- readLines("UCI HAR Dataset/test/y_test.txt") #reads the y_test.txt file into R
subtest <- readLines("UCI HAR Dataset/test/subject_test.txt") #reads the subject_test.txt file into R
feat <- readLines("UCI HAR Dataset/features.txt") #reads the features.txt file into R
colnames(xtest) <- feat  #sets the column names of the xtest dataframe to the feat list
test_data <- cbind(Type = "Test Subject", Subject = subtest, Position = ytest, xtest) # combines subtest, ytest, and xtest into one dataframe, while also creating a column for test type

# Repeat the steps above for the training data
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") 
ytrain <- readLines("UCI HAR Dataset/train/y_train.txt")
subtrain <- readLines("UCI HAR Dataset/train/subject_train.txt")
colnames(xtrain) <- feat 
train_data <- cbind(Type = "Training Subject", Subject = subtrain, Position = ytrain, xtrain)

merged_data <- merge(test_data, train_data, all = TRUE) #merges the test and training data into one big dataframe

merged_data_mnst <- select(merged_data, Type, Subject, Position, matches('mean|std'), -matches('Freq|angle')) #selects only Type, Subject, Position and any columns whose names contain "mean" or "std" but not "Freq" or "angle" 

merged_data_mnst$Position <- ifelse(merged_data_mnst$Position == 1, yes = "Walking",
                                     ifelse(merged_data_mnst$Position == 2, yes = "Walking Upstairs",
                                            ifelse(merged_data_mnst$Position == 3, yes = "Walking Downstairs",
                                                   ifelse(merged_data_mnst$Position == 4, yes = "Sitting",
                                                          ifelse(merged_data_mnst$Position == 5, yes = "Standing", 
                                                                 ifelse(merged_data_mnst$Position == 6, yes = "Laying", merged_data_mnst$Position)))))) #replaces the position numbers with descriptive labels

mdmst_means <- aggregate(merged_data_mnst, list(merged_data_mnst$Type, merged_data_mnst$Subject, merged_data_mnst$Position), mean) #splits the data by Type, Subject, and Position, finds the means of each column and reassembles the data in one step
mdmst_meanscl <- mdmst_means[,-c(4:6)] # removes the columns with NAs
mdmst_meanscl$Group.2 <- as.numeric(as.character(mdmst_meanscl$Group.2)) # changes the class of the Group.2 columns to 'numeric'
mdmst_meanscl2 <- arrange(mdmst_meanscl, Group.1, Group.2) # sorts the data according to Group.1 and Group.2 (Type and Subject)
colnames(mdmst_meanscl2)[1:3] <- c("Data Type", "Subject Number", "Position") # renames the first three columns
colnames(mdmst_meanscl2)[4:69] <- sub("\\d* ", "", colnames(mdmst_meanscl2)[4:69]) # removes the numbers at the beginning of the names of columns 4-69
colnames(mdmst_meanscl2)[4:69] <- sub("\\()", "", colnames(mdmst_meanscl2)[4:69]) # removes "()" from columns 4-69 where applicable 
write.table(mdmst_meanscl2, file = "tidy_data_final", row.names = FALSE) # saves the resulting dataframe as a table

