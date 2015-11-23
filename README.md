#The Assignment

This data set is a submission for the course project in Coursera's Getting and Cleaning Data. The course project involves data from an experiment at the University of California, Irvine in which 30 participants had various movements tracked by a Samsung SII phone. The details of the experiment can be found here:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

And the raw data for this data set can be found here:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The assigment, taken verbatim from the course website, is this:

"You should create one R script called run_analysis.R that does the following. 

* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

#Contents

This data set includes the following files: 

* run_analysis.R
* R README.md
* CODEBOOK.md
* Step5Table.txt. 

#Instructions

In order to reproduce the table in Step5Table.txt, you will need to download the raw data to your working directory for R, and you will need to install the dplyr package for R. The final step is to run run_analysis.R. After that, a file named "Step5Table.txt" should appear in your working directory. Once you have the table, you can paste the following code into R in order to read it as a dataframe:

Step5Table = read.table("./Step5Table.txt", header = TRUE)

#Overview of the Script

In the experiment, there are 30 participants broken up into two, disjoint groups ("test" and "train"). The subject_test and subject_train files each represent one column tables whose sole purpose is to indicate which of the test subjects is being recorded. Similarly, the y_test and y_train variables are single column tables whose sole purpose is to indicate how the subject is moving (walking, sitting, etc.). Finally, the X_test and X_train files contain 561 column tables which relay information related to the readings of the Samsung phones during the movement. 

After reading in the files, the first thing the script does is to rbind the test data on top of the corresponding train data. Then it cbinds all the resulting tables together to make a large table with all the data from the test and train groups. At this point, the test data represents the top 2947 records of the table, and so it would be easy to subset the data based on group. In order to facilitate subsetting, the script names all of the columns. The next step is to remove variables which are not means or standard deviations (with the exceptions of Subject and Activity, which we keep). This is done by using grepl to search the variable names and make logical vectors that we use to subset the table. Finally, the script uses group_by and summarize_each to create a final table. For every pair of Subject and Activity, this final table gives the mean of each other variable.  Then the script prints the table to the working directory, and it is finished. 

More detail can be found in the comments of the script.

As a side note, I decided to keep only the vectors that end with mean() or sub() and omit those with Mean in the body or that contain Freqmean(). For one thing, frequency mean is a distinct measure from mean. For another, the variables with "Mean" in the body are all being used to calculate the angle of a mean vector with another vector. In other words, the result is not a mean. Also, it should be noted that the final table is sorted, and therefore loses the information about who was in the group train and who was in group test. Had we needed to keep that data, we could have added a column that indicated group membership after we built our big data table (that is, after we combined the test and train data, but before using group_by).
