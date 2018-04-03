library(readr)
library(data.table)

county_ids = read_delim('county_ids.txt', '\t', trim_ws = TRUE)
setDT(county_ids)
setnames(county_ids, names(county_ids), c('state_postal', 'county_fips',
    'county_ansi', 'county_name', 'land_area', 'water_area', 'land_area_sq_mi',
    'water_area_sq_mi', 'county_lat', 'county_long'))

devtools::use_data(county_ids, overwrite = TRUE)
