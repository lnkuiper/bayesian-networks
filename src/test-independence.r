# install.packages("devtools", repos='https://cran.r-project.org/')
# install.packages('readr', repos='https://cran.r-project.org/')
# install_github("jtextor/dagitty/r")

library(devtools)
library(dagitty)
library(readr)

d <- read.csv("../data/bank-without-unknown.csv",sep=';')

fileName <- '../wack-model'
dag <- read_file(fileName)
g <- dagitty(dag)

# impliedConditionalIndependencies(g)

# previous _||_ y | poutcome
# Manually test the implication: HoursPerWeek _||_ Race | Immigrant
chisq <- 0; df <- 0
for( a in unique( d$Immigrant ) ){
	tst <- chisq.test( d$previous[d$poutcome==a], d$y[d$poutcome==a] )
	chisq <- chisq + tst$statistic
	df <- df + tst$parameter
}
cat( chisq, df, "\n" )
pchisq( chisq, df, lower.tail=FALSE )

# localTests(g,d,type="cis.chisq")