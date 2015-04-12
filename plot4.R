source("loading_data.R")

# 
plot4 <- function() {
  x <- loading_data();
  png("plot4.png",width=400,height=400)
  
  par(mfrow=c(2,2))
  plot(x$Time,x$Global_active_power,type="l",xlab="",ylab="Global Active Power")
  
  plot(x$Time,x$Voltage,type="l",xlab="datetime",ylab="Voltage")
  
  plot(x$Time,x$Sub_metering_1, type="l", col="black",xlab="",ylab="Energy sub metering")
  lines(x$Time,x$Sub_metering_2,col="red")
  lines(x$Time,x$Sub_metering_3,col="blue")
  legend("topright",col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,text.font=2,cex=0.64,bty = "n")
  
  plot(x$Time,x$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
  lines(x$Time,x$Global_reactive_power)

  dev.off();
}