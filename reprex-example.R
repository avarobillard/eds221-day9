library(tidyverse)

mtcars_mpl <- mtcars %>% 
  mutate(mpl == mpg * 3.78541)

mtcars_subset <- mtcars %>% 
  select(mpg) %>% 
  slice_head(n = 5)

datapasta::df_paste(mtcars_subset)


## REPREX
library(tidyverse)

mtcars <- data.frame(
   row.names = c("Mazda RX4","Mazda RX4 Wag","Datsun 710",
                 "Hornet 4 Drive","Hornet Sportabout"),
         mpg = c(21, 21, 22.8, 21.4, 18.7)
)

mtcars_mpl <- mtcars %>% 
  mutate(mpl == mpg * 3.78541)
