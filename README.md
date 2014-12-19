CleanDataAssignment - Course project
=====================================


The script run_analysis.R
===========================
The script will traverse an original data set containing accelometer data from the Samsung Galaxy S smartphone. 
The data set can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original dataset consists of a test and training set containing both raw and processed data from several subjects 
collected during several kinds of activities. The data is split accross several files.

The run_analysis() script will, provided that the top directory of the original data set is stored in the same directory 
1. combine data from both test and training set
2. extract only prosessed mean "_mean()" and standard deviation "_sd()" variables from each recorded activity set for each subject
3. for each subject/activity pair compute the mean of the mean data in the original data set.
4. store the computed mean data for all subjects/activities in one file called "mydata.txt"

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Code book
==========
For details related to the original dataset please consult the README.txt file of that data set.

Variables in the mydata.txt file 
- Subject ID is a positiv number
- Activity is a string ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
- all mean and stdandard deviation features are untless and normalized and bounded witin [-1,1]

List of features:
1 Subject ID 
2 Activity
3 "tBodyAcc-mean()-X"               
4 "tBodyAcc-mean()-Y"               
5 "tBodyAcc-mean()-Z"               
6 "tBodyAcc-std()-X"               
7 "tBodyAcc-std()-Y"                
8 "tBodyAcc-std()-Z"                
9 "tGravityAcc-mean()-X"            
10 "tGravityAcc-mean()-Y"           
11 "tGravityAcc-mean()-Z"            
12 "tGravityAcc-std()-X"             
13 "tGravityAcc-std()-Y"             
14 "tGravityAcc-std()-Z"            
15 "tBodyAccJerk-mean()-X"           
16 "tBodyAccJerk-mean()-Y"           
17 "tBodyAccJerk-mean()-Z"           
18 "tBodyAccJerk-std()-X"           
19 "tBodyAccJerk-std()-Y"            
20 "tBodyAccJerk-std()-Z"            
21 "tBodyGyro-mean()-X"              
22 "tBodyGyro-mean()-Y"             
23 "tBodyGyro-mean()-Z"              
24 "tBodyGyro-std()-X"               
25 "tBodyGyro-std()-Y"               
26 "tBodyGyro-std()-Z"              
27 "tBodyGyroJerk-mean()-X"          
28 "tBodyGyroJerk-mean()-Y"          
29 "tBodyGyroJerk-mean()-Z"          
30 "tBodyGyroJerk-std()-X"          
31 "tBodyGyroJerk-std()-Y"           
32 "tBodyGyroJerk-std()-Z"           
33 "tBodyAccMag-mean()"              
34 "tBodyAccMag-std()"              
35 "tGravityAccMag-mean()"           
36 "tGravityAccMag-std()"            
37 "tBodyAccJerkMag-mean()"          
38 "tBodyAccJerkMag-std()"          
39 "tBodyGyroMag-mean()"             
40 "tBodyGyroMag-std()"              
41 "tBodyGyroJerkMag-mean()"         
42 "tBodyGyroJerkMag-std()"         
43 "fBodyAcc-mean()-X"               
44 "fBodyAcc-mean()-Y"               
45 "fBodyAcc-mean()-Z"               
46 "fBodyAcc-std()-X"               
47 "fBodyAcc-std()-Y"                
48 "fBodyAcc-std()-Z"                
49 "fBodyAcc-meanFreq()-X"           
50 "fBodyAcc-meanFreq()-Y"          
51 "fBodyAcc-meanFreq()-Z"           
52 "fBodyAccJerk-mean()-X"           
53 "fBodyAccJerk-mean()-Y"           
54 "fBodyAccJerk-mean()-Z"          
55 "fBodyAccJerk-std()-X"            
56 "fBodyAccJerk-std()-Y"            
57 "fBodyAccJerk-std()-Z"            
58 "fBodyAccJerk-meanFreq()-X"      
59 "fBodyAccJerk-meanFreq()-Y"       
60 "fBodyAccJerk-meanFreq()-Z"       
61 "fBodyGyro-mean()-X"              
62 "fBodyGyro-mean()-Y"             
63 "fBodyGyro-mean()-Z"              
64 "fBodyGyro-std()-X"               
65 "fBodyGyro-std()-Y"               
66 "fBodyGyro-std()-Z"              
67 "fBodyGyro-meanFreq()-X"          
68 "fBodyGyro-meanFreq()-Y"          
69 "fBodyGyro-meanFreq()-Z"          
70 "fBodyAccMag-mean()"             
71 "fBodyAccMag-std()"               
72 "fBodyAccMag-meanFreq()"          
73 "fBodyBodyAccJerkMag-mean()"      
74 "fBodyBodyAccJerkMag-std()"      
75 "fBodyBodyAccJerkMag-meanFreq()"  
76 "fBodyBodyGyroMag-mean()"         
77 "fBodyBodyGyroMag-std()"          
78 "fBodyBodyGyroMag-meanFreq()"    
79 "fBodyBodyGyroJerkMag-mean()"     
80 "fBodyBodyGyroJerkMag-std()"      
81 "fBodyBodyGyroJerkMag-meanFreq()"
