
# https://gadm.org/download_country.html
# switzerland
# rds
# level 1
gadmCHE <- raster::getData("GADM", country = "CHE", level = 1, path = tempdir())

gadmCHE$NAME_1 <- iconv(gadmCHE$NAME_1, "UTF-8", "ASCII//TRANSLIT")
gadmCHE$VARNAME_1 <- iconv(gadmCHE$VARNAME_1, "UTF-8", "ASCII//TRANSLIT")

devtools::use_data(gadmCHE, overwrite = TRUE)

print(tools::showNonASCIIfile("data/gadmCHE.rda"))
