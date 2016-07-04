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
