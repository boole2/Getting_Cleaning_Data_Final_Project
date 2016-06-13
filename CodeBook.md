#Code Book

#Original Processed variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



## Transformed   variables in the derived tidy file

the tidy file contains the average value for each pre mentioned   measures.
variable Names where transformed in compliance with data.frame column name removing ()
and others special symbols and duplicated name where indexed by  Windows progressive number (1-3).
To augment readiness of variable,  some character where be expanded:
t -> time
f -> frequency
gyro -> gyroscope
Acc -> accelerometer
Mag -> magnitude   


## ID Row
Every row in the file has an identifier that correspond to a Specifically activity carry on by a Subject:

1 subject
2 activity
- Activity: Its activity label.
- Subject: An identifier of the subject who carried out the experiment.


## List of the variables
For each unique combination of Activity-subject (180 rows) the file contains the
average values of each original measures.
The full list of variable are reported   


 - 3 timeBodyAccelerometer.mean...X
 - 4 timeBodyAccelerometer.mean...Y
 - 5 timeBodyAccelerometer.mean...Z
 - 6 timeBodyAccelerometer.std...X
 - 7 timeBodyAccelerometer.std...Y
 - 8 timeBodyAccelerometer.std...Z
 - 9 timeGravityAccelerometer.mean...X
 - 10 timeGravityAccelerometer.mean...Y
 - 11 timeGravityAccelerometer.mean...Z
 - 12 timeGravityAccelerometer.std...X
 - 13 timeGravityAccelerometer.std...Y
 - 14 timeGravityAccelerometer.std...Z
 - 15 timeBodyAccelerometerJerk.mean...X
 - 16 timeBodyAccelerometerJerk.mean...Y
 - 17 timeBodyAccelerometerJerk.mean...Z
 - 18 timeBodyAccelerometerJerk.std...X
 - 19 timeBodyAccelerometerJerk.std...Y
 - 20 timeBodyAccelerometerJerk.std...Z
 - 21 timeBodyGyroscope.mean...X
 - 22 timeBodyGyroscope.mean...Y
 - 23 timeBodyGyroscope.mean...Z
 - 24 timeBodyGyroscope.std...X
 - 25 timeBodyGyroscope.std...Y
 - 26 timeBodyGyroscope.std...Z
 - 27 timeBodyGyroscopeJerk.mean...X
 - 28 timeBodyGyroscopeJerk.mean...Y
 - 29 timeBodyGyroscopeJerk.mean...Z
 - 30 timeBodyGyroscopeJerk.std...X
 - 31 timeBodyGyroscopeJerk.std...Y
 - 32 timeBodyGyroscopeJerk.std...Z
 - 33 timeBodyAccelerometerMagnitude.mean..
 - 34 timeBodyAccelerometerMagnitude.std..
 - 35 timeGravityAccelerometerMagnitude.mean..
 - 36 timeGravityAccelerometerMagnitude.std..
 - 37 timeBodyAccelerometerJerkMagnitude.mean..
 - 38 timeBodyAccelerometerJerkMagnitude.std..
 - 39 timeBodyGyroscopeMagnitude.mean..
 - 40 timeBodyGyroscopeMagnitude.std..
 - 41 timeBodyGyroscopeJerkMagnitude.mean..
 - 42 timeBodyGyroscopeJerkMagnitude.std..
 - 43 frequencyBodyAccelerometer.mean...X
 - 44 frequencyBodyAccelerometer.mean...Y
 - 45 frequencyBodyAccelerometer.mean...Z
 - 46 frequencyBodyAccelerometer.std...X
 - 47 frequencyBodyAccelerometer.std...Y
 - 48 frequencyBodyAccelerometer.std...Z
 - 49 frequencyBodyAccelerometerJerk.mean...X
 - 50 frequencyBodyAccelerometerJerk.mean...Y
 - 51 frequencyBodyAccelerometerJerk.mean...Z
 - 52 frequencyBodyAccelerometerJerk.std...X
 - 53 frequencyBodyAccelerometerJerk.std...Y
 - 54 frequencyBodyAccelerometerJerk.std...Z
 - 55 frequencyBodyGyroscope.mean...X
 - 56 frequencyBodyGyroscope.mean...Y
 - 57 frequencyBodyGyroscope.mean...Z
 - 58 frequencyBodyGyroscope.std...X
 - 59 frequencyBodyGyroscope.std...Y
 - 60 frequencyBodyGyroscope.std...Z
 - 61 frequencyBodyAccelerometerMagnitude.mean..
 - 62 frequencyBodyAccelerometerMagnitude.std..
 - 63 frequencyBodyAccelerometerJerkMagnitude.mean..
 - 64 frequencyBodyAccelerometerJerkMagnitude.std..
 - 65 frequencyBodyGyroscopeMagnitude.mean..
 - 66 frequencyBodyGyroscopeMagnitude.std..
 - 67 frequencyBodyGyroscopeJerkMagnitude.mean..
 - 68 frequencyBodyGyroscopeJerkMagnitude.std..
