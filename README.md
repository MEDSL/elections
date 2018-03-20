
<!-- README.md is generated from README.Rmd. Please edit that file -->
elections: MEDSL data in R
==========================

This is an R package for accessing data on U.S. elections from the [MIT Election and Data Science Lab](https://electionlab.mit.edu).

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

-   `presidential_precincts_2016`
-   `senate_precincts_2016`
-   `house_precincts_2016`
-   `state_ids`

``` r
presidential_precincts_2016 %>%
  select(state_postal, precinct, candidate, party, writein, votes)
#> # A tibble: 249,870 x 6
#>    state_postal precinct               candidate      party  writein votes
#>    <chr>        <chr>                  <chr>          <chr>  <lgl>   <int>
#>  1 AK           01-446 Aurora          Darrell Castle const… F           5
#>  2 AK           01-446 Aurora          Donald Trump   repub… F         434
#>  3 AK           01-446 Aurora          Gary Johnson   liber… F          75
#>  4 AK           01-446 Aurora          Hillary Clint… democ… F         295
#>  5 AK           01-446 Aurora          Jill Stein     green  F          23
#>  6 AK           01-446 Aurora          Rocky Roque d… new a… F           7
#>  7 AK           01-446 Aurora          <NA>           none   T          29
#>  8 AK           01-455 Fairbanks No. 1 Darrell Castle const… F           2
#>  9 AK           01-455 Fairbanks No. 1 Donald Trump   repub… F         113
#> 10 AK           01-455 Fairbanks No. 1 Gary Johnson   liber… F           8
#> # ... with 249,860 more rows
```

``` r
senate_precincts_2016 %>%
  select(state_postal, precinct, candidate, party, writein, votes)
#> # A tibble: 133,816 x 6
#>    state_postal precinct               candidate      party  writein votes
#>    <chr>        <chr>                  <chr>          <chr>  <lgl>   <int>
#>  1 AK           01-446 Aurora          Breck A. Craig new a… F           5
#>  2 AK           01-446 Aurora          Joe Miller     liber… F         261
#>  3 AK           01-446 Aurora          Lisa Murkowski repub… F         409
#>  4 AK           01-446 Aurora          Margaret Stock new a… F         105
#>  5 AK           01-446 Aurora          Ray Metcalfe   democ… F          70
#>  6 AK           01-446 Aurora          Ted Gianoutsos new a… F           8
#>  7 AK           01-446 Aurora          <NA>           none   T           4
#>  8 AK           01-455 Fairbanks No. 1 Breck A. Craig new a… F           1
#>  9 AK           01-455 Fairbanks No. 1 Joe Miller     liber… F          74
#> 10 AK           01-455 Fairbanks No. 1 Lisa Murkowski repub… F          85
#> # ... with 133,806 more rows
```

``` r
house_precincts_2016 %>%
  select(state_postal, precinct, candidate, party, writein, votes)
#> # A tibble: 60,391 x 6
#>    state_postal precinct               candidate     party   writein votes
#>    <chr>        <chr>                  <chr>         <chr>   <lgl>   <int>
#>  1 AK           01-446 Aurora          Bernie Souph… new al… F          20
#>  2 AK           01-446 Aurora          Don Young     republ… F         389
#>  3 AK           01-446 Aurora          Jim C. McDer… libert… F         109
#>  4 AK           01-446 Aurora          Steve Lindbe… democr… F         334
#>  5 AK           01-446 Aurora          <NA>          none    T           4
#>  6 AK           01-455 Fairbanks No. 1 Bernie Souph… new al… F           4
#>  7 AK           01-455 Fairbanks No. 1 Don Young     republ… F         106
#>  8 AK           01-455 Fairbanks No. 1 Jim C. McDer… libert… F          23
#>  9 AK           01-455 Fairbanks No. 1 Steve Lindbe… democr… F          62
#> 10 AK           01-455 Fairbanks No. 1 <NA>          none    T           0
#> # ... with 60,381 more rows
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
