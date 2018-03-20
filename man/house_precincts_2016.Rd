\docType{data}
\name{house_precincts_2016}
\alias{house_precincts_2016}
\title{U.S. House of Representatives Precinct-Level Returns 2016}
\format{A \code{dataframe} with 16 variables:
    \describe{
        \item{\code{year}}{Year of election.}
        \item{\code{state}}{State name.}
        \item{\code{state_postal}}{State U.S. Postal Service abbreviation, or two-letter ISO 1366 code.}
        \item{\code{state_fips}}{Numeric state FIPS code per FIPS PUB 5-2.}
        \item{\code{state_census}}{Numeric U.S. Census state code.}
        \item{\code{state_icpsr}}{Numeric ICPSR state code.}
        \item{\code{jurisdiction}}{The name of the administrative jurisdiction, typically the county.}
        \item{\code{office}}{The office for which the \code{candidate} ran.}
        \item{\code{district}}{District associated with the \code{office}, where applicable.}
        \item{\code{precinct}}{The name of the precinct.}
        \item{\code{stage}}{The electoral stage, either \code{gen} for general elections or \code{pri} for primary elections.}
        \item{\code{special}}{Whether the election was a special election, either \code{TRUE} for special elections or \code{FALSE} otherwise.}
        \item{\code{candidate}}{The name of the candidate. Candidate names are standardized across jurisdictions.}
        \item{\code{writein}}{Whether the record describes a write-in candidate, either \code{TRUE} or \code{FALSE}.}
        \item{\code{party}}{Party of the \code{candidate}, where applicable. Candidates may run on multiple party lines, so to compute two-party vote shares or candidate vote totals, aggregate over \code{party}. Party names are standardized across jurisdictions.}
        \item{\code{votes}}{Number of votes received.}}}
\usage{house_precincts_2016}
\source{https://dx.doi.org/10.7910/DVN/PSKDUJ, version 2018-03-12T23:29:52Z.}
\description{
This dataset contains precinct-level returns for elections to the U.S. House of
Representatives.

Each record in the dataset gives the number of votes reported from a precinct
for a candidate.}
\keyword{datasets}