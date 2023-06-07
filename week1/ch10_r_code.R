magnets <- read.csv('http://pluto.huji.ac.il/~msby/StatThink/Datasets/magnets.csv')

head(magnets)

summary(magnets)

rbinom(40, 10, 0.5)

mean(magnets$change[1:29])
mean(magnets$change[30:50])


sd(magnets$change[1:29])
sd(magnets$change[30:50])

boxplot(magnets$change[1:29])
boxplot(magnets$change[30:50])


mu <- 3
sd <- sqrt(2)
X.bar <- rep(0,10^5)
X.med <- rep(0, 10^5)
for (i in 1:10^5){
  X <- rnorm(100, mu, sd)
  X.bar[i] <- mean(X)
  X.med[i] <- median(X)
}
# find the expectation
mean(X.bar)
mean(X.med)
# find the variance
var(X.bar)
var(X.med)

# 10.1.2
mu <- 
sd <- sqrt(2)
X.bar <- rep(0,10^5)
X.med <- rep(0, 10^5)
for (i in 1:10^5){
  X <- rnorm(100, mu, sd)
  X.bar[i] <- mean(X)
  X.med[i] <- median(X)
}

