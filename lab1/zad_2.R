task_a <- function() {
    vec <- 1:10
    matrix_num <- matrix(1:20, nrow = 10)
    matrix_bool <- matrix(sample(c(TRUE, FALSE), 20, replace = TRUE), nrow = 10)
    list1 <- list(vec, matrix_to_square = matrix_num, matrix_bool)
    mapply(sqrt, list1$matrix_to_square)
}


task_b <- function() {
    palenie <- sample(c(TRUE, FALSE), 10, replace = TRUE)
    plec <- sample(c("K", "M"), 10, replace = TRUE)
    wiek <- sample(1:100, 10, replace = TRUE)
    badanie <- data.frame(czy_pali = palenie, plec, wiek)
    write.table(badanie, file = "badanie.txt")
}