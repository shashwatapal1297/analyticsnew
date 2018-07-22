data(women)
women
cov(women$height,women$weight)
cor(women$height,women$weight)

fit=lm(weight~height,data = women)
summary(fit)
(new1 = data.frame(height=c(58,62)))
predict(fit1, newdata = new1, type='response')
