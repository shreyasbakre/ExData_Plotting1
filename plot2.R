library(graphics)
setwd("D:/data science/program/Explorartory analysis/Ass1/exdata%2Fdata%2Fhousehold_power_consumption")

##Here na.string="?" is added because "?" is to be interpreted as NA values
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, stringsAsFactors=F)
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

#plot2
png("plot2.png")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)
with(data1, {plot(Global_active_power~Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")})
dev.off()