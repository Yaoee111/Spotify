#### Preamble ####
# Purpose: Download data from Spotify
# Author: Yiyi Yao
# Date: 09 October, 2024
# Contact: ee.yao@mail.utoronto.ca
# License: MIT
# Pre-requisites: none

#### Workspace setup ###
library(devtools)
#devtools::install_github('charlie86/spotifyr')
library(spotifyr)
library(usethis)
edit_r_environ()

#### Download data ####
radiohead <- get_artist_audio_features("radiohead")

#### Save data ####
saveRDS(radiohead, "data/00-raw_data/radiohead.rds")
