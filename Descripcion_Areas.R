#descripcion de areas protegidas sudamerica

library(tidyverse)
Todo <- read.csv("WDPA.csv")
PA <-  Todo %>% dplyr::select(NAME, DESIG, DESIG_TYPE, IUCN_CAT, REP_AREA, GIS_AREA, STATUS_YR, SUB_LOC)

PACL <- read_rds("Protected_Areas.rds")

PACL_nac <- PACL %>%  dplyr::filter(DESIG_TYPE=="National")
PACL_int <- PACL %>%  dplyr::filter(DESIG_TYPE=="International")

PACL_LL <- PACL %>% dplyr::filter(SUB_LOC=="Los Lagos")
write_csv(PACL_LL, "PACL_LL.csv")
