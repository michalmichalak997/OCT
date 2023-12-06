#Aim: Produce geomorphons based on GEBCO data

#Pre-requisite: a XYZID file gebco2022_v3.csv. 
#It contains coordinates and elevation

library(qgisprocess)
library(terra)
library(sf)
library(dplyr)
library(ggplot2)
library(rgdal)

qgis_enable_plugins(c("grassprovider", "processing_saga_nextgen"), 
                    quiet = TRUE)

tab<-read.csv("gebco2022-summer2023.txt", header = F, sep = "")
head(tab)
colnames(tab)<-c("lat", "lon", "z1", "z2", "id")
tab<-dplyr::select(tab,"lat", "lon", "z2")
tab_sf <- st_as_sf(tab,                         
               coords = c("lon", "lat")
               )

raster_template = rast(ext(tab_sf), resolution = 60
                       )
df_raster1 <- rasterize(cbind(tab$lon, tab$lat), raster_template, tab$z)
plot(df_raster1)
dem_geomorph = qgis_run_algorithm("grass7:r.geomorphon",
                                  elevation = df_raster1,
                                  search = 100, flat=2)

dem_geomorph_terra = qgis_as_terra(dem_geomorph$forms)
plot(dem_geomorph_terra)

png(file = "horz2.png", res=100)
plot(dem_geomorph_terra)
dev.off()


