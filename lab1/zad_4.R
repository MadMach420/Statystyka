task_a <- function() {
    library(boot)
    product <- 0
    beaver <- boot::beaver
    for (i in seq_len(nrow(beaver))) {
        product <- product + (beaver[i, 3] * beaver[i, 4])
    }
    return(product)
}


task_b <- function(vec) {
    num_of_zeroes <- 0
    for (elem in vec) {
        if (elem == 0) {
            num_of_zeroes <- num_of_zeroes + 1
        }
    }
    return(num_of_zeroes)
}


task_c <- function(vec) {
    first_and_last_true <- c(NA, NA)
    for (i in seq_along(vec)) {
        if (vec[i] == TRUE) {
            if (is.na(first_and_last_true[1])) {
                first_and_last_true[1] <- i
            }
            first_and_last_true[2] <- i
        }
    }
    return(first_and_last_true)
}


# task_d
moda <- function(x) {
    return(row.names(sort(table(x), decreasing = TRUE))[1])
}