pacman::p_load(scholar)
library(scholar)

# Define my id
id <- '3fofYzcAAAAJ'

# Get profile and print name
l <- get_profile(id)
l$name 

# Get his citation history, i.e. citations to his work in a given year 
get_citation_history(id)

# Get his publications (a large data frame)
get_publications(id)