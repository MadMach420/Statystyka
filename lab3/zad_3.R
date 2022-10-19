library(boot)
library(car)
market <- boot::acme$market
acme <- boot::acme$acme
plot(market, acme)
car::scatterplot(market, acme)
