# Getting-and-Cleaning-Data-Assignment
Peer-assessed assignment for Coursera subject Getting and Cleaning Data

Sorry, as I lost track of the date and didn't have time to finish the assignment! Only got up to step 3.

Script reads in the training and test datasets, found in folders of the relevant working directory, then knits them together with rbind.

The variable names are read in from features.txt and assigned to be the column names (they're kind of descriptive?

As there are unwanted columns, the grep() command is used to find column names that partially match either "mean" or "std", and a new data frame, called xcut, is created by subsetting to variables with either of these words included.

The test and training activity numbers, corresponding to rows on xcut, are read in and rbound together.
