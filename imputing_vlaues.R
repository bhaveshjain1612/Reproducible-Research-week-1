#calculate the total number of NA values in the dataset
NA_number <- length(which(is.na(raw_data$steps)))
print (NA_number)
#Substituting using HMISC package
library(Hmisc)
raw_data_filled <- raw_data
raw_data_filled$steps <- impute(raw_data$steps, fun=mean)
#Histogram
steps_per_day_noNA <- aggregate(raw_data_filled$steps, 
                                by = list(Steps.Date = raw_data_filled$date), 
                                FUN = "sum")
hist(steps_per_day_noNA$x, col = "green", 
     breaks = 20,
     main = "Total number of steps taken each day (filled data)",
     xlab = "Number of steps per day")

mean_steps_noNA <- mean(steps_per_day_noNA[,2])
print (mean_steps_noNA)

median_steps_noNA <- median(steps_per_day_noNA[,2])
print (median_steps_noNA)
