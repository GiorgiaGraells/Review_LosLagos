


library(tidyverse)
library(readxl)

Nuevo1 <- read_excel("~/Documents/LosLagosCC_CI/seleccion_area politica/Arreglado1a400.xls",
                     col_types = c("text", "text", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "numeric", "text", "text", "text", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "text", "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "numeric", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "text", "text", 
                                   "numeric", "text", "text", "text", 
                                   "text", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric"))
Nuevo2 <- read_excel("~/Documents/LosLagosCC_CI/seleccion_area politica/Arreglado4001a855.xls", 
                     col_types = c("text", "text", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "numeric", "text", "text", "text", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "text", "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "text", "text", "numeric", 
                                   "numeric", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "text", "text", 
                                   "numeric", "text", "text", "text", 
                                   "text", "text", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric", 
                                   "text", "numeric", "numeric", "numeric", 
                                   "numeric", "numeric", "numeric"))

Nuevo <- bind_rows(Nuevo1, Nuevo2)


Antiguo1 <-  read_excel("~/Documents/LosLagosCC_CI/seleccion_area politica/Antiguo1a500.xls",
                        col_types = c("text", "text", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "numeric", "text", "text", "text", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "text", "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "numeric", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "text", "text", 
                                      "numeric", "text", "text", "text", 
                                      "text", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric"))

Antiguo2 <-  read_excel("~/Documents/LosLagosCC_CI/seleccion_area politica/Antiguo501a856.xls",
                        col_types = c("text", "text", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "numeric", "text", "text", "text", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "text", "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "text", "text", "numeric", 
                                      "numeric", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "text", "text", 
                                      "numeric", "text", "text", "text", 
                                      "text", "text", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "text", "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric"))

Antiguo <- bind_rows(Antiguo1, Antiguo2)

Diferencia <-anti_join(Antiguo, Nuevo)
Diferencia <-anti_join(Nuevo, Antiguo)
