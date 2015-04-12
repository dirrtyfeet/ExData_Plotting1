proj1 <- read.csv("C:/aandrew/coursera/coursera/expore/proj1.csv")
proj1 <-subset(proj1, proj1$Date == "1/02/2007" | proj1$Date == "2/02/2007")

proj1$Date<-as.Date(proj1$Date, "%d/%m/%Y")
x.x <- paste(proj1$Date, proj1$Time)
proj1$Datestr<-strptime(x.x, "%Y-%m-%d %H:%M:%S")

png(filename = "plot2.png", width=480, height=480)
plot(proj1$Datestr, proj1$Global_ac, 
     type="l",
     ylab="Gloabal Active Power (kilowatts)",
     xlab="",
     cex.axis=0.75,
     font.axis=2,
)
dev.off()
