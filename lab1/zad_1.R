task_a <- function() {
    x <- 1:10
    y <- 1:10
    A <- matrix(c(x, y), byrow = TRUE, ncol = 10)
    A
    t(A)
    t(A) * y
}


task_b <- function() {
    A <- matrix(c(5, 1, 2, 3, 10, 4, 5, 6, 15), ncol = 3, byrow = TRUE)
    det(A)
    b <- c(1, 2, 1)
    solve(A, b)
}


task_c <- function() {
    c <- sample(1:10, 3)
    B <- cbind(A, c)
    d <- sample(1:10, 4)
    G <- rbind(B, d)
}


task_d <- function() {
    dimnames(G) <- list(
        c("Ania", "Julka", "Hania", "Amelia"),
        c("wrzos", "tulipan", "róża", "sekwoja")
    )
    dim(G)
}


task_e <- function() {
    matrix(
        vector("numeric", 9),
        nrow = 3,
        dimnames = list(
            c(1, 2, 3),
            c(9, 8, 7)
        )
    )
}


task_f <- function() {
    Z <- array(x, c(3, 3, 2))
    dim(x) <- c(3, 3, 2)
}