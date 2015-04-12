source("loading_data.R")

# 
plot2 <- function() {
  x <- loading_data();
  png("plot2.png",width=400,height=400)
  plot(x$Time,x$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  dev.off();
}
