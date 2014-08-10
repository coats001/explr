consumption <- read.csv("SUB_household_power_consumption.txt", sep=";")
consumption$Time <- strptime(with(consumption, paste(Date,Time, sep=":")), "%d/%m/%Y:%H:%M:%S")
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

#plot 2
png(filename = 'plot2.png', width = 480, height = 480, units = 'px')
with (consumption,plot(Time,Global_active_power,type="n", xlab="",ylab="Global Active Power(kilowatts)"))
with (consumption,lines(Time,Global_active_power,type="l"))
dev.off()