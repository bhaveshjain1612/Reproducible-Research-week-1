steps_per_day <- aggregate(main_data$steps, by = list(Steps.Date = main_data$date), FUN = "sum")

hist(steps_per_day$x, col = "green", 
     breaks = 20,
     main = "Total number of steps taken each day",
     xlab = "Number of steps per day")
mean_steps <- mean(steps_per_day[,2])
print (mean_steps)
median_steps <- median(steps_per_day[,2])
print (median_steps)
