# doubles
die <- c(1, 2, 3, 4, 5, 6)
typeof(die)

# integers
integer <- c(-1L, 2L, 3L)
typeof(integer)

# floatingpoint errors - should equal zero but does not
sqrt(2)^2-2

# face names of cards of Royal flush
hand <- c("ace", "King", "Queen", "Jack", "ten")

# testing for attributes
attributes(die)

# assigning names attribute to a vector
names(die) <- c("one", "two", "three", "four", "five", "six")

names(die)
die

# removing names attribute from a vector
names(die) <- NULL
names(die)

# converting a vector to an array
dim(die) <- c(2,3)
dim
die

# create a matrix
m <- matrix(die, nrow = 2)
m

# create a matrix by row
m <- matrix(die, nrow = 2, byrow = T)
m

# create an array
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar            

# create matrix of royal flush
hand1 <-  c("ace", "King", "Queen", "Jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, ncol = 2)
mhand
dim(hand1)


# creating object with class matrix by changing dimension 
die
dim(die) <- c(2,3)
typeof(die)
class(die)

# representing dates and times
now <- Sys.time()
typeof(now)
class(now)
unclass(now)

# using the POSIXct class
bil <- 1000200000
bil

class(bil) <- c("POSIXct", 'POSIXt')
bil

# creating a factor
gender <- factor(c('male', 'female', 'female', 'male'))
typeof(gender)
attributes(gender)
gender

# convert a factor to a character string
as.character(gender)
typeof(gender)
class(gender)

