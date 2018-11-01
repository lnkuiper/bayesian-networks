# install.packages('devtools', repos='https://cran.r-project.org/')
# install.packages('readr', repos='https://cran.r-project.org/')
# install_github('jtextor/dagitty/r')
# install.packages('lavaan', repos='https://cran.r-project.org/')
# devtools::install_github('jtextor/dagitty/r')

library(devtools)
library(dagitty)
library(lavaan)
library(readr)

d <- read.csv('../data/bank-additional-full-binned.csv',sep=',')
str(d)

fileName <- './initial_model.r'
dag <- read_file(fileName)
g <- dagitty(dag)

sink('../data/ici.txt')
impliedConditionalIndependencies(g)
# localTests(g,d,type='cis.chisq')
sink()

# png('age.png')
# hist(d$age, breaks=20, xlab='Age', main='Age frequencies')
# dev.off()

# png('emp_var_rate.png')
# hist(d$emp.var.rate, breaks=20, xlab='Employment variation rate (quarterly indicator)', main='Employment variation rate frequencies')
# dev.off()

# png('consumer_price_index.png')
# hist(d$cons.price.idx, breaks=20, xlab='Consumer price index (monthly indicator)', main='Consumer price index frequencies')
# dev.off()

# png('consumer_confidence_index.png')
# hist(d$cons.conf.idx, breaks=20, xlab='Consumer confidence index (monthly indicator)', main='Consumer confidence index frequencies')
# dev.off()

# png('euribor3m.png')
# hist(d$euribor3m, breaks=20, xlab='Euribor rate (quarterly indicator)', main='Euribor rate frequencies')
# dev.off()

# png('nr_employed.png')
# hist(d$nr.employed, breaks=20, xlab='Number of employees (quarterly indicator)', main='Number of employees (x1000) frequencies')
# dev.off()