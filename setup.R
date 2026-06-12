# setup.R

## Load packages
library(tidyverse)
library(leaflet)
library(scales)
library(reactable)
library(htmltools)
library(here)
library(DT)
library(readr)
library(knitr)
library(rmarkdown)

## Global knitr options
knitr::opts_chunk$set(
  echo = FALSE,
  warning = FALSE,
  message = FALSE,
  dpi = 300
)

## Brand colors
brand_colors <- c(
  teal = "#14B8A6",
  purple = "#8B5CF6"
)

## Custom palette
my_palette <- scales::seq_gradient_pal(
  brand_colors["teal"],
  brand_colors["purple"],
  "Lab"
)(seq(0, 1, length.out = 10))

## ggplot theme
theme_site <- function() {
  theme_minimal(base_family = "Inter") +
    theme(
      plot.title = element_text(face = "bold", size = 16),
      plot.subtitle = element_text(size = 12),
      panel.grid.minor = element_blank(),
      axis.title = element_text(face = "bold")
    )
}

## Load dataset (optional global use)
stupiddf3 <- read_csv(here("data", "okstupidcleaneddata.csv"))