# Codebook for Data Clean
Codebook for the Getting and Cleaning data Coursera MOOC

## Raw data used

The following data files have been consumed by the project:
### Input data points: 
#### Input files:
- test/X_test.txt
- train/X_train.txt

#### Values used:
All columns are initially used to get the first collection

### The subject that performed an activity:
#### Input files:
- train/subject_train.txt
- test/subject_test.txt

#### Values used:
All subjects are joined to the large initial data set

### Activities performed per subject:
#### Input files:
- train/y_train.txt
- test/y_test.txt

#### Values used:
All values are joined to the initial data set

### Acitivity Labels (the name of the activity):
#### Input file:
- activity_labels.txt

#### Values used:
- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

### Features:
#### Input file:
- features.txt
 
#### Values used:
All values matching either mean or std


## Cleaning process
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement
 - 2.1. Extract the second column containing the feature names
 - 2.2. Get only mean and std (exclude meanFreq) columns from step 2.1
 - 2.3. Set all data column names (from step 1) to the values from 2.1
 - 2.4. Subset all data (from 2.3) to only get values of mean and std columns (from 2.2)

3. Read the activities from the activities file
 - 3.1. Create a table of the y-files and activities to merge with all data from step 2.4
 - 3.2. Set the activity labels on the data from 3.1 in an "Activity" column

4. Clean up the column names by calling function rename_columns
 - 4.1. Remove any of the following ("()", "-")
 - 4.2. Replace: mean with Mean, std with Std, BodyBody with Body
 - 4.3. Replace names starting with f with frequency, or t with time

5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
  - 5.1. Merge the subject data from train and test
  - 5.2. Bind the column of subject data to the clean data from step 4.3
  - 5.3. Name the new column "Subject"
  - 5.4. Summarize the data by grouping the data set from 5.3 by Subject and Activity and apply the mean to the fields affected.

