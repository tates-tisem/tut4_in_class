library(tidyverse)

dir.create("data", showWarnings = FALSE)

base_url <- paste0(
  "https://raw.githubusercontent.com/hannesdatta/",
  "course-dprep/refs/heads/main/material/project/"
)

# TODO: add creators.csv, videos.csv, user_view.csv when published
files <- c(
  "video_view.csv",
  "coaching_2_data/impressions.csv",
  "coaching_2_data/watch_events.csv",
  "coaching_2_data/sessions.csv",
  "coaching_2_data/users.csv"
)

for (f in files) {
  dest <- file.path("data", basename(f))
  if (!file.exists(dest)) download.file(paste0(base_url, f), dest, mode = "wb")
}
# new branch trying to commit commitcommit
video_view <- read_csv("data/video_view.csv")
video_view %>%
  select(video_id, creator_id, impressions_n, watched_n, watch_rate, avg_watch
         head(6)
         
impressions <- read_csv("data/impressions.csv")
watch_events <- read_csv("data/watch_events.csv")
impressions %>%
select(impression_id, session_id, user_id, video_id, creator_id, shown_at) 
         head(6)
