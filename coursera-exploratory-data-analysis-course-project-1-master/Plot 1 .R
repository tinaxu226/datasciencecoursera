df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
sub <- df[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
