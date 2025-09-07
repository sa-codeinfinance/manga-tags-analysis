# Analyze the dataset "manga_sample.csv"

# Goal: analyze the most common manga genres using the "tags" variable.

#################################################
# Basic import
setwd("~/Desktop/Dataset_R")  # set the working directory
getwd()  # check if the correct working directory is being used

library(tidyverse)

manga <- read_csv("manga_sample.csv")   
manga                             # print the first rows of the dataset

# Check dataset dimensions
dim(manga)    

# Check variable names
names(manga)  

# Dataset structure
head(manga) # first rows
str(manga)  
glimpse(manga)

######################################################################
# Analysis of the qualitative variable "tags"
# The "tags" contain the genres associated with each manga
# (e.g., Action, Romance, BL, etc.).

# Extract and split tags into separate rows
manga <- manga |> 
  separate_rows(tags, sep = ",")

# Count the frequency of each genre
tags_count <- manga |> 
  count(tags, name = "freq") |> 
  arrange(desc(freq))

# Show the top 10 most frequent genres
head(tags_count, 10)


######################################################################
# Bar plot: most popular genres
tags_count |> 
  arrange(desc(freq)) |>      # sort by highest frequency
  head(10) |>                 # take only the top 10 genres
  ggplot(aes(x = reorder(tags, freq), y = freq)) +
  geom_col(fill = "skyblue") +
  coord_flip() +  # rotate the graph for better readability
  labs(
    title = "Top 10 Manga Genres",
    x = "Genre",
    y = "Frequency"
  ) +
  theme_minimal()

# Displays the most common manga genres in the dataset.
# The first positions indicate the most popular genres.
