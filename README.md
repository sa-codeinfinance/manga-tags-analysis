# manga-tags-analysis

Exploration and visualization of manga genres using data analysis in **R** and the **tidyverse** package.  
The goal is to identify and visualize the most popular manga genres based on their tags.


# Project Structure
- **data/manga_sample.csv** → Sample dataset containing manga titles and their associated tags (genres).
- **R/manga_eng.R** → R script that:
  1. Imports and cleans the dataset
  2. Splits tags into separate rows
  3. Calculates tag frequency
  4. Creates a bar chart of the top 10 manga genres
- **output/** → Folder for saving generated plots


# Dataset Overview
The dataset contains manga titles and their respective tags (e.g., Action, Romance, Fantasy, BL, etc.).  
This project uses a **sample file (`manga_sample.csv`)** for demonstration purposes.  
The full dataset is not included due to its size.


# How to Run
 **Clone this repository**
   ```bash
   git clone https://github.com/sa-codeinfinance/manga-tags-analysis.git
