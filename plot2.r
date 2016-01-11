## Reading data
source("read.r")

## Plotting
png(filename="plot2.png", width=480, height=480, units="px", bg="transparent")
with(data, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
