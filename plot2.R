# Working directory
setwd("C:/Users/Usuario/Google Drive/R programming/Exploratory Data Analysis/data/")

datos<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,
                na.strings="?", colClasses=c(rep("character",2),rep("numeric",7)))



# Select dates 1/2/2007 and 2/2/2007
datillos<-subset(datos,Date=="1/2/2007" | Date=="2/2/2007")

png(width=480, height=480, file = "plot2.png")

# Plot
plot(tiempo,datillos$Global_active_power,xaxt="none",xlab="",cex.axis=0.7,pch=20, type="l",ylab="Global Active Power (kilowatts)")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)


# Plot to png file
#dev.copy(png,'plot2.png')
dev.off()