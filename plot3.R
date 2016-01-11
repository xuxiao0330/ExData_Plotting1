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
#Plot 3
png("plot3.png",height = 480, width = 480)
#Plot SM1
plot(dt1$Time,dt1$Sub_metering_1,type ="l",ylab = "Engergy sub metering",xlab="")
##Add Lines
lines(dt1$Time,dt1$Sub_metering_2, col ="red")
lines(dt1$Time,dt1$Sub_metering_3,col = "blue")
##Add Legend
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
