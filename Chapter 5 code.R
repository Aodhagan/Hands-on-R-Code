# load the data deck from website
rm(list = ls())

## partition the URL to make it more readable
url_remote <- "https://gist.githubusercontent.com/"
path_github <- "garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/"
filename <- "deck.csv"

## assign full URL to variable file_path
file_path <- paste0(url_remote, path_github, filename)

## read in the file from website
library(data.table)
deck <- fread(file_path, header = TRUE)
deck2 <- deck[1:52, ]


# changing values of an element in a vector
vec <- c(0, 0, 0, 0, 0, 0)
vec[1] <- 1000

# change multiple values in vector
vec[c(1, 3, 4)] <- c(1, 1, 1)
vec

# add value to a vector
vec[7] <- 3
vec

# add a new variable to dataframe
deck2$new <- 1:52
names(deck2)
# remove variable from dataframe
deck2$new <- NULL
names(deck2)

# to select all aces in the deck unshuffled
deck2[c(13, 26, 39, 52), 3]

# to select all aces in the deck shuffled
deck2[deck2$face == 'ace']

# how to assign new values to aces
deck2$value[deck2$face == 'ace'] <- 0
head(deck2, 13)

################# logical subsetting ###################
# subsetting using logical values
vec <- c(1, 2, 3)
vec[c(FALSE, FALSE, TRUE)]

# %in% operator
1 %in% 


# exercise - extract the face column of deck2 and test
## whether each value is equal to "ace"
ace <- deck2$face == "ace"
ace
## count how many cards  are equal to  "ace"
sum(ace)


# deck for hearts - every card has a value of zero
deck4 <- deck
deck4$value <- 0
head(deck4, 13)

# except cards in the suit of hearts and the Queen of spades
# which is worth 13
deck4$value[deck4$suit == "hearts"] <- 1
deck4

deck4$value[deck4$suit == "hearts" & deck4$face == "queen"] <- 13
deck4


# exercise - Boolean tests
## is w positive
w <- c(-1, 0, 1)
w > 0
## is x greater than 10 and less than 20
x <- c(5, 15)
x > 10 & x < 20
## is object y the word "Febuary"
y <- "february"
y == "february"
## is every value in z a day of the week
z <- c("Monday", "Tuesday", "Friday")
days.of.week <- weekdays(x=as.Date(seq(7), origin="1950-01-01"))
z == days.of.week 

