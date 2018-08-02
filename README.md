
<!-- README.md is generated from README.Rmd. Please edit that file -->

# elections: MEDSL data in R

This is an R package for accessing data on U.S. elections from the [MIT
Election Data and Science Lab](https://electionlab.mit.edu).

## Installation

Install from GitHub:

``` r
if (!require('devtools', quietly = TRUE)) install.packages('devtools')
devtools::install_github('MEDSL/elections')
```

## Use

``` r
library(elections)
# We'll use dplyr for ease of illustration below
library(dplyr)
```

The package makes available the following
    datasets:

  - [`presidential_precincts_2016`](http://dx.doi.org/10.7910/DVN/LYWX3D)
  - [`senate_precincts_2016`](http://dx.doi.org/10.7910/DVN/NLTQAD)
  - [`house_precincts_2016`](http://dx.doi.org/10.7910/DVN/PSKDUJ)
  - [`state_precincts_2016`](http://dx.doi.org/10.7910/DVN/GSZG1O)
  - [`local_precincts_2016`](http://dx.doi.org/10.7910/DVN/Q8OHRS)
  - `state_ids`
  - `county_ids`
  - `county_sub_ids`

<!-- end list -->

``` r
data(presidential_precincts_2016)
presidential_precincts_2016 %>%
  select(state, county_fips, precinct, candidate, office, votes) %>%
  head()
#>     state county_fips               precinct                candidate
#> 1 Alabama       01001 10 JONES COMMUNITY CTR          Hillary Clinton
#> 2 Alabama       01001 10 JONES COMMUNITY CTR             Gary Johnson
#> 3 Alabama       01001 10 JONES COMMUNITY CTR               Jill Stein
#> 4 Alabama       01001 10 JONES COMMUNITY CTR             Donald Trump
#> 5 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 6 Alabama       01001 10 JONES COMMUNITY CTR Alabama Democratic Party
#>           office votes
#> 1   US President   135
#> 2   US President     0
#> 3   US President     1
#> 4   US President   218
#> 5   US President     4
#> 6 Straight Party   119
```

``` r
data(senate_precincts_2016)
senate_precincts_2016 %>%
  select(state, county_fips, precinct, candidate, office, votes) %>%
  head()
#>     state county_fips               precinct                candidate
#> 1 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 2 Alabama       01001 10 JONES COMMUNITY CTR Alabama Democratic Party
#> 3 Alabama       01001 10 JONES COMMUNITY CTR Alabama Republican Party
#> 4 Alabama       01001 10 JONES COMMUNITY CTR             Ron Crumpton
#> 5 Alabama       01001 10 JONES COMMUNITY CTR        Richard C. Shelby
#> 6 Alabama       01001  100 TRINITY METHODIST               [Write-in]
#>           office votes
#> 1      US Senate     0
#> 2 Straight Party   119
#> 3 Straight Party   120
#> 4      US Senate   137
#> 5      US Senate   214
#> 6      US Senate     9
```

``` r
data(house_precincts_2016)
house_precincts_2016 %>%
  select(state, county_fips, precinct, candidate, office, votes) %>%
  head()
#>     state county_fips               precinct                candidate
#> 1 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 2 Alabama       01001 10 JONES COMMUNITY CTR Alabama Democratic Party
#> 3 Alabama       01001 10 JONES COMMUNITY CTR Alabama Republican Party
#> 4 Alabama       01001 10 JONES COMMUNITY CTR            Nathan Mathis
#> 5 Alabama       01001 10 JONES COMMUNITY CTR              Martha Roby
#> 6 Alabama       01001  100 TRINITY METHODIST               [Write-in]
#>           office votes
#> 1       US House    13
#> 2 Straight Party   119
#> 3 Straight Party   120
#> 4       US House   143
#> 5       US House   192
#> 6       US House   235
```

``` r
data(state_precincts_2016)
state_precincts_2016 %>%
  select(state, county_fips, precinct, candidate, office, votes) %>%
  head()
#>     state county_fips               precinct  candidate
#> 1 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#> 2 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#> 3 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#> 4 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#> 5 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#> 6 Alabama       01001 10 JONES COMMUNITY CTR [Write-in]
#>                                                office votes
#> 1     ASSOCIATE JUSTICE OF THE SUPREME COURT, PLACE 1     0
#> 2     ASSOCIATE JUSTICE OF THE SUPREME COURT, PLACE 2     0
#> 3     ASSOCIATE JUSTICE OF THE SUPREME COURT, PLACE 3     0
#> 4 CIRCUIT COURT JUDGE, 19TH JUDICIAL CIRCUIT, PLACE 2     0
#> 5 CIRCUIT COURT JUDGE, 19TH JUDICIAL CIRCUIT, PLACE 3     0
#> 6            DISTRICT ATTORNEY, 19TH JUDICIAL CIRCUIT     0
```

``` r
data(local_precincts_2016)
local_precincts_2016 %>%
  select(state, county_fips, precinct, candidate, office, votes) %>%
  head()
#>     state county_fips               precinct                candidate
#> 1 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 2 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 3 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 4 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 5 Alabama       01001 10 JONES COMMUNITY CTR               [Write-in]
#> 6 Alabama       01001 10 JONES COMMUNITY CTR Alabama Democratic Party
#>                                              office votes
#> 1        MEMBER, AUTAUGA COUNTY BOARD OF EDUCATION,     0
#> 2        MEMBER, AUTAUGA COUNTY BOARD OF EDUCATION,     2
#> 3 MEMBER, AUTAUGA COUNTY COMMISSION, DISTRICT NO. 3     0
#> 4 MEMBER, AUTAUGA COUNTY COMMISSION, DISTRICT NO. 5     3
#> 5 SUPERINTENDENT, AUTAUGA COUNTY BOARD OF EDUCATION     0
#> 6                                    Straight Party   119
```

State identifiers:

``` r
data(state_ids)
head(state_ids)
#>        state state_icpsr state_postal state_fips
#> 1    Alabama          41           AL          1
#> 2     Alaska          81           AK          2
#> 3    Arizona          61           AZ          4
#> 4   Arkansas          42           AR          5
#> 5 California          71           CA          6
#> 6   Colorado          62           CO          8
```

County identifiers:

``` r
data(county_ids)
head(county_ids)
#>   state_postal county_fips county_ansi    county_name  land_area
#> 1           AL       01001    00161526 Autauga County 1539614693
#> 2           AL       01003    00161527 Baldwin County 4117605847
#> 3           AL       01005    00161528 Barbour County 2292144656
#> 4           AL       01007    00161529    Bibb County 1612165763
#> 5           AL       01009    00161530  Blount County 1670079465
#> 6           AL       01011    00161531 Bullock County 1613059168
#>   water_area land_area_sq_mi water_area_sq_mi county_lat county_long
#> 1   25744269         594.449            9.940   32.53224   -86.64644
#> 2 1133109409        1589.817          437.496   30.65922   -87.74607
#> 3   50538698         885.002           19.513   31.87025   -85.40510
#> 4    9603798         622.461            3.708   33.01589   -87.12715
#> 5   15039864         644.821            5.807   33.97736   -86.56644
#> 6    6054988         622.806            2.338   32.10176   -85.71726
```

County subdivision identifiers:

``` r
data(county_sub_ids)
head(county_sub_ids)
#>   state_postal county_sub_fips county_sub_ansi  county_sub_name
#> 1           AL      0100190171        00161593 Autaugaville CCD
#> 2           AL      0100190315        00165647  Billingsley CCD
#> 3           AL      0100192106        00165648      Marbury CCD
#> 4           AL      0100192628        00165649   Prattville CCD
#> 5           AL      0100390207        00161594  Bay Minette CCD
#> 6           AL      0100390846        00165650       Daphne CCD
#>   functional_status  land_area water_area land_area_sq_mi water_area_sq_mi
#> 1                 S  478160386   13912232         184.619            5.372
#> 2                 S  386871321    1596305         149.372            0.616
#> 3                 S  292756921     516153         113.034            0.199
#> 4                 S  381826065    9719579         147.424            3.753
#> 5                 S 1338292029   27613551         516.717           10.662
#> 6                 S  297343727  142430774         114.805           54.993
#>   county_sub_lat county_sub_long
#> 1       32.45741       -86.72900
#> 2       32.60614       -86.74899
#> 3       32.63852       -86.51487
#> 4       32.47982       -86.50648
#> 5       30.80966       -87.70619
#> 6       30.66744       -87.90619
```
