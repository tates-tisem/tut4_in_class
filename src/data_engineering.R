# Load the data
library (dplyr)

video_view <- read_csv("data/video_view.csv")
# Exercise 1
video_features <- video_view %>%
  mutate(watch_rate_rank = rank(-watch_rate),
         reach_band = case_when(impressions_n < 20~"Low", 
                                impressions_n < 60~ "Medium", 
                                TRUE~ "High"),
      high_quality = avg_watch_share >= 0.4) %>%
    distinct(video_id, .keep_all = TRUE)
  write_csv(video_feautrues, "temp/video_features.csv")


# Exercise 2



# Exercise 3



# Exercise 4



# Exercise 5
