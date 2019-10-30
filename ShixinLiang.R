library(tidyverse)
library(readxl)

contrib_all <- read_xlsx("Top MA Donors 2016-2020.xlsx", sheet = "Direct Contributions & JFC Dist")
JFC <- read_xlsx("Top MA Donors 2016-2020.xlsx", sheet = "JFC Contributions (DO NOT SUM W")

## Remove NA
#contrib_all <- na.omit(contrib_all)
View(contrib_all)


# Second Normal Form
contributiors <- select(contrib_all, contribid, fam, contrib, City, State, Zip, Fecoccemp, orgname)
orgs <- select(contrib_all, orgname, ultorg)
contribution <- select(contrib_all, fectransid, cycle, contribid, date, amount, type, recipient)
recipients <- select(contrib_all, recipient, recipid, recipcode, cmteid)

# Third Normal Form
contributiors <- select(contrib_all, contribid, fam, contrib, Zip, Fecoccemp, orgname)
zipcode <- select(contrib_all, Zip, City)
city <- select(contrib_all, City, State)
orgs <- select(contrib_all, orgname, ultorg)
contribution <- select(contrib_all, fectransid, contribid, date, amount, type, recipient)
dates <- select(contrib_all, date, cycle)
recipients <- select(contrib_all, recipient, recipid, recipcode, cmteid)

# Fourth Normal Form
contributiors <- select(contrib_all, contribid, fam, contrib)
employer <- select(contrib_all, contribid, Fecoccemp)
organization <- select(contrib_all, contribid, orgname)
zipcode <- select(contrib_all, contribid, Zip)
city <- select(contrib_all, Zip, City)
state <- select(contrib_all, City, State)
orgs <- select(contrib_all, orgname, ultorg)
contribution <- select(contrib_all, fectransid, contribid, date, amount, type, recipient)
dates <- select(contrib_all, date, cycle)
recipients <- select(contrib_all, recipient, recipid, recipcode, cmteid)

# Eliminate duplicative rowa
contributiors <- base::unique(contributiors) 
employer <- base::unique(employer) 
organization <- base::unique(organization) 
zipcode <- base::unique(zipcode) 
city <- base::unique(city) 
state <- base::unique(state) 
orgs <- base::unique(orgs) 
contribution <- base::unique(contribution) 
dates <- base::unique(dates) 
recipients <- base::unique(recipients) 



