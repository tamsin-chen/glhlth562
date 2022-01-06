library(hexSticker)
library(tidyverse)
library(tidyquant)

# data https://covid19.who.int/info/

  p <- read_csv(here::here("data", "WHO-COVID-19-global-data.csv")) %>%
    group_by(Date_reported) %>%
    summarize(tot = sum(New_deaths)) %>%
    ggplot(aes(x = Date_reported, y = tot)) +
      geom_ma(ma_fun = SMA, n = 7, linetype = "solid", color="#efea42",
              size=1) +
      theme_void() +
      theme_transparent()

  sticker(p, package="GLHLTH562",
          p_size=7,
          p_x = 1,
          p_y = 1.4,
          s_x=1,
          s_y=.8,
          s_width=1.3,
          s_height=1,
          h_fill="#1f9ac9",
          h_color="#efea42",
          filename="images/562.png")

