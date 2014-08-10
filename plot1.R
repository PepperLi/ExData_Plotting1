# First, deal with the "Date". The as.Date function is only useful for character
Date <- as.character(Date)
Date <- as.Date(Date,"%d/%m/%Y")
startdate <- as.Date("2017-02-01")
enddate <- as.Date("2017-02-03")
my_data0 <- my_data[which(my_data$Date >= startdate &
                             my_data$Date <= enddate),]
# plot1
my_data0[,3] <- as.vector(my_data0[,3]) # this step cannot be forget
my_data0[,3] <- as.numeric(my_data0[,3])
x1 <- my_data0[,3]
# compute the range of x1, which help determine the "breaks"
# in hist function
range(x1)
# draw the plot
png("plot1.png")
hist(x1,breaks=c(0:8,0.5),freq=TRUE,col="red",
     main="Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
