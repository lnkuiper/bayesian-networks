# install.packages("devtools", repos='https://cran.r-project.org/')
# install.packages('readr', repos='https://cran.r-project.org/')
# install_github("jtextor/dagitty/r")
# install.packages('lavaan', repos='https://cran.r-project.org/')
# devtools::install_github("jtextor/dagitty/r")

library(devtools)
library(dagitty)
library(lavaan)
library(readr)

d <- read.csv("../data/bank-additional-full.csv",sep=';')
# cpi <- d$cons.price.idx
# cpi_bin <- lapply(cpi, (function (x) 1))
# evr <- d$emp.var.rate
# evr_bin <-lapply(evr, (function (x) 1))
# d$emp.var.rate <- evr_bin
# # cpi_bin
# d$cons_price_idx <- cpi_bin

# ding <- d$cons_price_idx
# unique(lapply(ding, class))

fileName <- './model.r'
dag <- read_file(fileName)
g <- dagitty(dag)

sink('../data/ici.txt')
# impliedConditionalIndependencies(g)
localTests(g,d,type="cis.chisq")
sink()

# previous _||_ y | poutcome
# chisq <- 0; df <- 0
# for( a in unique( d$Immigrant ) ){
# 	tst <- chisq.test( d$previous[d$poutcome==a], d$y[d$poutcome==a] )
# 	chisq <- chisq + tst$statistic
# 	df <- df + tst$parameter
# }
# cat( chisq, df, "\n" )
# pchisq( chisq, df, lower.tail=FALSE )

# localTests(g,d,type="cis.chisq")