\docType{data}
\name{house_precincts_2016}
\alias{house_precincts_2016}
\title{U.S. House of Representatives Precinct-Level Returns 2016}
\format{A \code{dataframe} with 36 variables:
    \describe{
        \item{\code{year}}{Year of election.}
        \item{\code{state}}{State name.}
        \item{\code{state_postal}}{State U.S. Postal Service abbreviation (two-letter ISO 1366 code).}
        \item{\code{state_fips}}{Numeric state FIPS 5-2 code.}
        \item{\code{state_icpsr}}{Numeric ICPSR state code.}
        \item{\code{county_name}}{County name.}
        \item{\code{county_ansi}}{County ANSI code.}
        \item{\code{county_fips}}{Numeric FIPS 6-4 code, the concatenation of \code{state_fips} and county FIPS codes.}
        \item{\code{county_lat}}{County latitude (decimal degrees).}
        \item{\code{county_long}}{County longitude (decimal degrees).}
        \item{\code{jurisdiction}}{The name of the administrative jurisdiction, typically a county, as it appeared in source data.}
        \item{\code{precinct}}{The name of the precinct.}
        \item{\code{office}}{The office for which the \code{candidate} ran.}
        \item{\code{district}}{District associated with the \code{office}, where applicable.}
        \item{\code{stage}}{The electoral stage, either \code{gen} for general elections or \code{pri} for primary elections.}
        \item{\code{special}}{Whether the election was a special election, either \code{TRUE} for special elections or \code{FALSE} otherwise.}
        \item{\code{candidate}}{The name of the candidate. Candidate names are standardized across jurisdictions.}
        \item{\code{candidate_last}}{Candidate's last name.}
        \item{\code{candidate_first}}{Candidate's first name.}
        \item{\code{candidate_middle}}{Candidate's middle name.}
        \item{\code{candidate_full}}{Candidate's official full name.}
        \item{\code{candidate_suffix}}{Candidate name suffix.}
        \item{\code{candidate_nickname}}{Candidate's nickname.}
        \item{\code{candidate_fec}}{Candidate's [FEC identifier](https://www.fec.gov/data/advanced/?tab=candidates). Multiple FEC IDs appear concatenated, separated by a semicolon and space (\code{; }).}
        \item{\code{candidate_fec_name}}{Candidate's name as it appears in FEC data.}
        \item{\code{candidate_google}}{Candidate's [Google Knowledge Graph](https://developers.google.com/knowledge-graph) entity identifier.}
        \item{\code{candidate_govtrack}}{Candidate's [GovTrack.us](https://www.govtrack.us) identifier.}
        \item{\code{candidate_icpsr}}{Candidate's [ICPSR](https://www.icpsr.umich.edu) identifier.}
        \item{\code{candidate_maplight}}{Candidate's [MapLight](https://maplight.org) identifier.}
        \item{\code{candidate_opensecrets}}{Candidate's [OpenSecrets.org](https://www.opensecrets.org) identifier.}
        \item{\code{candidate_wikidata}}{Candidate's [WikiData](https://www.wikidata.org) identifier.}
        \item{\code{candidate_party}}{Candidate's party affiliation. Values may differ from \code{party}, which gives the candidate's party on the ballot.}
        \item{\code{writein}}{Whether the record describes a write-in candidate, either \code{TRUE} or \code{FALSE}.}
        \item{\code{party}}{Party of the \code{candidate}, where applicable. Candidates may run on multiple party lines, so to compute two-party vote shares or candidate vote totals, aggregate over \code{party}. Party names are standardized across jurisdictions.}
        \item{\code{mode}}{Vote mode, e.g., \code{mail} or \code{Election Day}.}
        \item{\code{votes}}{Number of votes received.}}}
\usage{house_precincts_2016}
\source{http://dx.doi.org/10.7910/DVN/PSKDUJ, version 2018-03-29.}
\description{
This dataset contains precinct-level returns for elections to the U.S. House of
Representatives.

Each record in the dataset gives the number of votes reported from a precinct
for a candidate.}
\keyword{datasets}