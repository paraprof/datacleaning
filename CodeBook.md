The data set consists of accelerometer and gyroscope signals from a Samsung Galaxy S2 smartphone.  The data was collected from 30 volunteers while performing 6 different activities.  The initial data set recorded 561 observations for each individual/activity pair.  These observations were either time or frequency domain readings.  For the purpose of this project, we focused on readings involving the mean or standard deviation of time domain signals.  This resulted in a reduced data set consisting of 40 variables:

-         Mean Body x - Mean body accelration in the x direction, measured in gravitational units.
-       Mean Body y - Mean body accelration in the y direction, measured in gravitational units.
-       Mean Body z - Mean body accelration in the z direction, measured in gravitational units.
-       Sdev Body x - Standard deviation of body accelration in the x direction, measured in gravitational units.
-        Sdev Body y - Standard deviation of body accelration in the y direction, measured in gravitational units.
-        Sdev Body z - Standard deviation of body accelration in the z direction, measured in gravitational units.
-        Mean Gravitational x - Mean gravitational accelration in the x direction, measured in gravitational units.
-        Mean Gravitational y - Mean gravitational accelration in the y direction, measured in gravitational units.
-        Mean Gravitational z - Mean gravitational accelration in the z direction, measured in gravitational units.
-        Sdev Gravitational x - Standard deviation gravitational accelration in the x direction, measured in   gravitational units.
-        Sdev Gravitational y - Standard deviation gravitational accelration in the y direction, measured in gravitational units.
-       Sdev Gravitational z - Standard deviation gravitational accelration in the z direction, measured in gravitational units.
-       Mean Body Jerk x - Mean rate of change in body acceleration in the x direction, measured in gravitational units per unit of time.
-       Mean Body Jerk y - Mean rate of change in body acceleration in the y direction, measured in gravitational units per unit of time.
-       Mean Body Jerk z - Mean rate of change in body acceleration in the z direction, measured in gravitational units per unit of time.
-       Sdev Body Jerk x - Standard deviation of the rate of change in body acceleration in the x direction, measured in   gravitational units per unit of time.
-        Sdev Body Jerk y - Standard deviation of the rate of change in body acceleration in the y direction, measured in   gravitational units per unit of time.
-        Sdev Body Jerk z - Standard deviation of the rate of change in body acceleration in the z direction, measured in   gravitational units per unit of time.
-        Mean Body Gyro x - Mean angular velocity in the x direction, measured in radians per second.
-        Mean Body Gyro y - Mean angular velocity in the y direction, measured in radians per second.
-        Mean Body Gyro z - Mean angular velocity in the z direction, measured in radians per second.
-        Sdev Body Gyro x - Standard deviation of the angular velocity in the x direction, measured in radians per second.
-        Sdev Body Gyro y - Standard deviation of the angular velocity in the y direction, measured in radians per second.
-        Sdev Body Gyro z - Standard deviation of the angular velocity in the z direction, measured in radians per second.
-        Mean Body Gyro Jerk x - Mean rate of change in the angular velocity in the x direction, measured in radians per second^2^.
-        Mean Body Gyro Jerk y - Mean rate of change in the angular velocity in the y direction, measured in radians per second^2^.
-        Mean Body Gyro Jerk z - Mean rate of change in the angular velocity in the z direction, measured in radians per second^2^.
-        Sdev Body Gyro Jerk x - Standard deviation of change in the angular velocity in the x direction, measured in radians per second^2^.
-        Sdev Body Gyro Jerk y - Standard deviation of change in the angular velocity in the y direction, measured in radians per second^2^.
-        Sdev Body Gyro Jerk z - Standard deviation of change in the angular velocity in the z direction, measured in radians per second^2^.
-        Mean Body Magnitutde - Mean magnitude of the three dimensional body acceleration vector, measured in standard gravitational units.
-        Sdev Body Magnitutde - Standard deviation of the magnitude of the three dimensional body acceleration vector, measured in standard gravitational units.
-        Mean Gravitational Magnitude - Mean magnitude of the three dimensional gravitaional acceleration vector, measured in standard gravitational units.
-       Sdev Gravitational Magnitude - Standard deviation of the magnitude of the three dimensional gravitational acceleration vector, measured in standard gravitational units.
-        Mean Body Jerk Magnitude - Mean rate of change in the magnitude of the three dimensional body acceleration vector, measured in standard gravitational units per unit of time.
-        Sdev Body Jerk Magnitude - Standard deviation of the rate of change in the magnitude of the three dimensional body acceleration vector, measured in standard gravitational units per unit of time.
-        Mean Body Gyro Magnitude - Mean rate of change in the magnitude of the three dimensional gravitational acceleration vector, measured in standard gravitational units per unit of time.
-        Sdev Body Gyro Magnitude -Standard deviation of the rate of change in the magnitude of the three dimensional gravitational acceleration vector, measured in standard gravitational units per unit of time.
-        Mean Body Gyro Jerk Magnitude - Mean rate of change in the three dimensional body angular velocity vector, measured in radians per second^2^.
-        Sdev Body Gyro Jerk Magnitude - Standard deviation of the rate of change in the three dimensional body angular velocity vector, measured in radians per second^2^.


All variables have been normalized to occur in the closed interval [-1,1].
- - -
The script "run_analysis.R" takes the original data sets, which were broken down into a test set and a training set, and compiles them into one large raw data set with the 561 variables associated with the corresponding activity and subject.  The 40 variables noted above were then selected to form a refined data set.  Finally, this data set was grouped by subject and activity and a mean computed for each subject/activity pair for each of the 40 variables.  This result is reported in the output "table."
