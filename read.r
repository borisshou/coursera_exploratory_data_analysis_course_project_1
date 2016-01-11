## Loading data
# loading partial data - approximately one month
data <- read.table("household_power_consumption.txt", sep=";",
                   header=FALSE, skip=60*24*30, nrows=60*24*30)
# extracting the two days - 2007-02-01 and 2007-02-02
data2 <- data[(data$V1=='1/2/2007' | data$V1=='2/2/2007'), ]
# setting header for data2
data5rows <- read.table("household_power_consumption.txt", sep=";",
                        header=TRUE, nrows=5)
names(data2) <- names(data5rows)
# setting the first column of data2 to be of Date-Time class
data2$Date <- strptime(paste(data2$Date, data2$Time), "%e/%m/%Y %H:%M:%S", tz="")
# deleting the second column "Time"
data2$Time <- NULL
# deleting data
data <- data2
data2 <- NULL
data5rows <- NULL
# setting data to numeric type
factorToNumeric <- function(x) { # !!! Cannot convert factor directly into numeric
    as.numeric(as.character(x))
}
data[, -which(names(data)=="Date")] <- sapply(data[, -which(names(data)=="Date")], 
                                              factorToNumeric)
