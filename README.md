
<!-- README.md is generated from README.Rmd. Please edit that file -->
elections: MEDSL data in R
==========================

This is an R package for accessing data on U.S. elections from the [MIT Election Data and Science Lab](https://electionlab.mit.edu).

Installation
------------

Install from GitHub:

``` r
if (!require('devtools', quietly = TRUE)) install.packages('devtools')
devtools::install_github('MEDSL/elections')
```

Use
---

``` r
library(elections)
# We'll use dplyr for ease of illustration below
library(dplyr)
```

The package makes available the following datasets:

-   [`presidential_precincts_2016`](http://dx.doi.org/10.7910/DVN/LYWX3D)
-   [`senate_precincts_2016`](http://dx.doi.org/10.7910/DVN/NLTQAD)
-   [`house_precincts_2016`](http://dx.doi.org/10.7910/DVN/PSKDUJ)
-   [`state_precincts_2016`](http://dx.doi.org/10.7910/DVN/GSZG1O)
-   [`local_precincts_2016`](http://dx.doi.org/10.7910/DVN/Q8OHRS)
-   `state_ids`

``` r
presidential_precincts_2016 %>%
  select(state_postal, county_fips, precinct, candidate, party, votes)
#> # A tibble: 496,855 x 6
#>    state_postal county_fips precinct               candidate  party  votes
#>    <chr>        <chr>       <chr>                  <chr>      <chr>  <dbl>
#>  1 AL           01001       10.JONES.COMMUNITY.CTR Donald Tr… repu… 2.18e²
#>  2 AL           01001       10.JONES.COMMUNITY.CTR Gary John… inde… 0     
#>  3 AL           01001       10.JONES.COMMUNITY.CTR Hillary C… demo… 1.35e²
#>  4 AL           01001       10.JONES.COMMUNITY.CTR Jill Stein inde… 1.00e⁰
#>  5 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>  0     
#>  6 AL           01001       10.JONES.COMMUNITY.CTR Under Vot… <NA>  0     
#>  7 AL           01001       10.JONES.COMMUNITY.CTR Write-In   <NA>  4.00e⁰
#>  8 AL           01001       100.TRINITY.METHODIST  Donald Tr… repu… 1.80e³
#>  9 AL           01001       100.TRINITY.METHODIST  Gary John… inde… 6.00e¹
#> 10 AL           01001       100.TRINITY.METHODIST  Hillary C… demo… 2.85e²
#> # ... with 496,845 more rows
```

``` r
senate_precincts_2016 %>%
  select(state_postal, county_fips, precinct, candidate, party, votes)
#> # A tibble: 248,271 x 6
#>    state_postal county_fips precinct               candidate  party  votes
#>    <chr>        <chr>       <chr>                  <chr>      <chr>  <dbl>
#>  1 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>  0     
#>  2 AL           01001       10.JONES.COMMUNITY.CTR Richard C… repu… 2.14e²
#>  3 AL           01001       10.JONES.COMMUNITY.CTR Ron Crump… demo… 1.37e²
#>  4 AL           01001       10.JONES.COMMUNITY.CTR Under Vot… <NA>  7.00e⁰
#>  5 AL           01001       10.JONES.COMMUNITY.CTR Write-In   <NA>  0     
#>  6 AL           01001       100.TRINITY.METHODIST  Over Votes <NA>  2.00e⁰
#>  7 AL           01001       100.TRINITY.METHODIST  Richard C… repu… 1.79e³
#>  8 AL           01001       100.TRINITY.METHODIST  Ron Crump… demo… 3.36e²
#>  9 AL           01001       100.TRINITY.METHODIST  Under Vot… <NA>  5.00e¹
#> 10 AL           01001       100.TRINITY.METHODIST  Write-In   <NA>  9.00e⁰
#> # ... with 248,261 more rows
```

``` r
house_precincts_2016 %>%
  select(state_postal, county_fips, precinct, candidate, party, votes)
#> # A tibble: 170,309 x 6
#>    state_postal county_fips precinct               candidate  party  votes
#>    <chr>        <chr>       <chr>                  <chr>      <chr>  <dbl>
#>  1 AL           01001       10.JONES.COMMUNITY.CTR Martha Ro… repu… 1.92e²
#>  2 AL           01001       10.JONES.COMMUNITY.CTR Nathan Ma… demo… 1.43e²
#>  3 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>  0     
#>  4 AL           01001       10.JONES.COMMUNITY.CTR Under Vot… <NA>  1.00e¹
#>  5 AL           01001       10.JONES.COMMUNITY.CTR Write-In   <NA>  1.30e¹
#>  6 AL           01001       100.TRINITY.METHODIST  Martha Ro… repu… 1.40e³
#>  7 AL           01001       100.TRINITY.METHODIST  Nathan Ma… demo… 4.38e²
#>  8 AL           01001       100.TRINITY.METHODIST  Over Votes <NA>  1.00e⁰
#>  9 AL           01001       100.TRINITY.METHODIST  Under Vot… <NA>  1.15e²
#> 10 AL           01001       100.TRINITY.METHODIST  Write-In   <NA>  2.35e²
#> # ... with 170,299 more rows
```

``` r
state_precincts_2016 %>%
  select(state_postal, county_fips, precinct, candidate, party, votes)
#> # A tibble: 1,610,458 x 6
#>    state_postal county_fips precinct               candidate   party votes
#>    <chr>        <chr>       <chr>                  <chr>       <chr> <dbl>
#>  1 AL           01001       10.JONES.COMMUNITY.CTR Ben Fuller  repu… 200  
#>  2 AL           01001       10.JONES.COMMUNITY.CTR Ella B. Be… demo… 183  
#>  3 AL           01001       10.JONES.COMMUNITY.CTR Karen H. J… inde…  30.0
#>  4 AL           01001       10.JONES.COMMUNITY.CTR Kelli Wise  repu… 220  
#>  5 AL           01001       10.JONES.COMMUNITY.CTR "Michael F… repu… 221  
#>  6 AL           01001       10.JONES.COMMUNITY.CTR No-Statewi… <NA>   94.0
#>  7 AL           01001       10.JONES.COMMUNITY.CTR No-Statewi… <NA>  104  
#>  8 AL           01001       10.JONES.COMMUNITY.CTR No-Statewi… <NA>  112  
#>  9 AL           01001       10.JONES.COMMUNITY.CTR No-Statewi… <NA>   83.0
#> 10 AL           01001       10.JONES.COMMUNITY.CTR No-Statewi… <NA>   75.0
#> # ... with 1,610,448 more rows
```

``` r
local_precincts_2016 %>%
  select(state_postal, county_fips, precinct, candidate, party, votes)
#> # A tibble: 488,652 x 6
#>    state_postal county_fips precinct               candidate  party  votes
#>    <chr>        <chr>       <chr>                  <chr>      <chr>  <dbl>
#>  1 AL           01001       10.JONES.COMMUNITY.CTR Larry Mac… demo… 183   
#>  2 AL           01001       10.JONES.COMMUNITY.CTR Ledronia … demo… 173   
#>  3 AL           01001       10.JONES.COMMUNITY.CTR Mark Hind… repu…  18.0 
#>  4 AL           01001       10.JONES.COMMUNITY.CTR No-Local … <NA>   66.0 
#>  5 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>    0   
#>  6 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>    0   
#>  7 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>    0   
#>  8 AL           01001       10.JONES.COMMUNITY.CTR Over Votes <NA>    0   
#>  9 AL           01001       10.JONES.COMMUNITY.CTR Spence Ag… repu… 212   
#> 10 AL           01001       10.JONES.COMMUNITY.CTR Under Vot… <NA>    2.00
#> # ... with 488,642 more rows
```

State identifiers:

``` r
head(state_ids)
#>        state state_icpsr state_postal state_fips
#> 1    Alabama          41           AL          1
#> 2     Alaska          81           AK          2
#> 3    Arizona          61           AZ          4
#> 4   Arkansas          42           AR          5
#> 5 California          71           CA          6
#> 6   Colorado          62           CO          8
```
