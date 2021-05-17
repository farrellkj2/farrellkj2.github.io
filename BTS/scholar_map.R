pacman::p_load(scholar, tidyverse)

# Define my id
id <- '3fofYzcAAAAJ'

# Citations
ct <- get_citation_history(id)
ggplot(ct, aes(year, cites)) + geom_line() + geom_point()

ggplot(ct, aes(year, cites)) +
  geom_segment(aes(xend = year, yend = 0), size=1, color='darkgrey') +
  geom_point(size=3, color='firebrick') +
  scale_x_continuous(limits=c(2013,2021), breaks=seq(2012,2021,1))+
  scale_y_continuous(limits=c(0,151))

# Visualize co-author network
coauthor_network <- get_coauthors('3fofYzcAAAAJ', n_coauthors=100, n_deep=1) 

plot_coauthors(coauthor_network)


get_complete_authors(id, pubid, delay = 0.4, initials = TRUE)

pubs <- get_publications(id)

# AUthor list from pubs
authors <- pubs %>% select(author) %>% 
  separate(author, into= c("a","b",'c','d','e','f','g','h','i','j','k','l','m',
                           'n','o','p','q','r','s','t','u','v','w','x','y','z'), sep=",",
           extra = "merge", fill = "right")

one <- get_complete_authors(id, 1, delay = 0.4, initials = TRUE)
