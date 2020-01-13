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


# exercise
deal <- function(){
  deck[1, ]
}

## R will be able to find 'deck' and obtain an answer
deal()

# create a new deck
DECK <- deck

# delete the first row
deck <- deck[-1, ]
head(deck, 3)

# add this code to the function deal() - doesn't work
deal <- function(){
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}

# assign deck to global environment using assign()
deal <- function(){
  card <- deck[1, ]
  assign('deck', deck[-1, ], envir = globalenv())
  card
}


# shuffle function
shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}
# shuffle does not shuffle the deck object
## it returns a shuffled 'copy' of the deck
head(deck, 3)

# exercise - rewrite shuffle so it replaces a copy of deck
## that lives in the global environment
shuffle <- function(){
  random <- sample(1:52, size = 52)
  assign('deck', DECK[random, ], envir = globalenv())
}

# store deck in a runtime environment rather than global environment
setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
}

# variables deck, DECK are now stored in runtime environment
## but are hard to access and use
## we can fix this by allowing setup() return DEAL, SHUFFLE
## so they can be used in the global environment 
setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}
cards <- setup(deck)
# each of the elements in this list can be saved to a 
## dedicated object in the global environment

deal <- cards$deal
shuffle <- cards$shuffle

# deal and shuffle are created in a runtime environment
## but now can be run in the global environment
## just as before
deal
shuffle


# deal and shuffle Still update the 'deck' object in the
## global environment. We want them to work exclusively with the objects
## in the parent (enclosing) environment
## we can have each function reference the parent environment
## in the setup() function
setup <- function(deck){
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment())
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}

cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle


# we can now delete the global copy of deck
## the protected copy of deck will be used from the
## runtime environment of setup()
rm(deck)

shuffle()

deal()
