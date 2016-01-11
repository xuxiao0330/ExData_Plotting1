#reading table
dt <- read.table("household_power_consumption.txt",sep=";",header = TRUE,stringsAsFactors=FALSE)
#making date format
dt$Date <- as.Date(dt$Date,format="%d/%m/%Y")
#subsetting 2007-02-01 ~ 2007-02-02
dt1 <- subset(dt,dt$Date == "2007-02-01"|dt$Date =="2007-02-02")
#Setting time in dt1
dt1$Time <- strptime(paste(dt1$Date,dt1$Time),format = "%Y-%m-%d %H:%M:%S")
#Setting numeric of Global Active Power
dt1$Global_active_power<- as.numeric(dt1$Global_active_power)
#plot 4
png("plot4.png")
# setting the plot
par(mfrow=c(2,2))
# plotting top left, top right, bottom left, bottom right
with(dt1, {
  plot(Time, Global_active_power, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Time, Voltage, type="l", 
       ylab="Voltage (volt)", xlab="datetime")
  plot(Time, Sub_metering_1, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Time, Sub_metering_2,col='Red')
  lines(Time, Sub_metering_3,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Time, Global_reactive_power, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="datetime")
})
dev.off()
