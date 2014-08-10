consumption <- read.csv("SUB_household_power_consumption.txt", sep=";")
consumption$Time <- strptime(with(consumption, paste(Date,Time, sep=":")), "%d/%m/%Y:%H:%M:%S")
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

#plot 3
png(filename = 'plot3.png', width = 480, height = 480, units = 'px')
with (consumption,plot(Time,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
with (consumption,lines(Time,Sub_metering_2,type="l", col="red"))
with (consumption,lines(Time,Sub_metering_3,type="l", col="blue"))
legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.8)
dev.off()