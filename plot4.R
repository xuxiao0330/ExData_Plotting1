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
