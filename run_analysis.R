library(dplyr)

run_data_clean <- function() {
  data_folder <- "UCI\ HAR\ Dataset"
  
  # Training files
  train_subject_file <- paste(data_folder, "train/subject_train.txt", sep = "/")
  train_x_file       <- paste(data_folder, "train/X_train.txt", sep = "/")
  train_y_file       <- paste(data_folder, "train/y_train.txt", sep = "/")
  
  # Test files
  test_subject_file <- paste(data_folder, "test/subject_test.txt", sep = "/")
  test_x_file       <- paste(data_folder, "test/X_test.txt", sep = "/")
  test_y_file       <- paste(data_folder, "test/y_test.txt", sep = "/")
  
  # Feature and activity files
  feature_file  <- paste(data_folder, "features.txt", sep = "/")
  activity_file <- paste(data_folder, "activity_labels.txt", sep = "/")
  
  # Merge the training and the test sets to create one data set.
  train_data <- read.table(train_x_file)
  test_data <- read.table(test_x_file) 
  all_data <- rbind(train_data, test_data)
  
  # Extract only the measurements on the mean and standard deviation for each measurement
  ## extract the 2nd column containing the names
  all_col_names <- read.table(feature_file)[,2]
  ## get only mean and std (exclude meanFreq)
  mean_col_names <- grepl('-(mean|std)\\(', all_col_names)
  ## set all data column names
  colnames(all_data) <- all_col_names
  ## subset to only get mean and std columns
  mean_data <- subset(all_data, select = mean_col_names)
  
  # Read the activities from the activities file
  activity_labels <- read.table(activity_file)
  
  # Create a table of the y_files and activities to merge with all_data
  train_activities <- read.table(train_y_file)
  test_activities <- read.table(test_y_file)
  all_activities <- rbind(train_activities, test_activities)
  
  # Set the activity labels
  all_activities[,2] <- activity_labels[all_activities$V1, 2]
  mean_data <- cbind(all_activities[,2], mean_data)
  colnames(mean_data)[1] <- "Activity"
  
  # Clean up the column names
  colnames(mean_data) <- rename_columns(colnames(mean_data))
  
  # Create a second, independent tidy data set with the average of each variable for each activity and each subject.
  train_subjects <- read.table(train_subject_file)
  test_subjects <- read.table(test_subject_file)
  all_subjects <- rbind(train_subjects, test_subjects)[,1]
  tidy_data <- cbind(all_subjects, mean_data)
  colnames(tidy_data)[1] <- "Subject"
  
  final_tidy_data <- tidy_data %>% group_by(Subject, Activity) %>%
                     summarise_each(funs(mean))
  
  final_tidy_data
}

rename_columns <- function(old_name) {
  new_name <- old_name
  new_name <- gsub("\\(\\)", "", new_name)
  new_name <- gsub("-mean", "Mean", new_name)
  new_name <- gsub("-std", "Std", new_name)
  new_name <- gsub("^f", "frequency", new_name)
  new_name <- gsub("^t", "time", new_name)
  new_name <- gsub("BodyBody", "Body", new_name)
  new_name <- gsub("-", "", new_name)
}