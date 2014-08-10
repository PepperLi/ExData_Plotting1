my_data <- read.csv2("my_data.txt")
my_data0 <- my_data

attach(my_data0)
# use paste to add Date and Time together
Date <- as.character(Date)
Time <- as.character(Time)
time <- paste(Date,Time,sep="  ")
time <- strptime(time,"%Y-%m-%d %H:%M:%S")
