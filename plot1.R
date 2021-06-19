library(graphics)
library(dplyr)
library(datasets)
hpc <- read.table("~/Desktop/coursera/Exploratory Data Analysis 1/household_power_consumption.txt", header=FALSE, sep=";", skip = 1)
hpc1 <- rename(global_active_power = V3, hpc)
#only need data from 2007-02-01 and 2007-02-02
data_date <- hpc1[hpc1$V1 %in% c("1/2/2007", "2/2/2007"),]
gac <- as.numeric(data_date$global_active_power)
plot1 <- hist(gac, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12)


