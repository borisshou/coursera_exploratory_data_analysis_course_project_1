## Reading data
source("read.r")

## Plotting
png(filename="plot3.png", width=480, height=480, units="px", bg="transparent")
with(data, plot(Date, Sub_metering_1, type="l", ylim=range(Sub_metering_1), xlab="", ylab=""))
par(new=TRUE)
with(data, plot(Date, Sub_metering_2, type="l", axes=FALSE, col="red", ylim=range(Sub_metering_1), xlab="", ylab=""))
par(new=TRUE)
with(data, plot(Date, Sub_metering_3, type="l", axes=FALSE, col="blue", ylim=range(Sub_metering_1), xlab="", ylab="Energy sub metering"))
# legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()
