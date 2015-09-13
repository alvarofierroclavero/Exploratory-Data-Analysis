# Working directory
setwd("C:/Users/Usuario/Google Drive/R programming/Exploratory Data Analysis/data/")

datos<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,
                na.strings="?", colClasses=c(rep("character",2),rep("numeric",7)))


# Select dates 1/2/2007 and 2/2/2007
datillos<-subset(datos,Date=="1/2/2007" | Date=="2/2/2007")


# Create a sequence
tiempo<-seq(1,2880,1)

# Font size of y-axis 
par(cex.lab=0.6)

png(width=480, height=480, file = "plot3.png")

# Draw plot
plot(tiempo,datillos$Sub_metering_1,xaxt="none",xlab="",cex.axis=0.7,pch=20, type="l",ylab="Energy sub metering")
points(tiempo, datillos$Sub_metering_2,col="red",pch=20, type="l")
points(tiempo, datillos$Sub_metering_3,col="blue",pch=20, type="l")

axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)
legend("topright",col=c("black","red","blue"),lty=c(1,1,1),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.7)


# Plot to png file
dev.off()
