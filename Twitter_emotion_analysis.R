#TWITTER MINING WITH SYUZHET IN R
#Install packages
library(twitteR)
#install.packages("ROAuth")
library(ROAuth)

#Identify your Twitter developer account
consumer_key <- "xxxxxxxxxxxxxxx"
consumer_secret <- "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
access_token <- "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
access_secret <- "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

#Authenticate;
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

library(syuzhet)
#Extract Twitter and measure emotions
YourTweet = searchTwitter('search term', n=1500, lang="en")
search_term = sapply(search_term, function(x) x$getText())
search_term_emo <- get_nrc_sentiment(search_term, cl = NULL, language = "preferred_language")
options(max.print = 10000)
print(search_term_emo)

#Write to CSV
search_term_emo<- write.csv(search_term_emo,"~/Desktop/Path/search_term_emo.csv")
