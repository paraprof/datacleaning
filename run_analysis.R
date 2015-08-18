#Load the dplyr library
library(dplyr)

#Read in the test data
x_test <- read.table( "UCI HAR Dataset/test/X_test.txt")
y_test <- read.table( "UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table( "UCI HAR Dataset/test/subject_test.txt")

#Read in the training data
x_train <- read.table( "UCI HAR Dataset/train/X_train.txt")
y_train <- read.table( "UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table( "UCI HAR Dataset/train/subject_train.txt")

#Read in the features
features <- read.table( "UCI HAR Dataset/features.txt")

#Create the data frame with the subject id's, activities and features as columns
activities <- c('Walking','Walking upstairs', 'Walking downstairs', 'Sitting', 'Standing', 'Laying')
y_test1 <- y_test[,1]
y_train1 <- y_train[,1]
y_test.names <- activities[y_test1]
y_train.names <- activities[y_train1]
test <- cbind(subject_test, y_test.names, x_test)
train <- cbind(subject_train, y_train.names, x_train)
names <- c('subject', 'activity')
names(test) <- names
names(train) <- names
raw <- rbind(train,test)


#Select the desired variables (ones containing mean and standard deviation)
x <- c(1:2, 3:8, 43:48, 83:88, 123:128, 163:168, 203:204, 216:217, 229:230, 242:243, 255:256)
refined <- raw[,x]

#Rename the desired variables
newnames <- c('subject', 'activity', 'Mean Body x', 'Mean Body y', 'Mean Body z', 'Sdev Body x', 'Sdev Body y', 'Sdev Body z', 'Mean Gravitational x', 
        'Mean Gravitational y','Mean Gravitational z', 'Sdev Gravitational x', 'Sdev Gravitational y', 'Sdev Gravitational z',
        'Mean Body Jerk x', 'Mean Body Jerk y', 'Mean Body Jerk z', 'Sdev Body Jerk x', 'Sdev Body Jerk y', 'Sdev Body Jerk z',
        'Mean Body Gyro x', 'Mean Body Gyro y', 'Mean Body Gyro z', 'Sdev Body Gyro x', 'Sdev Body Gyro y', 'Sdev Body Gyro z',
         'Mean Body Gyro Jerk x', 'Mean Body Gyro Jerk y', 'Mean Body Gyro Jerk z', 'Sdev Body Gyro Jerk x', 'Sdev Body Gyro Jerk y',
         'Sdev Body Gyro Jerk z', 'Mean Body Magnitutde', 'Sdev Body Magnitutde', 'Mean Gravitational Magnitude',
          'Sdev Gravitational Magnitude', 'Mean Body Jerk Magnitude', 'Sdev Body Jerk Magnitude', 'Mean Body Gyro Magnitude',
          'Sdev Body Gyro Magnitude', 'Mean Body Gyro Jerk Magnitude', 'Sdev Body Gyro Jerk Magnitude')
names(refined) <- newnames
refined <- tbl_df(refined)

#Group by variables 'activity' and 'subject'
gp <- group_by(refined, subject, activity)

#Summarise means for each activity and subject
table <- summarise_each(gp, funs(mean))


