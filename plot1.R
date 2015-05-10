plot1 <- function()
        {
        # Capture the contents of the table in variable data
        
        data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
       
        #subset the data table for 1st & 2nd date of february 2007
        subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
        
        #GlobalActivepower converted to numeric datatype
        globalActivePower <- as.numeric(subSetData$Global_active_power)  
        
        #creating a png file plot1.png with width & height 0f 480 pixels
        png("plot1.png", width=480, height=480)  
        
        #creating a hostogram & saving the data in png file
        hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
        
        dev.off()
        cat("Plot1.png has been saved in", getwd())
}
plot1()
