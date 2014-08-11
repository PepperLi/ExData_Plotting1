my_data <- read.csv2("my_data.txt")

attach(my_data)

Global_active_power <- as.numeric(Global_active_power)

# make the Date and Time as a whole
Date <- as.Date(Date,format="%d/%m/%Y")
datatime <- strptime(paste(Date,Time),format="%Y-%m-%d %H:%M:%S")

# draw the plot
png("plot2.png",width=480,height=480)
plot(datatime,Global_active_power,type="l",xlab="",ylab="Global Active Power(kw)")
graphics.off()

detach(my_data)

