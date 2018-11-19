# This script if merging the training and test datasets for the Getting and Cleaning Data course Week 4 class assignment
# required packages (dplyr, tidyr)
# Please see the corrisponding READ ME file for an explanation of this code

library(dplyr)
library(tidyr)
setwd("~/Documents/bio_inf/Data_Science_Specialization/Getting and Cleaning Data/Week Four/Assignment")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt") 
ytest <- readLines("UCI HAR Dataset/test/y_test.txt")
subtest <- readLines("UCI HAR Dataset/test/subject_test.txt")
feat <- readLines("UCI HAR Dataset/features.txt")
colnames(xtest) <- feat 
test_data <- cbind(Type = "Test Subject", Subject = subtest, Position = ytest, xtest)

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") 
ytrain <- readLines("UCI HAR Dataset/train/y_train.txt")
subtrain <- readLines("UCI HAR Dataset/train/subject_train.txt")
colnames(xtrain) <- feat 
train_data <- cbind(Type = "Training Subject", Subject = subtrain, Position = ytrain, xtrain)

merged_data <- merge(test_data, train_data, all = TRUE)

merged_data_mnst <- select(merged_data, Type, Subject, Position, matches('mean|std'), -matches('Freq|angle'))

merged_data_mnst$Position <- ifelse(merged_data_mnst$Position == 1, yes = "Walking", 
                                     ifelse(merged_data_mnst$Position == 2, yes = "Walking Upstairs",
                                            ifelse(merged_data_mnst$Position == 3, yes = "Walking Downstairs",
                                                   ifelse(merged_data_mnst$Position == 4, yes = "Sitting",
                                                          ifelse(merged_data_mnst$Position == 5, yes = "Standing", 
                                                                 ifelse(merged_data_mnst$Position == 6, yes = "Laying", merged_data_mnst$Position))))))

mdmst_means <- aggregate(merged_data_mnst, list(merged_data_mnst$Type, merged_data_mnst$Subject, merged_data_mnst$Position), mean)
mdmst_meanscl <- mdmst_means[,-c(4:6)]
mdmst_meanscl$Group.2 <- as.numeric(as.character(mdmst_meanscl$Group.2))
mdmst_meanscl2 <- arrange(mdmst_meanscl, Group.1, Group.2)
colnames(mdmst_meanscl2)[1:3] <- c("Data Type", "Subject Number", "Position")
colnames(mdmst_meanscl2)[4:69] <- sub("\\d* ", "", colnames(mdmst_meanscl2)[4:69])
colnames(mdmst_meanscl2)[4:69] <- sub("\\()", "", colnames(mdmst_meanscl2)[4:69])
write.table(mdmst_meanscl2, file = "tidy_data_final")

