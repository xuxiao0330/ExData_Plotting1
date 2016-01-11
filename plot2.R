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
#Plot 2
png("plot2.png",height = 480, width = 480)
plot(dt1$Time,dt1$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()

