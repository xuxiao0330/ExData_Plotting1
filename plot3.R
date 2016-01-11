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
