# Code Book for Human Activity Recognition Tidy Data Set
This code book describes a tidy data set derived from the Human Activity Recognition (HAR) Using Smartphones Data Set. The HAR data set, along with descriptions, video, etc., is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Motivation for creating this tidy data set was to complete a required assignment for the "Getting and Cleaning Data" Coursera course.

## Study design
Retrieval and processing of the raw data source is completely automated in the script run_analysis.R.

The raw source data was retrieved as a compressed set of folders and files from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The processing script combines both the training and test data sets, and extracts just the mean and standard deviation (STD) measures. The mean of each of these measures is then calculated in a data table, grouped by the activity type (e.g., WALKING), and the subject (1-30) who performed the activity.

The tidy data set is written to a comma-separated text file, called "har_mean_observations.csv".

## Code book
The variables for this data set are described below. Variables 3-32 are mean values for time series measurements from the original data set, aggregated by activity and subject.

1. activity - A label for the activity performed during the observation. Value is one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
2. subject - An integer identifying the subject observed. Range: 1 to 30.

Time series measures, normalized. Range: -1 to 1:

Variables 3 to 8: Mean and standard deviation for body acceleration on the X, Y, and Z axes. Source columns: 1 to 6.

3. bodyaccelmeanx
4. bodyaccelmeany 
5. bodyaccelmeanz
6. bodyaccelstdx
7. bodyaccelstdy
8. bodyaccelstdz

Variables 9 to 14: Mean and standard deviation for gravity acceleration on the X, Y, and Z axes. Source columns: 41 to 46.

9. gravityaccelmeanx
10. gravityaccelmeany
11. gravityaccelmeanz
12. gravityaccelstdx
13. gravityaccelstdy
14. gravityaccelstdz

Variables 15 to 20: Mean and standard deviation for body Jerk on the X, Y, and Z axes. Source columns: 81 to 86.

15. bodyacceljerkmeanx
16. bodyacceljerkmeany
17. bodyacceljerkmeanz
18. bodyacceljerkstdx
19. bodyacceljerkstdy
20. bodyacceljerkstdz

Variables 21 to 26: Mean and standard deviation for body angular movement (gyro) on the X, Y, and Z axes. Source columns: 121 to 126.

21. bodygyromeanx
22. bodygyromeany
23. bodygyromeanz
24. bodygyrostdx
25. bodygyrostdy
26. bodygyrostdz

Variables 27 to 32: Mean and standard deviation for body angular movement (gyro) Jerk on the X, Y, and Z axes. Source columns: 161 to 166.

27. bodygyrojerkmeanx
28. bodygyrojerkmeany
29. bodygyrojerkmeanz
30. bodygyrojerkstdx
31. bodygyrojerkstdy
32. bodygyrojerkstdz


## References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
