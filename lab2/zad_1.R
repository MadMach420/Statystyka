library(boot)
cut(boot::acme$market, sqrt(length(boot::acme$market)))
x <- boot::acme$market
n <- floor(sqrt(length(x)))
x_cut <- cut(x, n, include.lowest = TRUE)
table(x_cut)


# Opcja 2 (z równą liczbą elementów w przedziale):
# library(boot)
# cut(boot::acme$market, sqrt(length(boot::acme$market)))
# x <- boot::acme$market
# n <- floor(sqrt(length(x)))
# breakpoints <- c(quantile(x, probs = seq(0, 1, 1 / n)))
# x_cut <- cut(x, breaks = breakpoints, include.lowest = TRUE)
# table(x_cut)