data<-subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date=="2/2/2007")
png("plot1.png",width=480,height=480,units="px",bg="white")
hist(as.numeric(data$Global_active_power),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
dev.off()