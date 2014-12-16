run_analysis <- function() {

  ## Read features
  features <- read.table("/R/coursera/UCI HAR Dataset/features.txt");
  idx <- grep("mean()|std()", features[,2]); ## get index of all columns containing mean() and std() data 
  
  ## Read activity codes
  activities <- as.matrix(read.table("/R/coursera/UCI HAR Dataset/activity_labels.txt"));
  
  ## Read Test set
  subTestSet <- read.table("/R/coursera/UCI HAR Dataset/test/subject_test.txt");
  actTestSet <- read.table("/R/coursera/UCI HAR Dataset/test/y_test.txt");
  valTestSet <- read.table("/R/coursera/UCI HAR Dataset/test/X_test.txt");
  
  ## Read Train set
  subTrainSet <- read.table("/R/coursera/UCI HAR Dataset/train/subject_train.txt");
  actTrainSet <- read.table("/R/coursera/UCI HAR Dataset/train/y_train.txt");
  valTrainSet <- read.table("/R/coursera/UCI HAR Dataset/train/X_train.txt");
  
  ## Make a combined set containing only mean() and std() columns
  subCombined <- rbind(subTestSet, subTrainSet);
  actCombined <- rbind(actTestSet, actTrainSet);
  valCombined <- rbind(valTestSet[,idx], valTrainSet[,idx]);
  valCombined <- cbind(actCombined, valCombined);
  valCombined <- cbind(subCombined, valCombined);
  
  ## Generate a data frame containing headings, subject, activity, mean() and std() data
  fTmp <- as.character(features[idx,2]);
  featuresCombined <- append(c("Subject", "Activity"), fTmp)
  
  ## change col names
  colnames(valCombined) <- featuresCombined;
  
  ## replace activity code with activity names
  for (i in 1:nrow(activities) ) {
    valCombined$Activity[valCombined$Activity == activities[i,1]] <- activities[i,2];
  }

  valCombined;

  ## Make the tidy data set
  
  
  
}