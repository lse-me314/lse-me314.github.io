## Code for API examples from Day 11, Social Media
rm(list = ls())

## ########################
## Libraries
## ########################

library(quanteda)
library(twitteR)

## ########################
## Twitter
## ########################

## data for authentication
## get your keys at apps.twitter.com

key <- "XXXXXXX"
cons_secret <- "XXXXXXX"
token <- "XXXXXXX"
access_secret <- "XXXXXXX"

# Authorize the Twitter access
setup_twitter_oauth(key, cons_secret, token, access_secret)

# downloading 500 most recent tweets for an account
tw <- userTimeline("realDonaldTrump", n = 500, includeRts = TRUE)
twDf <- twListToDF(tw)

# Create corpus object
twCorpus <- corpus(twDf, text_field = "text")

# How many of Trump's last 500 tweets were retweets?
table(twCorpus[["isRetweet"]], useNA = "ifany")

## Create DFM object
twDfm <- dfm(twCorpus,  remove = c("amp", "rt", "https", "t.co", stopwords("en"),"#*", "@*","t.co"), remove_symbols = T, remove_punct = T)

textplot_wordcloud(twDfm, min_countrandom_order = 5, random.order = FALSE)

kwic(twCorpus,"great")

## Analyze just hashtags
twDfmHT <- dfm(twCorpus, select = c("#*"))
textplot_wordcloud(twDfmHT, min_count = 2)

## analyze just usernames
twDfmUN <- dfm(twCorpus, select = c("@*"))
textplot_wordcloud(twDfmUN, min.freq = 1, random.order = FALSE)


## Analyse metadata
twTrump <- getUser("realDonaldTrump")

# How many followers does Trump have?
twTrump$followersCount

# How many people does Trump follow?
twTrump$friendsCount

# Who does Trump follow?
trumpFollows <- twTrump$getFriends()
as.character(unlist(lapply(trumpFollows, function(x) x$name)))

# Why does Trump follow Piers Morgan?
piersTw <- userTimeline("piersmorgan", n = 200, includeRts = F)
piersTwDf <- twListToDF(piersTw)
piersTwCorpus <- corpus(piersTwDf$text, docvars = piersTwDf[, -which(names(piersTwDf)=="text")])
kwic(piersTwCorpus, "trump")


## #########################
## Searching using REST API
## #########################

searchTweets <- searchTwitter("brexit", n = 500, since = "2018-01-01")
searchTweetsDf <- twListToDF(searchTweets)
searchTweetsCorpus <- corpus(searchTweetsDf, text_field = "text")

searchTweetsDfm <- dfm(searchTweetsCorpus, remove = c("amp", "rt", "https", "t.co", "will", stopwords("en")), remove_punct = T, remove_symbols = T)

topfeatures(searchTweetsDfm, 30)
topfeatures(dfm_select(searchTweetsDfm, "#*"), 30)

