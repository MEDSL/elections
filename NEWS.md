# elections 0.2.0

We've added identifiers for candidates in U.S. House and Senate races. [FEC
IDs](https://www.fec.gov/data) are present for nearly all candidates. A
comprehensive set of identifiers from the [@unitedstates
project](https://github.com/unitedstates/congress-legislators) is available for
incumbents and winners (GovTrack, ICPSR, MapLight, Open Secrets, WikiData, and
Google Knowledge Graph entity IDs). Further details are in the codebook, which
now gives the source of variables. Our approach was to join the datasets on
`office`, `state`, `district`, and a normalizing transformation of `candidate`,
which remains in the data as `candidate_normalized`. (This is a single word from
`candidate`, usually the last name, in lowercase.) There are two new files in
the release. We're providing the returns in [Feather
format](https://github.com/wesm/feather) as well as CSV, and including a
supplementary table of variable-value frequencies.


# elections 0.1.0

This release adds returns from ten new states; geographic identifiers; and
improvements from ongoing work on data quality. The new returns are from
Alabama, Hawaii, Massachusetts, Minnesota, North Carolina, Oklahoma, Rhode
Island, South Carolina, Virginia, and Wisconsin. This brings coverage to 19
states and the District of Columbia.

County-level geographic variables are now available as `county_name`,
`county_fips`, `county_ansi`, `county_lat`, and `county_long`. We added these
variables by merging in `jurisdiction` FIPS codes from the [2016 Election
Administration and Voting
Survey](https://www.eac.gov/research-and-data/datasets-codebooks-and-surveys)
(EAVS) by `jurisdiction` name, and then joining the returns by FIPS code with
the Census Bureau's [2017 gazetteer files](https://www.census.gov/geo/maps-
data/data/gazetteer2017.html). In states where the administrative jurisdiction
is the county (or equivalent), `jurisdiction` and `county_name` are roughly the
same but differ in source: `jurisdiction` is from the returns as released by the
county, and `county_name` is from the gazetteer. Where local governments
administer elections, the new geographic variables describe the county that
contains the `jurisdiction`. They are not yet available for Alaska.

We continue to normalize the data across states and jurisdictions. Expect
changes throughout the data, but particularly for down-ballot races, in
`candidate`, `office`, `district`, `mode`, `writein`, and `party`.


# elections 0.0.1

This initial release covers ten jurisdictions: Alaska, Colorado, Connecticut,
the District of Columbia, Idaho, Louisiana, New Mexico, North Dakota, Tennessee,
and Wyoming. Returns for the remaining states are forthcoming.

