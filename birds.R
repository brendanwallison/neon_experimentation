library(neonUtilities)
library(dplyr)

birds <- loadByProduct(dpID="DP1.10003.001", site="all", package="expanded")
brd_countdata = birds[["brd_countdata"]]
#columbidae = dplyr::filter(brd_countdata, family=="Columbidae")
ecd = dplyr::filter(brd_countdata, scientificName=="Streptopelia decaocto")
plot(ecd['pointCountMinute'][[1]])