#read the 2 days
plot4<-read.table("household_power_consumption.txt",header=FALSE,sep=';',na.strings='?',skip=66637,nrows=69518-66638)
plot4$DT<-strptime(paste(plot4[,1],plot4[,2]),format="%d/%m/%Y %H:%M:%S")

#Graficar en el GD
png('plot4.png', width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
plot(plot4$DT, plot4[,3], main = '', xlab = '', ylab = 'Global Active Power', type = 'l')
plot(plot4$DT, plot4[,5], main = '', xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(plot4$DT,plot4[,7],main="",type="n",ylab="Energy sub metering",xlab="")
points(plot4$DT,plot4[,7],type="l",col="black")
points(plot4$DT,plot4[,8],type="l",col="red")
points(plot4$DT,plot4[,9],type="l",col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")
plot(plot4$DT, plot4[,4], main = '', xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()
browseURL('plot4.png')