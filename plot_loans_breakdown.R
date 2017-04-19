
library("ggplot2")
library("reshape2")

Sys.setlocale("LC_TIME", "en_US.UTF-8")

options( stringsAsFactors=F ) 
aggregates = read.csv("loans-breakdown.csv")
aggregates$DATA = as.Date(aggregates$DATA,format="%Y %b %d")


ggplot() + 
  geom_line(
    data = aggregates,size=1,
    aes(
      x = DATA,
      y = FINANCIAL, 
      color = factor("FINANCIAL", labels = c("prestiti al settore finanziario"))
      )
    ) +
  geom_line(
    data = aggregates,
    size=1,
    aes(
      x = DATA,
      y = NONFINANCIAL,
      color = factor("NONFINANCIAL", labels = c("prestiti al settore non finanziario"))
      )
    )  +
  xlab("Anni") +
  ylab("Miliardi di euro") +
  scale_y_continuous(labels=function(x)x/1000) +
  theme(axis.text.x = element_text(colour="black", size=12, face="bold")) +
  theme(axis.title  = element_text(colour="black", size=12, face="bold")) +
  theme(axis.text.y = element_text(colour="black", size=12, face="bold")) +
  theme(legend.title = element_text(colour="black", size=12, face="bold")) +
  theme(legend.text = element_text(colour="black", size=12, face="bold")) +
  scale_colour_discrete(name = "Disaggregazione prestiti")









