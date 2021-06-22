library(graphics)
{png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))

d_t <- strptime(paste(data_date$date,data_date$time),"%d/%m/%Y %T")
gac <- as.numeric(data_date$global_active_power)
plot(d_t, gac, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")

plot(d_t, data_date$voltage, xlab="datetime", ylab="Voltage", type="l")

plot(d_t, data_date$sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(d_t, data_date$sub_metering_2, type = "l", col="red")
lines(d_t, data_date$sub_metering_3, type = "l", col="blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty = 1, lwd = 2.5, col=c("black", "red", "blue"))

plot(d_t, data_date$global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()
}
  
