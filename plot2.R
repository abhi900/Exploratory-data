plot2 <- function()
        {
        # Capture the contents of the table in variable data
        data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

        #subset the data table for 1st & 2nd date of february 2007
        subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

        #striping the date and time to datatime variable
        datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

        #GlobalActivepower converted to numeric datatype
        globalActivePower <- as.numeric(subSetData$Global_active_power)

        #Setting the boundaries
        png("plot2.png", width=480, height=480)

        #Plot the graph
        plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

        
        dev.off()
}
plot2()
