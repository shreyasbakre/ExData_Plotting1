library(graphics)
setwd("D:/data science/program/Explorartory analysis/Ass1/exdata%2Fdata%2Fhousehold_power_consumption")

##Here na.string="?" is added because "?" is to be interpreted as NA values
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, stringsAsFactors=F)
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

#plot1
png("plot1.png")
hist(data1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()