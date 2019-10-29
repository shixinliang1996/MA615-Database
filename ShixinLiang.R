library(tidyverse)
library(readxl)

contrib_all <- read_xlsx("Top MA Donors 2016-2020.xlsx", sheet = "Direct Contributions & JFC Dist")
JFC <- read_xlsx("Top MA Donors 2016-2020.xlsx", sheet = "JFC Contributions (DO NOT SUM W")

## Remove NA
#contrib_all <- na.omit(contrib_all)
#View(contrib_all)

contributiors <- select(contrib_all, contribid, fam, contrib, City, State, Zip, Fecoccemp, orgname)
View(contributiors)

orgs <- select(contrib_all, orgname, ultorg)
View(orgs)

contribution <- select(contrib_all, contribid, date, amount, recipient)
View(contribution)

recipients <- select(contrib_all, recipient, party, recipcode, cmteid)
View(recipients)
