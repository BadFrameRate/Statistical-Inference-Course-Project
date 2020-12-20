q<-ggplot(as.data.frame(exp_means), aes(x=exp_means, y=..density..)) +
  geom_histogram(binwidth=0.15) +
  labs(x="Means of 40 Exponential Random Variables", y="Density")

q<-q + geom_line(data=data.frame(x=exp_means ,y=dnorm(exp_means,5,5/sqrt(40))),
                 aes(x, y), col="blue")

print(q)