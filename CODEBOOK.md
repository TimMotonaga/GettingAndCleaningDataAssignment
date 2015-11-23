#A Note On Units And Processing

As mentioned in the README file that came with the raw data, all of the statistics (that is, the variables besides Subject and Activity) have been normalized to fall in the range [-1,1]. This sort of normalization strips the units from an object because it requires you to divide by a number which is in the same units as the measurement. So, none of the statistics have units. 

Also, note that any variable prefixed with "f" was obtained via Fast Fourier Transform on a corresponding variable with prefix "t." This processing happened in the raw data.

Finally, it is important to note that the final table records the mean of each statistic over each pair of Subject and Activity. I performed that transformation on the data.

#A Note On Naming Conventions

Except for Subject, Activity, and a couple obvious typos, I decided to stick with the naming convention of the raw data. I appreciate the compactness of their naming convention. 

A vector name like "tBodyAcc-mean()-X" packs in a lot of information into a small(ish) package. So much so, that to write out the information in English would require a whole sentence, which seems inelegant. So our options are to lengthen the variable names or to lose information. Losing information seems like a bad idea in this case; the vectors often differ by a single parameter and so omitting that information would cause multiple columns to become indistinguishable. The other option, lengthening the name, also seems dubious to me. If you only clarify a single parameter, you still have a decent chance of confusing the reader with all the other unclarified parameters. And should you decide to clarify more than one, you are well on your way to sentence-length variables. So why not just let the codebook and the naming convention do the work? Once the reader looks up a few entries in the codebook, they will understand the logic behind the naming convention and will be able to understand the variable names (contingent on some other expertise) well enough to read the table.

#The Codebook

##Subject

This variable identifies the subject to which a record pertains. There are 30 subjects, so the range of the variable is [1,30]

##Activity

This variable identifies the subject's activity. The possible activities are:

* Walking
* Walking Up Stairs
* Walking Down Stairs
* Sitting
* Standing
* Laying

##tBodyAcc-mean()-X

This is the mean of the time domain signal of acceleration in the X plane.

##tBodyAcc-mean()-Y

This is the mean of the time domain signal of acceleration in the Y plane.

##tBodyAcc-mean()-Z

This is the mean of the time domain signal of acceleration in the Z plane.

## tBodyAcc-std()-X

This is the standard deviation of the sample distribution of the time domain signal of acceleration in the X plane.

##tBodyAcc-std()-Y

This is the standard deviation of the sample distribution of the time domain signal of acceleration in the Y plane.

##tBodyAcc-std()-Z

This is the standard deviation of the sample distribution of the time domain signal of acceleration in the Z plane.

##tGravityAcc-mean()-X

This is the mean of the time signal of acceleration due to gravity in the X plane.

##tGravityAcc-mean()-Y

This is the mean of the time signal of acceleration due to gravity in the Y plane.

##tGravityAcc-mean()-Z

This is the mean of the time signal of acceleration due to gravity in the Z plane.

##tGravityAcc-std()-X

This is the standard deviation of the sample distribution of the time domain signal of acceleration due to gravity in the X plane.

##tGravityAcc-std()-Y

This is the standard deviation of the sample distribution of the time domain signal of acceleration due to gravity in the Y plane.

##tGravityAcc-std()-Z

This is the standard deviation of the sample distribution of the time domain signal of acceleration due to gravity in the Z plane.

##tBodyAccJerk-mean()-X

This is the mean of the time signal of the jerk in the X plane. Jerk is the rate of change of acceleration. 

##tBodyAccJerk-mean()-Y

This is the mean of the time signal of the jerk in the Y plane. Jerk is the rate of change of acceleration. 

##tBodyAccJerk-mean()-Z

This is the mean of the time signal of the jerk in the Z plane. Jerk is the rate of change of acceleration. 

##tBodyAccJerk-std()-X

This is the standard deviation of the sample distribution of the  time signal of the jerk in the X plane. Jerk is the rate of change of acceleration. 

##tBodyAccJerk-std()-Y

This is the standard deviation of the sample distribution of the time  signal of the jerk in the Y plane. Jerk is the rate of change of acceleration. 

##tBodyAccJerk-std()-Z

This is the standard deviation of the sample distribution of the time signal of the jerk in the Z plane. Jerk is the rate of change of acceleration. 

##tBodyGyro-mean()-X

This is the mean of the time signal of angular acceleration in the X plane.  
##tBodyGyro-mean()-Y

This is the mean of the time signal of angular acceleration in the Y plane.

##tBodyGyro-mean()-Z

This is the mean of the time signal of angular acceleration in the Z plane.

##tBodyGyro-std()-X

This is the standard deviation of the sample distribution of the time  signal of angular acceleration in the X plane.

##tBodyGyro-std()-Y

This is the standard deviation of the sample distribution of the time  signal of angular acceleration in the Y plane.

##tBodyGyro-std()-Z

This is the standard deviation of the sample distribution of the time  signal of angular acceleration in the Z plane.

##tBodyGyroJerk-mean()-X

This is the mean of the time signal of angular jerk in the X plane. Angular jerk is the rate of change of angular acceleration.

##tBodyGyroJerk-mean()-Y

This is the mean of the time signal of angular jerk in the Y plane. Angular jerk is the rate of change of angular acceleration.

##tBodyGyroJerk-mean()-Z

This is the mean of the time signal of angular jerk in the Z plane. Angular jerk is the rate of change of angular acceleration.

##tBodyGyroJerk-std()-X

This is the standard deviation of the sample distribution of the  time signal of the angular jerk in the X plane. Angular jerk is the rate of change of angular acceleration.

##tBodyGyroJerk-std()-Y

This is the standard deviation of the sample distribution of the  time signal of the angular jerk in the Y plane. Angular jerk is the rate of change of angular acceleration.

##tBodyGyroJerk-std()-Z

This is the standard deviation of the sample distribution of the  time signal of the angular jerk in the Z plane. Angular jerk is the rate of change of angular acceleration.

##tBodyAccMag-mean()

This is the mean of the Euclidean norm of the time signal of total acceleration. The Euclidean norm measures the length of a vector. 

##tBodyAccMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the time domain signal for total acceleration. The Euclidean norm measures the length of a vector.

##tGravityAccMag-mean()

This is the mean of the Euclidean norm of the time signal of total acceleration due to gravity. The Euclidean norm measures the length of a vector.

##tGravityAccMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the time domain signal for total acceleration. The Euclidean norm measures the length of a vector.

##tBodyAccJerkMag-mean()

This is the mean of the Euclidean norm of the time signal of total jerk. The Euclidean norm measures the length of a vector.

##tBodyAccJerkMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the time domain signal for total jerk. The Euclidean norm measures the length of a vector.

##tBodyGyroMag-mean()

This is the mean of the Euclidean norm of the time signal of total angular acceleration. The Euclidean norm measures the length of a vector.

##tBodyGyroMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the time domain signal for total angular acceleration. The Euclidean norm measures the length of a vector.

##tBodyGyroJerkMag-mean()

This is the mean of the Euclidean norm of the time signal of total angular jerk. The Euclidean norm measures the length of a vector.

##tBodyGyroJerkMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the time domain signal for total angular jerk. The Euclidean norm measures the length of a vector.

##fBodyAcc-mean()-X

This is the mean of the frequency signal of acceleration in the X plane. 

##fBodyAcc-mean()-Y

This is the mean of the frequency signal of acceleration in the Y plane.

##fBodyAcc-mean()-Z

This is the mean of the frequency signal of acceleration in the Z plane.

##fBodyAcc-std()-X

This is the standard deviation of the sample distribution of the frequency signal of the acceleration in the X plane.  

##fBodyAcc-std()-Y

This is the standard deviation of the sample distribution of the frequency signal of the acceleration in the Y plane

##fBodyAcc-std()-Z

This is the standard deviation of the sample distribution of the frequency signal of the acceleration in the Z plane

##fBodyAccJerk-mean()-X

This is the mean of the frequency signal of jerk in the X plane. Jerk is the rate of change of angular acceleration.

##fBodyAccJerk-mean()-Y

This is the mean of the frequency signal of jerk in the Y plane. Jerk is the rate of change of angular acceleration.

##fBodyAccJerk-mean()-Z

This is the mean of the frequency signal of jerk in the Y plane. Jerk is the rate of change of angular acceleration.

##fBodyAccJerk-std()-X

This is the standard deviation of the sample distribution of the frequency domain signal for jerk in the X plane. Jerk is the rate of change of angular acceleration.

##fBodyAccJerk-std()-Y

This is the standard deviation of the sample distribution of the frequency domain signal for jerk in the Y plane. Jerk is the rate of change of angular acceleration.

##fBodyAccJerk-std()-Z

This is the standard deviation of the sample distribution of the frequency domain signal for jerk in the Z plane. Jerk is the rate of change of angular acceleration.

##fBodyGyro-mean()-X

This is the mean of the frequency signal of angular acceleration in the X plane.

##fBodyGyro-mean()-Y

This is the mean of the frequency signal of angular acceleration in the Y plane.

##fBodyGyro-mean()-Z

This is the mean of the time frequency of angular acceleration in the Z plane.

##fBodyGyro-std()-X

This is the standard deviation of the sample distribution of the frequency  signal of angular acceleration in the X plane.

##fBodyGyro-std()-Y

This is the standard deviation of the sample distribution of the frequency  signal of angular acceleration in the Y plane.

##fBodyGyro-std()-Z

This is the standard deviation of the sample distribution of the frequency  signal of angular acceleration in the X plane.

##fBodyAccMag-mean()

This is the mean of the Euclidean norm of the frequency signal of total acceleration. The Euclidean norm measures the length of a vector.

##fBodyAccMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the frequency domain signal for total acceleration. The Euclidean norm measures the length of a vector.

##fBodyAccJerkMag-mean()

This is the mean of the Euclidean norm of the frequency signal of total jerk. The Euclidean norm measures the length of a vector.

##fBodyAccJerkMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the frequency domain signal for total jerk. The Euclidean norm measures the length of a vector.

##fBodyGyroMag-mean()

This is the mean of the Euclidean norm of the frequency signal of total angular acceleration. The Euclidean norm measures the length of a vector.

##fBodyGyroMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the frequency domain signal for total angular acceleration. The Euclidean norm measures the length of a vector.

##fBodyGyroJerkMag-mean()

This is the mean of the Euclidean norm of the frequency signal of total angular jerk. The Euclidean norm measures the length of a vector.

##fBodyGyroJerkMag-std()

This is the standard deviation of the sample distribution of the Euclidean norm of the frequency domain signal for total angular jerk. The Euclidean norm measures the length of a vector.

