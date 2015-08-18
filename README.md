# datacleaning
For Coursera course "Getting and Cleaning Data"

The R script run_analysis.R takes data from the website 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
containing readings from accelerometers on a Samsung smartphone recorded while 30 subjects were 
perfoming various activities.

The script assumes that the files from this URL have been unzipped into your working directory and that the 'dplyr' 
package has been installed.  The script then:
  1.  Loads the 'dplyr' library;
  2.  Reads in the necessary files;
  3.  Creates a raw dataframe merging the data from a training data set and test data set;
  4.  Selects a subset of the variables contained in the raw data set (see below);
  5.  Summarises the average of each variable by subject and activity.
  
The variables selected from the raw data set were ones which measured (and normalized) the mean and standard 
deviation of the time signal from the smartphone.
