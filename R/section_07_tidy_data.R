library(tidyverse)
library(ggpmthemes)
library(glue)

theme_set(theme_poppins())

catch <-
  read_csv(
    "https://cn.dataone.org/cn/v2/resolve/df35b.302.1",
    name_repair = janitor::make_clean_names
  )

region <-
  read_csv(
    "https://cn.dataone.org/cn/v2/resolve/df35b.303.1",
    name_repair = janitor::make_clean_names
  )

catch
region

region %>%
  count(code)

# "code" is the primary key in "region"
# "region" is the foreign key in "catch"

merged_data <- inner_join(region, catch, by = c("code" = "region"))

anti_join(region, catch, by = c("code" = "region"))
anti_join(catch, region, by = c("region" = "code"))

merged_data %>% 
  ggplot(aes(x = year, y = all)) +
  geom_line() +
  facet_wrap(~code)
