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
## go as it will have 8 different possible outcomes.
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


# Next sub task - assign a prize for symbols
## we could write a series of else/if statements
# if (same) {
#   symbol <- symbols[1]
#   if (symbol == "DD") {
#     prize <- 800
#   } else if (symbol == "7") {
#     prize <- 80
#   } else if (symbol == "BBB") {
#     prize <- 40
#   } else if (symbol == "BB") {
#     prize <- 5
#   } else if (symbol == "B") {
#     prize <- 10
#   } else if (symbol == "C") {
#     prize <- 10
#   } else if (symbol == "0") {
#     prize <- 0
#       }
#     }

# or we could use lookup tables
## create a vector naming each of the elements
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
             "B" = 10, "C" = 10, "0" = 0)
payouts
payouts["DD"]

# to not print the symbols name use unname()
unname(payouts["DD"])

# we can subset payouts with another subseted vector
## this allows us an automated way to calculate
## the prize when symbols contains three of a kind
symbols <- c("7", "7", "7")
payouts[symbols[1]]

# update the code
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- # assign $5
} else {
  # count cherries
  prize <- # calculate a prize
}
# count diamonds
# double the prize if necessary


# case to is when the symbols are all bars
## in this case the price is five dollars
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  # count cherries
  prize <- # calculate a prize
}
# count diamonds
# double the prize if necessary


# exercise - How can you tell which elements of a vector 
## named symbols are a C ? Devise a test and
## try it out
## my attempt
# symbols <- c('7', 'C', '7')
# count <- 0
# for (i in symbols) {
#   if (i == 'C') {
#     print(count)
#     count <- count + 1
# }  else{
#     count <- count + 1
#   }
# }


# how to find how may cherries are in symbols - easier
symbols <- c("C", "DD", "C")
sum(symbols == "C")

# use the same method to count diamonds
sum(symbols == "DD")


# update the code
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- # calculate a prize
}
diamonds <- sum(symbols == "DD")
# double the prize if necessary

cherries <- sum(symbols == "C")
# case 3 - $5 for two cherries, $2 for one cherry
## inefficient method
if (cherries == 2) {
  prize  <- 5
} else if (cherries == 1) {
  prize  <- 2
} else {
  prize  <- 0
}

## more efficient method - again use lookup table
c(0, 2, 5)[cherries + 1]


# update the code
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}
diamonds <- sum(symbols == "DD")
# double the prize if necessary


# exercise - write a method for adjusting prize 
## based on diamonds - my attempt
double <- c(1, 2, 4, 8)
diamonds <- sum(symbols == 'DD')
prize <- prize * double[diamonds + 1]
prize

## easier method
prize * 2 ^ diamonds


# update the code - final version
## identify case
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

## get prize
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}
# adjust for diamonds
diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds


# wrap code in function
score <- function(symbols){
  ## identify case
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")
  
  ## get prize
  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else {
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  # adjust for diamonds
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds
}

# now  the play() function will work
play <- function(){
  
  # step one: generate symbols
  symbols <- get_symbols()
  
  # step two: display the symbols
  print(symbols)
  
  # step three: score the symbols
  score(symbols)
  
}
play()
