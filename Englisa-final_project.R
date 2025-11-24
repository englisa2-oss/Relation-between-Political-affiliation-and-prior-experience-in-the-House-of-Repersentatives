### load packages (PG 208)
# NOTE: you may need to install!
library(readr)

#set working directory
setwd("/courses/STA145/englisa2")

data <- read_csv("data.csv")


# descriptive statistics
table(data$political_party)
table(data$previous_experience)


# contingency table
table(data$political_party, data$previous_experience)

# chi squared test
chisq.test(table(data$political_party, data$previous_experience))
           
    