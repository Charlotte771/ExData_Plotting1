library(graphics)
hpc <- read.table("~/Desktop/coursera/Exploratory Data Analysis 1/household_power_consumption.txt", header=FALSE, sep=";", skip = 1)
hpc1 <- rename(global_active_power = V3, hpc)
hpc2 <- rename(date = V1, hpc1)
hpc3 <- rename(time = V2, hpc2)
hpc4 <- rename(sub_metering_1 = V7, hpc3)
hpc5 <- rename(sub_metering_2 = V8, hpc4)
hpc6 <- rename(sub_metering_3 = V9, hpc5)
data_date <- hpc6[hpc6$date %in% c("1/2/2007", "2/2/2007"),]
#the data_date now has all the proper titles and only the two dates
d_t <- strptime(paste(data_date$date,data_date$time),"%d/%m/%Y %T")
View(data_date)
as.numeric(data_date$sub_metering_1)
as.numeric(data_date$sub_metering_2)
as.numeric(data_date$sub_metering_3)
#need to create subsets for each of the submetering values
plot(d_t, data_date$sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(d_t, data_date$sub_metering_2, type = "l", col="red")
lines(d_t, data_date$sub_metering_3, type = "l", col="blue")


legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty = 1, lwd = 2.5, col=c("black", "red", "blue"))
