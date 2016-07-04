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
- 3.2. 

