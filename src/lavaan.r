library(dagitty)
library(lavaan)
library(readr)

source("generate_model.r")

# dag <- read_file("./markov_blanket.r")
dag <- read_file("./learned_full_dagitty.r")
g.assumed <- dagitty(dag)
m.assumed <- toString(g.assumed, "lavaan")

d <- as.data.frame(scale(d))

fit <- sem(m.assumed, d)
sink('../data/learned_full_dagitty.txt')
print(summary(fit, standardized=TRUE))
sink()