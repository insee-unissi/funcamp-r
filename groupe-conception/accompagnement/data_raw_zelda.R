# remotes::install_github("thinkr-open/prenoms")
library(prenoms)
library(tidyverse)
data(prenoms)
prenoms <- sample_frac(prenoms_france, size = 0.1) %>% arrange(year)
zelda <- prenoms_france %>% 
  filter(name == "Zelda")
# zelda %>% count(sex)
zelda <- zelda %>% complete(year=1978:2017,name,fill = list(sex="F",n=0,prop=0))

write_rds(zelda,path = "module_0/www/zelda.rds")
write_rds(prenoms,path = "module_0/www/prenoms.rds")
