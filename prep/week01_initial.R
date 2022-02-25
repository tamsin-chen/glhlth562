# ==============================================================================
# GLHLTH 562
# ==============================================================================

# my_packages <- c("tidyverse", "broom", "coefplot", "cowplot",
#                  "gapminder", "GGally", "ggrepel", "ggridges", "gridExtra",
#                  "here", "interplot", "margins", "maps", "mapproj",
#                  "mapdata", "MASS", "quantreg", "rlang", "scales",
#                  "survey", "srvyr", "viridis", "viridisLite", "devtools")
#
# install.packages(my_packages, repos = "http://cran.rstudio.com")
#
# devtools::install_github("kjhealy/socviz")

# Week 1, Jan 11
# ------------------------------------------------------------------------------

library(tidyverse)
library(socviz)

# 2.3.2 Everything is an object

c(1, 2, 3, 1, 3, 5, 25)

my_numbers <- c(1, 2, 3, 1, 3, 5, 25)
your_numbers <- c(5, 31, 71, 1, 3, 21, 6)

url <- "https://cdn.rawgit.com/kjhealy/viz-organdata/master/organdonation.csv"
organs <- read_csv(file = url)

library(gapminder)
gapminder
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point()

# Financial Times COVID data vizzes are excellent.
# John Burn-Murdoch on twitter
# Useful title and subtitles, no data legends

# Tidy data have three characteristics:
# 1. Each variable forms a column
# 2. Each observation forms a row
# 3. Each type of observational unit forms a table (that is, you have different
#     tables for different levels of data, so data about students in one table,
#     data about teachers in another table, data about courses in another)

# What are the elements that make up this plot?
# One data point for each day, with lines joining them, and one for each state.
# The graph takes a seven-day rolling average because it helps smooth out
#     spikes and allows us to better understand real trends.
# Two axes. The y-axis is deaths per 100k, the x-axis is time (month and year).
# Title and subtitle.
# Grid in the background
# FT theme background color.
# Captions for the plot.
# Line showing today, and a tool tip with more info for today's data point.
# Logo for the Financial Times.

# The Grammar of Graphics by Leland Wilkinson
# The "gg" in "ggplot" stands for the grammar of graphics!
# In ggplot, we think in layers. Theme, coordinates, facets, geometries, scales,
#     statistics, mapping, data.
# Facets e.g., each state has its own plot?

