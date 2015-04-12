proj1 <- read.csv("C:/aandrew/coursera/coursera/expore/proj1.csv")
proj1 <-subset(proj1, proj1$Date == "1/02/2007" | proj1$Date == "2/02/2007")

proj1$Date<-as.Date(proj1$Date, "%d/%m/%Y")
x.x <- paste(proj1$Date, proj1$Time)
proj1$Datestr<-strptime(x.x, "%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png", width=480, height=480)
plot(proj1$Datestr, proj1$Sub_metering_1, 
     ylab="Energy sub metering",
     type="l",
     xlab="",
     cex.axis=0.8,
)
lines(proj1$Datestr, proj1$Sub_metering_2, col="red")
lines(proj1$Datestr, proj1$Sub_metering_3, col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=1,
       col=c("black","red","blue"),
       cex=0.8
)
dev.off()