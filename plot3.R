data<-subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date=="2/2/2007")
png("plot3.png",width=480,height=480,units="px",bg="white")
datetime<-strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
plot(datetime,as.numeric(data$Sub_metering_1),type="l",ylab="Energy sub metering",xlab="")
lines(datetime,as.numeric(data$Sub_metering_2),type="l",col="red")
lines(datetime,as.numeric(data$Sub_metering_3),type="l",col="blue")
legend("topright",c("Sub_metering1","Sub_metering2","Sub_metering3"),lty=1,col=c("black","red","blue"))
dev.off() 