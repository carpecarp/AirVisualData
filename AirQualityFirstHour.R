library("base")
library("datasets")
library("graphics")
library("grDevices")
library("ggplot2")
aqdata <- read.csv("201912_AirVisual_values.txt", sep=";")
ind = 1:400
colorme = c("green","orange","red")[as.integer(aqdata$PM2_5.ug.m3/50.0)+1]
timeoffsets = aqdata$Timestamp - 1576237246
aqplotf <- data.frame(
  timeoffset = timeoffsets[ind],
  pm2.5 = aqdata$PM2_5.ug.m3[ind],
  color = colorme[ind])
ggplot(aqplotf, aes(x=timeoffset, y=pm2.5)) + geom_line(aes(colour=color, group=1)) + scale_colour_identity() + scale_y_continuous(breaks=seq(0,150,25)) + scale_x_continuous(name ="Time Since Start (seconds)", limits = c(0,4000), breaks=seq(0,4000,600)) + ggtitle("PM2.5 at Time Since Blast Air Purifier Startup")
