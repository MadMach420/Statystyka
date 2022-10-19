x <- rnorm(1000)
x <- x - min(x)
x <- x * (3 / max(x))

y <- rnorm(1000)
y <- y - min(y)
y <- y * (3 / max(y))
y <- y + 3

z <- rchisq(200, 3)
z <- z - min(z)
z <- z * (10 / max(z))

hist(x, col = "orange", xlim = c(0, 10))
hist(y, col = "pink", add = TRUE)
hist(z, col = "beige", add = TRUE)
