# Zakładam, że interval_sizes to wektor mówiący jaka część wektora w którym interwale
# np. (0.1, 0.2, 0.3, 0.2, 0.1, 0.1)
split_into_intervals <- function(vec_to_split, interval_sizes) {
    breakpoints <- numeric(length(interval_sizes) + 1)
    sum_so_far <- 0
    for (i in seq_along(interval_sizes)) {
        breakpoints[i] <- sum_so_far
        sum_so_far <- sum_so_far + interval_sizes[i]
    }
    breakpoints[length(interval_sizes) + 1] <- sum_so_far

    list_of_intervals <- split(
        vec_to_split,
        cut(seq_along(vec_to_split), breakpoints * length(vec_to_split))
    )

    names(list_of_intervals) <- seq_along(list_of_intervals)
    return(list_of_intervals)
}


split_into_intervals(1:20, c(0.1, 0.2, 0.3, 0.2, 0.1, 0.1))
