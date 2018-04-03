\docType{data}
\name{county_sub_ids}
\alias{county_sub_ids}
\title{County Subdivison Identifiers}
\format{A \code{dataframe} with 10 variables:
    \describe{
        \item{\code{state_postal}}{County U.S. Postal Service abbreviation, or two-letter ISO 1366 code.}
        \item{\code{county_sub_fips}}{Numeric county_sub FIPS code per FIPS PUB 5-2.}
        \item{\code{county_sub_ansi}}{Numeric ANSI county subdivison code.}
        \item{\code{county_sub_name}}{County subdivision name.}
        \item{\code{land_area}}{Land area in square meters.}
        \item{\code{water_area}}{Water area in square meters.}
        \item{\code{land_area_sq_miles}}{Land area in square miles.}
        \item{\code{water_area_sq_miles}}{Water area in square miles.}
        \item{\code{county_sub_lat}}{County subdivision latitude.}
        \item{\code{county_sub_long}}{County subdivision longitude.}
    }
}
\usage{county_sub_ids}
\description{This dataset contains identifiers for county subdivisions.}
\source{2017 Census Bureau Gazetteer (\url{https://www.census.gov/geo/maps-data/data/gazetteer2017.html}).}
\keyword{datasets}

