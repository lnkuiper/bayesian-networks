library(dagitty)
library(lavaan)
library(readr)

source("generate_model.r")

# dag <- read_file("./markov_blanket.r")
dag <- read_file("./selfmade_mb.r")
g.assumed <- dagitty(dag)
m.assumed <- toString(g.assumed, "lavaan")

# str(d)
d <- as.data.frame(scale(d))
# str(d)

fit <- sem(m.assumed, d)
print(summary(fit))