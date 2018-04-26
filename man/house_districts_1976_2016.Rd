\docType{data}
\name{house_districts_1976_2016}
\alias{house_districts_1976_2016}
\title{U.S. House 1976–2016}
\format{A \code{dataframe} with 14 variables:
    \describe{
        \item{\code{year}}{Year of election.}
        \item{\code{state}}{State name.}
        \item{\code{state_postal}}{State U.S. Postal Service abbreviation, or two-letter ISO 1366 code.}
        \item{\code{state_fips}}{Numeric state FIPS 5-2 code.}
        \item{\code{state_census}}{Numeric U.S. Census state code.}
        \item{\code{state_icpsr}}{Numeric ICPSR state code.}
        \item{\code{office}}{The office for which the \code{candidate} ran.}
        \item{\code{district}}{District associated with the \code{office}, where applicable.}
        \item{\code{stage}}{The electoral stage, either \code{gen} for general elections or \code{pri} for primary elections.}
        \item{\code{special}}{Whether the election was a special election, either \code{TRUE} for special elections or \code{FALSE} otherwise.}
        \item{\code{candidate}}{The name of the candidate. Names are as they appear in the House Clerk report.}
        \item{\code{writein}}{Whether the record describes a write-in candidate, either \code{TRUE} or \code{FALSE}.}
        \item{\code{party}}{Party of the \code{candidate}, where applicable. Candidates may run on multiple party lines, so to compute two-party vote shares or candidate vote totals, aggregate over \code{party}. Party names are as they appear in the House Clerk report.}
        \item{\code{votes}}{Number of votes received. Massachusetts and New York returns often contains entries for "blank," "other/blank," "scattering/blank," and the like. For analyses that depend on an accurate count of votes cast for candidates (rather than turnout, including blank ballots), consult state returns. Future versions of this dataset will distinguish blank ballots from votes cast for scattering candidates.}}}
\usage{house_districts_1976_2016}
\source{https://dx.doi.org/10.7910/DVN/IG0UN2, version 2018-03-11T22:09:12Z.}
\description{
This dataset contains constituency-level returns for elections to the U.S.
House of Representatives.

Each record in the dataset gives the number of votes reported in a constituency
for a candidate.The data source is the document "[Statistics of the Congressional
Election](http://history.house.gov/Institution/Election-Statistics/Election-
Statistics/)," published biennially by the Clerk of the U.S. House of
Representatives.}
\keyword{datasets}