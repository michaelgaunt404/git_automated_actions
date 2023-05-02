
library(magrittr)

data.frame(values = rnorm(25, lubridate::hour(Sys.time()), sqrt(lubridate::hour(Sys.time())))) %>%
  readr::write_csv(file = "test_file.csv"
                   ,append = T)

# renv::status()

# magrittr
#   blastula
#   readr
# lubridate
