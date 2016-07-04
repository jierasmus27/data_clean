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
"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"     
"tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"      
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"     
"tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"       
"tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"        
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"    
"tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"          "tBodyAccMag-std()"        
"tGravityAccMag-mean()"       "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"    
"tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"    
"fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"          
"fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"    
"fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"     
"fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"        
"fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"        
"fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"    
"fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"
