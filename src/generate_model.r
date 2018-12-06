# install.packages('bnlearn', repos='https://cran.r-project.org/')
install.packages('gRain', repos='https://cran.r-project.org/', dependencies=TRUE)
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("RBGL")
library(bnlearn)
library(dagitty)
library(gRain)

# d <- read.csv('../data/bank-additional-full-binned.csv',sep=',')
d <- read.csv('../data/bank-additional-full.csv',sep=';')

d$contact <- NULL
d$month <- NULL
d$day_of_week <- NULL
d$duration <- NULL
d$campaign <- NULL
d$pdays <- NULL
d$previous <- NULL
d$poutcome <- NULL
d$euribor3m <- NULL

# age to numeric for correlation testing
d$age <- as.numeric(d$age)

# job grouped by income estimate, then to ordinal
idx = d$job %in% c("unknown", "unemployed", "retired", "student")
d[idx, 2] <- "unknown"

idx = d$job %in% c("housemaid", "services", "blue-collar")
d[idx, 2] <- "housemaid"

idx = d$job %in% c("admin.", "technician")
d[idx, 2] <- "admin."

idx = d$job %in% c("self-employed", "entrepreneur")
d[idx, 2] <- "self-employed"

d$job <- droplevels(d$job)
d$job <- factor(d$job, levels=c("unknown", "housemaid", "admin.", "self-employed", "management"))
d$job <- as.numeric(d$job)

# marital, unknown to single (only 80 unknown entries)
idx <- d$marital %in% "unknown"
d[idx, 3] <- "single"
d$marital <- droplevels(d$marital)

# Education to ordinal
d$education <- factor(d$education, levels=c("unknown", "illiterate", "basic.4y", "basic.6y", "basic.9y", "high.school", "professional.course", "university.degree"))
d$education <- as.numeric(d$education)

# binarize default, yes to unknown (only 3 yes entries)
idx <- d$default %in% "yes"
d[idx, 5] <- "unknown"
d$default <- droplevels(d$default)
d$default <- as.numeric(d$default) - 1

# binarize housing, unknown to no (only 990 unknown entries)
idx <- d$housing %in% "unknown"
d[idx, 6] <- "no"
d$housing <- droplevels(d$housing)
d$housing <- as.numeric(d$housing) - 1

# binarize loan, unknown to no (only 990 unknown entries)
idx <- d$loan %in% "unknown"
d[idx, 7] <- "no"
d$loan <- droplevels(d$loan)
d$loan <- as.numeric(d$loan) - 1

# binarize outcome
d$y <- as.numeric(d$y) - 1

# binarize matital, add columns to dataframe to dataframe
d <- cbind(d[1:2], sapply(levels(d$marital), function(x) as.numeric(x == d$marital)), d[4:12])

# show edited dataframe, generate graph
str(d)
g <- pc.stable(d, alpha=0.125, test="cor", max.sx=5)

# show plot
# png("DAG.png", width=1000, height=1000, units='px')
dev.new(file="DAG_correlation.pdf", width=10, height=10)
plot(g, radius=300)
dev.off()