library(readr)
library(data.table)

county_sub_ids = read_delim('county_sub_ids.txt', '\t', trim_ws = TRUE)
setDT(county_sub_ids)
setnames(county_sub_ids, names(county_sub_ids), c('state_postal',
    'county_sub_fips', 'county_sub_ansi', 'county_sub_name',
    'functional_status', 'land_area', 'water_area', 'land_area_sq_mi',
    'water_area_sq_mi', 'county_sub_lat', 'county_sub_long'))

devtools::use_data(county_sub_ids, overwrite = TRUE)
