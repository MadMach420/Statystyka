library(vioplot)
library(boot)
vioplot::vioplot(boot::acme$market, boot::acme$acme,
    horizontal = TRUE,
    names = c("market", "acme"),
    col = "orange")
