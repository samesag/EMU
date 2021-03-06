% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sm_coordinates.R
\name{waiver}
\alias{waiver}
\title{Customizable coordinates zoom for ggplot maps}
\usage{
waiver()
}
\arguments{
\item{data}{The dataframe containing the spatial information for the box limits.}

\item{bbox}{An st_bbox objetc as a named vector for getting the box limits}

\item{expansion}{a vector trbl for expandin any dimension over the initial limits}

\item{projected}{logical, if T the original source (data or bbox) is in a projected CRS}
}
\value{
The coordinates for an accurate plot
}
\description{
Set coordinate limits for a ggplot map based on a sf object or a bbox object, having an option for expanding the limits (expansion)
}
\examples{
## Not run:
librar(sf)
sf_utam \%>\%
ggplot() +
geom_sf(data = bogota_unido, fill = "#EBECF2") +
geom_sf(aes(fill = as.factor(ESTRATOPre)), alpha = 0.6) +
scale_fill_brewer("Estrato", palette = "YlGnBu") +
theme_void(base_family = "Franklin Gothic Book") +
theme(plot.background = element_rect(fill = "#EBECF2", color = NA),
plot.margin = margin(r = 10),
text = element_text(size = 10)) +
coord_sf_santi(bbox = a, expansion = space(r = 0.5))
}
\keyword{coordinates}
\keyword{crs}
\keyword{expansion}
\keyword{ggplot}
\keyword{zoom}
