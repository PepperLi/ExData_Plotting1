my_data <- read.csv2("my_data.txt")
attach(my_data)

Global_active_power <- as.numeric(Global_active_power)

# make the Date and Time as a whole
Date <- as.Date(Date,format="%d/%m/%Y")
datatime <- strptime(paste(Date,Time),format="%Y-%m-%d %H:%M:%S")
 

# draw the plot 
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2), mar=c(4,4,1,1))

    plot(datatime,Global_active_power,type="l",
         ylab="Global Active Power", xlab="")
    axis(1,c(datatime[1],mean(datatime),datatime[2880]),labels=c("Thu","Fri","Sat"))

    plot(datatime, Voltage, type="l",
         ylab="Voltage", xlab="datetime")

    plot(datatime, Sub_metering_1, type="l",
         ylab="Energy Sub metering", xlab="")
    lines(datatime,Sub_metering_2, col='Red')
    lines(datatime,Sub_metering_3, col='Blue')
    legend("topright",col=c("Black","Red","Blue"), 
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           lty=1, lwd=2, bty="n")
    axis(1,c(datatime[1],mean(datatime),datatime[2880]),labels=c("Thu","Fri","Sat"))

    plot(datatime, Global_reactive_power, type="l", xlab="datetime")
    axis(1,c(datatime[1],mean(datatime),datatime[2880]),labels=c("Thu","Fri","Sat"))

dev.off()


