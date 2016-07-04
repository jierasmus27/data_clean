# Getting and Cleaning Data project

This is the peer reviewed final project for the Getting and Cleaning Data MOOC project from Coursera

## Contained in the repository
- UCI HAR Dataset - The dataset including the testing and training data for the project
- run_analysis.R - Runs an analysis on the Dataset
- README.md - A brief description of the project and it's components
- CODEBOOK.md - Indicates all the variables and summaries calculated, along with units, and other relevant information

## Prerequisites to use this project
1. Check the project out of Github and into a local folder. 
2. The required script to do the anaysis on the data is contained in run_analysis.R. 
3. The script will assume the "UCI HAR Dataset" folder containing the raw data is in the current folder. If it is not, please amend the "data_folder" variable to contain the correct location.
4. The script uses an additional library: dplyr. Please install this before running the analysis.

## Running the script
1. In the project folder run the command: source('run_analysis.R')
2. Then, run: tidy_set <- run_data_clean()

The tidy_set variable will now contain the tidy data as required.

Additionally a txt will be wriiten to the current folder containing the results.
