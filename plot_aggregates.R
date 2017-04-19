
library("ggplot2")
library("reshape2")


Sys.setlocale("LC_TIME", "en_US.UTF-8")

options( stringsAsFactors=F ) 
aggregates = read.csv("monetary_aggregates.csv")
aggregates$DATA = as.Date(aggregates$DATA,format="%Y %b %d")

#aggregates_long = melt(aggregates,id="DATA")
#ggplot(data=aggregates_long,
#       aes(x=DATA, y=value, colour=variable)) +
#  geom_line() 

ggplot() + 
  geom_line(data = aggregates,size=1, aes(x = DATA, y = M0, color = "M0")) +
  geom_line(data = aggregates,size=1, aes(x = DATA, y = M1, color = "M1"))  +
  xlab("Anni") +
  ylab("Miliardi di euro") +
  scale_y_continuous(labels=function(x)x/1000) +
  theme(axis.text.x = element_text(colour="black", size=12, face="bold")) +
  theme(axis.title  = element_text(colour="black", size=12, face="bold")) +
  theme(axis.text.y = element_text(colour="black", size=12, face="bold")) +
 theme(legend.title = element_text(colour="black", size=12, face="bold")) +
  theme(legend.text = element_text(colour="black", size=12, face="bold")) +
  #labs(linetype='custom title')+
   scale_colour_discrete(name = "Aggregati monetari")
  
  








