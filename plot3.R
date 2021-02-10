#read the 2 days
plot3<-read.table("household_power_consumption.txt",header=FALSE,sep=';',na.strings='?',skip=66637,nrows=69518-66638)
plot3$DT<-strptime(paste(plot3[,1],plot3[,2]),format="%d/%m/%Y %H:%M:%S")

#Graficar en el GD
png('plot3.png', width = 480, height = 480, units = "px")
plot(plot3$DT,plot3[,7],main="",type="n",ylab="Energy sub metering",xlab="")
points(plot3$DT,plot3[,7],type="l",col="black")
points(plot3$DT,plot3[,8],type="l",col="red")
points(plot3$DT,plot3[,9],type="l",col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")
dev.off()
browseURL('plot3.png')
