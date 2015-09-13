# Working directory
setwd("C:/Users/Usuario/Google Drive/R programming/Exploratory Data Analysis/data/")

# Data import
datos<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,
                na.strings="?", colClasses=c(rep("character",2),rep("numeric",7)))


# Select dates 1/2/2007 and 2/2/2007
datillos<-subset(datos,Date=="1/2/2007" | Date=="2/2/2007")


# Plot
hist(datillos$Global_active_power,col="red",breaks = 12, 
     xlab= "Global Active Power (kilowatts)", ylab="Frequency", 
     main = "Global Active Power")

# Plot to png file
dev.copy(png,'plot1.png')
dev.off()
