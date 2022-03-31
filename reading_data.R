if (!file.exists("activity.csv") ) {
  unzip("activity.zip")
}
raw_data <- read.csv("activity.csv", header = TRUE)
main_data <- na.omit(raw_data)
