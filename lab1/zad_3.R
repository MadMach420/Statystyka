task_a <- function() {
    nowe_badanie = data.frame(read.table("badanie.txt"))
}


task_b <- function() {
    library(boot)
    write.table(boot::beaver, file = "beaver1.txt")
}
