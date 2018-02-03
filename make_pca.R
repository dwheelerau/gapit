library(ggplot2)
(library(ggrepel)

mds<-read.csv('copy of GAPIT.PCA.csv')
df <-data.frame(x=mds$PC1,y=mds$PC2,z=mds$taxa)
#df
             x         y     z
#1  -193.967340 -164.7668  NZE2
#2  -193.977816 -164.8172  NZE8
#3    67.167316   59.0232  BHU1
#4   -20.756223  116.0224  SAF4
#5    -6.385936  192.3969  DEN1
#6   415.798274 -189.2931 USA12
#7   -17.815683  152.5350  AUS4
#8   -10.353120  161.8850  GRE1
#9  -202.234324 -235.4567 ECU13
#10  -11.466131  189.5242  SLV1
#11  -33.592734  145.4481  RUS1
#12  404.544652 -173.1812  CAN3
#13 -202.155866 -235.3915 CHI17
#14    5.194932  146.0718  ALP3
png('third.pnd')
ggplot(data = df, aes(x = x, y = y)) + theme_bw() + 
     geom_text_repel(aes(label = z), 
     box.padding = unit(0.45, "lines")) +
     geom_point(colour = "green", size = 3)
dev.off()
