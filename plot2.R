#Plot 2
png("plot2.png",height = 480, width = 480)
plot(dt1$Time,dt1$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()

