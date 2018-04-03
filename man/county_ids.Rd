\docType{data}
\name{county_ids}
\alias{county_ids}
\title{County Identifiers}
\format{A \code{dataframe} with 10 variables:
    \describe{
        \item{\code{state_postal}}{County U.S. Postal Service abbreviation, or two-letter ISO 1366 code.}
        \item{\code{county_fips}}{Numeric county FIPS code per FIPS PUB 5-2.}
        \item{\code{county_ansi}}{Numeric ANSI county code.}
        \item{\code{county_name}}{County name.}
        \item{\code{land_area}}{Land area in square meters.}
        \item{\code{water_area}}{Water area in square meters.}
        \item{\code{land_area_sq_miles}}{Land area in square miles.}
        \item{\code{water_area_sq_miles}}{Water area in square miles.}
        \item{\code{county_lat}}{County latitude.}
        \item{\code{county_long}}{County longitude.}
    }
}
\usage{county_ids}
\description{This dataset contains identifiers for counties and county equivalents.}
\source{2017 Census Bureau Gazetteer (\url{https://www.census.gov/geo/maps-data/data/gazetteer2017.html}).}
\keyword{datasets}

