apply_statistical_functions <- function(x) {
    print(max(x))
    print(min(x))
    print(mean(x))
    print(length(x))
    print(range(x))
    print(diff(x))
    print(summary(x))
    print(fivenum(x))
}


library(boot)
library(stats)
bwt <- boot::catsM$Bwt
hwt <- boot::catsM$Hwt
difference <- hwt - bwt
apply_statistical_functions(bwt)
apply_statistical_functions(hwt)
apply_statistical_functions(difference)
