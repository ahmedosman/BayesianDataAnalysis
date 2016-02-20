obs   <- c(0,10,9,8,11,3,3,8,8,11)
theta <- seq(-2,12,0.1)
data  <- rep(0,length(theta))

#product of cauchy values
for(i in 1:length(theta)){
  data[i] <- prod(dcauchy(obs,location = theta[i])  )
}
data <- data/sum(data)

plot(theta , data , type='l',col='blue',lwd=2)
grid(lwd=3)
