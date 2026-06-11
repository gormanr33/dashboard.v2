#R Setup

## Load packages
library(tidyverse)
library(leaflet)
library(scales)
library(reactable)
library(htmltools)
library(here)
library(DT)
library(readr)

# Global knitr options
knitr::opts_chunk$set(
  echo = FALSE,      # Hide code blocks by default
  warning = FALSE,   # Prevent warnings from showing
  message = FALSE,   # Prevent package startup messages from rendering
  dpi = 300          # High-resolution figures
)

# Create color palette for visualizations
my_palette <- seq_gradient_pal(
  "#14B8A6",
  "#8B5CF6",
  "Lab"
)(seq(0, 1, length.out = 10))

# Load dataset
stupiddf3 <- read_csv(here("data", "okstupidcleaneddata.csv"))
