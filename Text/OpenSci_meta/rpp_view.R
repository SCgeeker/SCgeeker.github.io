setwd("~/scchencom/Text/OpenSci_meta")
## Begin of manage
source("D:/core/Research/projects/rpp/osfr/login_osf.R")

osfr::download(id="fgjvw", file = "rpp_data.csv")


rpp <- read.csv("rpp_data.csv")
#, row.names = NULL, stringsAsFactors = FALSE
names(rpp)
rpp[,c(27,28)]
