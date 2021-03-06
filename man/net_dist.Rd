% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/net_dist.R
\name{net_dist}
\alias{net_dist}
\title{A function to calculate distances in a network between coordinates of origin and destination}
\usage{
net_dist(
  net,
  shp_origen,
  shp_destino,
  pairwise,
  crs_projected,
  crs_longlat,
  join,
  id_col,
  lon_origen,
  lat_origen,
  lon_destino,
  lat_destino,
  simplified,
  id_destination = NULL,
  matrix_as_table
)
}
\arguments{
\item{net}{The sf or dodgr_streetnet object representing the network}

\item{shp_origen}{Object with the coordinates of origin (may be a sf or a dataframe object)}

\item{shp_destino}{Object with the coordinates of destination (may be a sf or a dataframe object)}

\item{pairwise}{A logical parameter indicating if the computation must be in a pairwise format. If false, the result is a matrix
with distances between each point}

\item{crs_projected}{The EPSG number or proj4 object defined for calculating the nearest neighborhood (if join is true)}

\item{crs_longlat}{The EPSG number or proj4 object defined for computing distances with the dodgr_distances function (not used)}

\item{join}{A logical parameter indicating if the shp_origen and shp_destino must be joined by the nearest neighborhood}

\item{id_col}{String character with the name of the column with the id of the network}

\item{lon_origen}{String character with the name of the column containing the longitud of origin when shp_origen and shp_destino are not
sf objects}

\item{lat_origen}{String character with the name of the column containing the latitude of origin when shp_origen and shp_destino are not
sf objects}

\item{lon_destino}{String character with the name of the column containing the longitud of destination when shp_origen and shp_destino
are not sf objects}

\item{lat_destino}{String character with the name of the column containing the latitude of destination when shp_origen and shp_destino
are not sf objects}

\item{simplified}{A logical parameter. If true, the return is not a dataframe}

\item{id_destination}{String character indicating a shp_destino column wanted in the resulting dataframe (tipically an id column)}

\item{matrix_as_table}{A logical parameter. Only used when pairwise is false. The matrix of distances between points is returned as a
datframe of three columns (origin, destination, and distance)}
}
\value{
A dataframe, matrix or vector of distances between points along a network
}
\description{
This function return distances in meters for between points in a network. It can accept an sf object as origin or destination,
or a dataframe with columns for longitud and latitud for origin and destination.
}
\examples{

## origin and destination as a dataframe
distancias <- net_dist(vias2, shp_origen = BD_sf3, shp_destino = BD_sf3, pairwise = T, id_col = "edge_id", lon_origen = "lon_or",
lat_origen = "lat_or", lon_destino = "lon_dest", lat_destino = "lat_dest")

## origin and destination is the same, calculating a distance matrix as a sf objects
distancias_tm <- net_dist(tm, estaciones, estaciones, pairwise = F, join = F, matrix_as_table = T)

## origin and destination are sf objects, and the distance is computated to the nearest neighborhood
distancias_tm2 <- net_dist(tm, BD_sf1, estaciones, pairwise = T, join = T, id_destination = "nombre_est")
}
\keyword{coordinates}
\keyword{distance,}
\keyword{matrix}
\keyword{path,}
\keyword{shortest}
