library(dplyr)
##We load dplyr so that we can use the group_by and summarize_each functions.
Accelerometer_And_Gyro_Data_test <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
Activity_test <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/test/y_test.txt", colClasses = "numeric")
Subject_test <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/test/subject_test.txt", colClasses = "numeric")
Accelerometer_And_Gyro_Data_train <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/train/X_train.txt",colClasses = "numeric")
Activity_train <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/train/y_train.txt",colClasses = "numeric")
Subject_train <-read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/train/subject_train.txt",colClasses = "numeric")
##Here we read in the data.
Accelerometer_And_Gyro_Data = rbind(Accelerometer_And_Gyro_Data_test,Accelerometer_And_Gyro_Data_train)
Activity = rbind(Activity_test,Activity_train)
Subject = rbind(Subject_test,Subject_train)
##And now we merge the data with for Accelerometer_And_Gyro_Data, Activity 
##and Subject, with the test data on top.
ActivityVector = c("Walking","Walking Up Stairs","Walking Down Stairs", "Sitting","Standing","Laying")
Activity=as.factor(sapply(Activity,function(i) ActivityVector[i]))
##Here we use sapply to turn the entries of Activity into descriptive names.
##We also change the type of activity to factor.
BigTable<-cbind(Subject,Activity,Accelerometer_And_Gyro_Data)
##And now we merge all the data into one big table.
Accelerometer_And_Gyro_Data_Variables = read.table("C:/Users/TimJohn/Desktop/Coursera/UCI HAR Dataset/features.txt",colClasses = "character")
Accelerometer_And_Gyro_Data_Variables = Accelerometer_And_Gyro_Data_Variables[,2]
Variables = c("Subject","Activity", Accelerometer_And_Gyro_Data_Variables)
names(BigTable) = Variables
##This code gives the columns the appropriate names, modulo some later
##processing for errors.
StandardDeviationLogic = grepl("std()",Variables, fixed = TRUE)
MeanLogic = grepl("mean()",Variables,fixed=TRUE)
SubjectAndActivityLogic = c(rep(TRUE,2),rep(FALSE,561))
SubsetLogic = StandardDeviationLogic|MeanLogic|SubjectAndActivityLogic
##Here we create a logic vector that says TRUE if the variable name is
##Subject, Activity, or contains std() or mean().
Step4Table = BigTable[,SubsetLogic]
Step4Table = mutate(Step4Table,Subject =as.factor(Subject))
##Now we subset the table based on this logic vector, so that we only have
##entries with std() or mean() in them.
GroupedTable = group_by(Step4Table,Subject,Activity)
Step5Table=summarize_each(GroupedTable,funs(mean))
names(Step5Table)=gsub("BodyBody","Body",names(Step5Table))
##This takes care of what appears to be a typo. 
write.table(Step5Table,"./Step5Table.txt", row.names = FALSE)
##And finally, we write the file.
