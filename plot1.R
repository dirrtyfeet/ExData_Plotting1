#download and subset required data
proj1 <- read.csv("C:/aandrew/coursera/coursera/expore/proj1.csv")
proj1 <-subset(proj1, proj1$Date == "1/02/2007" | proj1$Date == "2/02/2007")

#create plot and save to file
png(filename = "plot1.png", width=480, height=480)
hist(proj1$Global_act, 
     col="red", 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     cex.axis=0.8,
     cex.lab=0.75,
     cex.main=0.9,
     font.main=2
)
dev.off()
