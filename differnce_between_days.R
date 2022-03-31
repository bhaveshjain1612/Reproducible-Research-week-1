raw_data_filled$date <- as.Date(raw_data_filled$date)
raw_data_filled$weekday <- weekdays(raw_data_filled$date)
raw_data_filled$day_type <- ifelse(raw_data_filled$weekday=="суббота" |
                                     raw_data_filled$weekday=="воскресенье","Weekend","Weekday")
raw_data_filled$day_type <- factor(raw_data_filled$day_type)

day_types_data <- aggregate(steps ~ interval + day_type, data=raw_data_filled, mean)

library(ggplot2)
ggplot(day_types_data, aes(interval, steps)) + 
  geom_line() + 
  facet_grid(day_type ~ .) +
  xlab("5-minute intervals") + 
  ylab("Avarage number of steps taken") +
  ggtitle("Weekdays and weekends activity patterns")

