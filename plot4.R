# Working directory
setwd("C:/Users/Usuario/Google Drive/R programming/Exploratory Data Analysis/data/")

datos<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,
                na.strings="?", colClasses=c(rep("character",2),rep("numeric",7)))


# Select dates 1/2/2007 and 2/2/2007
datillos<-subset(datos,Date=="1/2/2007" | Date=="2/2/2007")


# Create a sequence
tiempo<-seq(1,2880,1)

png(width=480, height=480, file = "plot4.png")

# Create grid
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

with (datillos, {
        
# Plot 1
plot(tiempo,Global_active_power,xaxt="none",xlab="",cex.axis=0.7,pch=20, type="l",ylab="Global Active Power")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)

# Plot 2
plot(tiempo,Voltage,xaxt="none",xlab="datatime",cex.axis=0.7,pch=20, type="l",ylab="Voltage")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)

# Plot 3

plot(tiempo,Sub_metering_1,xaxt="none",xlab="",cex.axis=0.7,pch=20, type="l",ylab="Energy sub metering")
points(tiempo, Sub_metering_2,col="red",pch=20, type="l")
points(tiempo, Sub_metering_3,col="blue",pch=20, type="l")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)
legend("topright",col=c("black","red","blue"),lty=c(1,1,1),bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.9)

# Plot 4
plot(tiempo,Global_reactive_power,xaxt="none",xlab="datatime",cex.axis=0.7,pch=20, type="l",ylab="Global_reactive_power")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"),cex.lab=0.7)

})
# Close png file
dev.off()

