consumption <- read.csv("SUB_household_power_consumption.txt", sep=";")
consumption$Time <- strptime(with(consumption, paste(Date,Time, sep=":")), "%d/%m/%Y:%H:%M:%S")
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

#plot 1
png(filename = 'plot1.png', width = 480, height = 480, units = 'px')
hist(consumption$Global_active_power,col="red",xlab="Global Active Power(kilowatts)", main="Global Active Power")
dev.off()