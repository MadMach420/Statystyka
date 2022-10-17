library(boot)
x <- boot::acme
x_split <-
    split(x, c(rep(86, 12), rep(87, 12), rep(88, 12), rep(89, 12), rep(90, 12)))

market_mean_by_year <- matrix(c(86:90, rep(0, 5)), nrow = 5)
colnames(market_mean_by_year) <- c("Year", "Mean")

for (i in seq_along(x_split)) {
    market_mean_by_year[i, 2] <- mean(x_split[[i]]$market)
}

market_mean_by_year
