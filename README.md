# Tidy Data Set Derived from Human Activity Recognition Study Data

This project contains an R script for creating a tidy data set summarizing the Human Activity Recognition (HAR) Using Smartphones Data Set. The HAR data set, along with descriptions, video, etc., is available here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Usage

Just run the R script. There are three configuration variables at the top if you wish to
change the source URL, or the file locations for the local raw or tidy data files.
* sourceUrl - Where to download the data
* localFile - Where to store the raw data locally
* tidyFile  - Where to write the tidy data file.

If you've already downloaded the compressed, raw data repository, you can set 
the localFile config variable to point there and the script will skip the download 
step.

Information about the column variables is provided in the CodeBook.md file.

## Contributing

Please don't. If you're doing this assignment, you shouldn't be looking at this. :)

## License

Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
