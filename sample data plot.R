set.seed(137)

sample<-rexp(40,0.2)

x<-seq(min(sample),max(sample),length.out=100)

p<-ggplot(as.data.frame(sample), aes(x=sample, y=..density..)) + 
  geom_histogram(binwidth=2) + 
  geom_vline(xintercept=mean(sample), colour="black", linetype="dotdash")

p<-p + geom_line(data=data.frame(x=x, y=dexp(x,0.2)), aes(x=x, y=y), colour="red") +
  theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank()) +
  geom_vline(xintercept=5, colour="red", linetype="dashed")+
  annotate(geom="label", x=c(mean(sample)-1.75,7.05), y=c(0.12,0.15),
           label=c("sample mean", "population mean"))

print(p)