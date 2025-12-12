### load packages (PG 208)
# NOTE: you may need to install!
library(readr)

#set working directory
setwd("/courses/STA145/englisa2")

data <- read_csv("data.csv")


# descriptive statistics
table(data$political_party)
table(data$previous_experience)
# Note: Reveals that, that 2 political parties (republican and democrat) are split with 221 Republicans / 220 are Democrats. for a total of 441. 369 have prior experience / 72 have no prior experience.

# contingency table
table(data$political_party, data$previous_experience)
#NOTE: 164 Republicans have Prior experience / 57 do not. 205 Democrats have prior experience. 15 do not.
#NOTE: 26% of Republicans have no Prior experience. 0.07% of Democrats have no Prior experience.
#NOTE: A total of 17% of Representatives have no prior experience.# chi squared test

chisq.test(table(data$political_party, data$previous_experience))
#NOTE: There is a statistical and practical difference. This is seen with a p-value of 1.431e-07.     
