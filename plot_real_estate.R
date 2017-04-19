
library("ggplot2")
library("reshape2")


Sys.setlocale("LC_TIME", "en_US.UTF-8")

options( stringsAsFactors=F ) 

real_estate = read.csv("immobiliare.csv")

real_estate$Prezzo = real_estate$Prezzo / mean(real_estate$Prezzo)
real_estate$M1 = real_estate$M1 / mean(real_estate$M1)
ggplot() + 
  geom_line(data = real_estate,size=1, aes(x = Anno, y = Prezzo, color = "Prezzo metro quadro")) +
  geom_line(data = real_estate,size=1, aes(x = Anno, y = M1, color = "M1"))  +
  xlab("Anni") +
  ylab("Andamento") +
  scale_x_continuous(breaks=real_estate$Anno) +
  theme(axis.text.x = element_text(colour="black", size=12, face="bold")) +
  theme(axis.title  = element_text(colour="black", size=12, face="bold")) +
  theme(axis.text.y = element_blank()) +
  theme(legend.title = element_text(colour="black", size=12, face="bold")) +
  theme(legend.text = element_text(colour="black", size=12, face="bold")) +
  scale_colour_discrete(name = "Valori relativi")
