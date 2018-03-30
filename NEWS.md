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

