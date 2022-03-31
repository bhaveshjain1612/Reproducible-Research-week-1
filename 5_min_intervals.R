avaraged_day <- aggregate(main_data$steps, 
                          by = list(Interval = main_data$interval), 
                          FUN = "mean")
plot(avaraged_day$Interval, avaraged_day$x, type = "l", 
     main = "Average daily activity pattern", 
     ylab = "Avarage number of steps taken", 
     xlab = "5-min intervals")

interval_row <- which.max(avaraged_day$x)
max_interval <- avaraged_day[interval_row,1]
print (max_interval)
