# function that generates 3 random symbols from a set
## of symbols
get_symbols <- function(){
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE, 
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}
get_symbols()


# creating the play() using sequential steps
play <- function(){
  
  # step one: generate symbols
  symbols <- get_symbols()
  
  # step two: display the symbols
  print(symbols)
  
  # step three: score the symbols
  score(symbols)
  
}

# outline of the slot machine function
if ( # Case 1: all the same ) {
  prize <- # look up the prize
  } else if ( # Case 2: all bars ) {
    prize <- # assign $5
    } else {
      # count cherries
      prize <- # calculate a prize
    }
# count diamonds
# double the prize if necessary


# outline of the score function
## the argument symbols will be the output of get_symbols()
score <- function(symbols){
  # calculate a prize
  
  prize
}



# we should not write the entire score() function in one
## go as it will have a different possible outcomes.
## if the function does not work it will be more 
## difficult to debug.
## instead write one subtask at a time and test individually
## therefore we create a symbols vector
symbols <- c("7", "7", "7")

# exercise - write the statement as a logical test
symbols[1] == symbols[2] & symbols[2] == symbols[3]
same <- symbols[1] == symbols[2] & symbols[2] == symbols[3]

# exercise - write a Boolean test that will determine
## whether a vector name symbols contains only symbols
## of type 'bar'
symbols <- c("B", "BBB", "BB")

all(symbols %in% c("B", "BB", "BBB"))

bars <- symbols %in% c("B", "BB", "BBB")

# what our slot machine function looks like
if (same) {
  prize <- # look up the prize
  } else if (all(bars)) {
    prize <- # assign $5
    } else {
      # count cherries
      prize <- # calculate a prize
    }
# count diamonds
# double the prize if necessary