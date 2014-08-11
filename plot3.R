my_data <- read.csv2("my_data.txt")
attach(my_data)

Global_active_power <- as.numeric(Global_active_power)

# make the Date and Time as a whole
Date <- as.Date(Date,format="%d/%m/%Y")
datatime <- strptime(paste(Date,Time),format="%Y-%m-%d %H:%M:%S")

# draw the plot
png("plot3.png",width=480,height=480)
plot(datatime,Sub_metering_1,col="black",type="l",ylab="Energy sub
     metering",xlab=" ")
lines(datatime,Sub_metering_2,col="red",type"l")
lines(datatime,Sub_metering_3,col="blue",type"l")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty=1)
graphics.off()
