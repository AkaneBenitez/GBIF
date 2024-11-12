


getwd()
directory <- getwd()

GBIF <- read.csv("Zebra Longwing Revised.csv")
str(GBIF)

plot(GBIF$Longitude, GBIF$Latitude)

library(ggplot2)
ggplot(GBIF, aes(Longitude, Latitude)) + geom_point()



library(terra)
library(sf)
library(rnaturalearth)
library(ggplot2)
library(rgbif)


point_data <- vect(GBIF, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")

raster_template <- rast(ext=ext(point_data), resolution = 0.4)

abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

plot(abd_raster)

plot(abd_raster, xlab = "Longitude", ylab = "Latitude", main = "Zebra Heliconian Occurrences", 
     axes = FALSE, box = FALSE, xlim = c(x_range[1] - 1, x_range[2] + 1))

plot(abd_raster, xlab = "Longitude", ylab = "Latitude", main = "Zebra Heliconian Occurrences
     in the United States of America", axes = TRUE, box = FALSE) 

####################################################################
#               United States of America
####################################################################

library(terra)
library(rnaturalearth)
library(sf)

point_data <- vect(GBIF, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")
raster_template <- rast(ext=ext(point_data), resolution = 0.4)
abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")

plot(abd_raster, xlab = "Longitude", ylab = "Latitude", 
     main = "Zebra Heliconian Occurrences in the United States of America", 
     axes = TRUE, box = FALSE)

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

####################################################################
#               SouthEastern Region
####################################################################

point_data <- vect(GBIF, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")
raster_template <- rast(ext=ext(point_data), resolution = 0.4)
abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")

plot(abd_raster, xlab = "Longitude", ylab = "Latitude", 
     main = "Zebra heliconian occurrences in the southeastern region of USA", 
     axes = TRUE, box = FALSE,
     xlim = c(-100, -70), ylim = c(25, 40))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

####################################################################
#                 Florida
####################################################################

point_data <- vect(GBIF, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")
raster_template <- rast(ext=ext(point_data), resolution = 0.4)
abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")

plot(abd_raster, xlab = "Longitude", ylab = "Latitude", 
     main = "Zebra Heliconian Occurrences in Florida", 
     axes = TRUE, box = FALSE,
     xlim = c(-88, -79), ylim = c(24, 31))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

#####################################################################
#            Year 2021

library(terra)
library(dplyr)
library(rnaturalearth)
library(sf)

data <- read.csv("Zebra Longwing Revised.csv")

data_2021 <- data %>% filter(Year == 2021)

point_data <- vect(data_2021, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")

raster_template <- rast(ext = ext(point_data), resolution = 0.4)

abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")


plot(abd_raster, xlab = "Longitude", ylab = "Latitude",
     main = "Zebra Heliconian Occurrences in Florida (2021)", 
     axes = TRUE, box = FALSE,
     xlim = c(-88, -79), ylim = c(24, 31))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")


#####################################################################
#            Year 2022

data <- read.csv("Zebra Longwing Revised.csv")

data_2022 <- data %>% filter(Year == 2022)

point_data <- vect(data_2022, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")

raster_template <- rast(ext = ext(point_data), resolution = 0.4)

abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")


plot(abd_raster, xlab = "Longitude", ylab = "Latitude",
     main = "Zebra Heliconian Occurrences in Florida (2022)", 
     axes = TRUE, box = FALSE,
     xlim = c(-88, -79), ylim = c(24, 31))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

#####################################################################
#            Year 2023

data <- read.csv("Zebra Longwing Revised.csv")

data_2023 <- data %>% filter(Year == 2023)

point_data <- vect(data_2023, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")

raster_template <- rast(ext = ext(point_data), resolution = 0.4)

abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")


plot(abd_raster, xlab = "Longitude", ylab = "Latitude",
     main = "Zebra Heliconian Occurrences in Florida (2023)", 
     axes = TRUE, box = FALSE,
     xlim = c(-88, -79), ylim = c(24, 31))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

#####################################################################
#            Year 2024

data <- read.csv("Zebra Longwing Revised.csv")

data_2024 <- data %>% filter(Year == 2024)

point_data <- vect(data_2022, geom = c("Longitude", "Latitude"), crs = "EPSG:4269")

raster_template <- rast(ext = ext(point_data), resolution = 0.4)

abd_raster <- rasterize(point_data, raster_template, field = "recordNumber", fun = mean)

usa <- ne_countries(scale = "medium", country = "United States of America", returnclass = "sf")


plot(abd_raster, xlab = "Longitude", ylab = "Latitude",
     main = "Zebra Heliconian Occurrences in Florida (2024)", 
     axes = TRUE, box = FALSE,
     xlim = c(-88, -79), ylim = c(24, 31))

plot(st_geometry(usa), add = TRUE, col = NA, border = "black")

