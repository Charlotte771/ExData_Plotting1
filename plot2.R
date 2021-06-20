library(graphics)
hpc <- read.table("~/Desktop/coursera/Exploratory Data Analysis 1/household_power_consumption.txt", header=FALSE, sep=";", skip = 1)
hpc1 <- rename(global_active_power = V3, hpc)
hpc2 <- rename(date = V1, hpc1)
hpc3 <- rename(time = V2, hpc2)
data_date <- hpc3[hpc1$V1 %in% c("1/2/2007", "2/2/2007"),]
#the date is in day/month/year and the time is in hours/minutes/seconds
#the graph needs to have the days in the x-axis
d_t <- strptime(paste(data_date$date,data_date$time),"%d/%m/%Y %T")
View(data_date)
#the data is now organized with the two days and by time(each minute)
gac <- as.numeric(data_date$global_active_power)
plot2 <- plot(d_t, gac, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
png("plot2.png")
View(plot2.png)

