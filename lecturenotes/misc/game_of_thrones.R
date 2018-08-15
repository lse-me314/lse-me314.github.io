library(rvest)

## Read in HTML data
game_of_thrones <- read_html("http://www.imdb.com/title/tt0944947/fullcredits?ref_=tt_ql_1")

## Find all the actors on the page
actors <- html_nodes(game_of_thrones, "td[class = 'primary_photo']") # Find actor entries
actor_names <- html_nodes(actors, "img") # Names are stored within the <img> tag
actor_names <- html_attr(actor_names, "alt") # Names are stored as the "alt" attribute

# Find all actors' pages on imdb
actors_urls <- html_nodes(actors, "a") # Urls are stored within the <a> tag
actors_urls <- html_attr(actors_urls, "href") # Urls are stored as the "href" attribute
actors_urls <- paste0("http://www.imdb.com", actors_urls) # Append the beginning of the URL

## Find all the characters on the page
characters <- html_nodes(game_of_thrones, 'td[class="character"]') # Find the character entries
characters <- html_node(characters, "a") # Character names are stored within the <a> tag
characters <- html_text(characters) # Character names are the text associated with the tag
head(characters)

## Find the number of episodes in which each actor appeared
episodes <- html_nodes(game_of_thrones, 'td[class="character"]') # Find the n episode entries
episodes <- html_text(episodes) # Episodes are a part of a bunch of text associated with this tag
episode_start <- regexpr("episode", episodes) # Find the beginning of the word "episodes"
episodes <- substring(episodes, episode_start-3, episode_start-1) # Subset the string to the number of episodes
episodes <- gsub("\\(","", episodes) # Remove parentheses
episodes <- gsub(" ","",episodes) # Remove white space
episodes <- as.numeric(episodes) # Convert to numeric

got_data <- data.frame(actor_names, characters, episodes, actors_urls, stringsAsFactors = F)

head(got_data)

barplot(table(got_data$episodes), xlab = "Number of episodes", ylab = "Frequency")


## What is the gender distribution in Game of Thrones?

# Example for first character in list

tyrion <- read_html(got_data$actors_urls[1])
tyrion_gender <- html_node(tyrion, "div[id='name-job-categories']") %>% html_node("a")
tyrion_gender <- html_text(tyrion_gender)

## Loop over all characters (I have commented this out as it takes a few hours!)
#got_data$actor_gender <- NA

#for(i in 1:dim(got_data)[1]){
#   Sys.sleep(1)
#   cat(".")
#   tmp_actor_page <- read_html(got_data$actors_urls[i])
#   tmp_actor_gender <- html_node(tmp_actor_page, "div[id='name-job-categories']") %>% html_node("a")
#   tmp_actor_gender <- html_text(tmp_actor_gender)
  
#   got_data$actor_gender[i] <- tolower(gsub("\\n| ","",tmp_actor_gender))
#   print(got_data$actor_gender[i])
# }

#save(got_data, file = "got_data.Rdata")
load("got_data.Rdata")
head(got_data)
got_data <- got_data[got_data$actor_gender %in% c("actor", "actress"),]

prop.table(table(got_data$actor_gender))
aggregate(got_data$episodes, by = list(got_data$actor_gender), FUN = mean)
summary(lm(episodes ~ actor_gender, got_data))
