# doubles
die <- c(1, 2, 3, 4, 5, 6)
typeof(die)
# is.vector() tests if an object is an atomic vector
is.vector(die)

# an atomic vector can have one value
five <- 5
is.vector(five)


# create an integer vector by adding "L"
integer <- c(-1L, 2L, 3L)
typeof(integer)

# floatingpoint errors - should equal zero but does not
sqrt(2)^2-2

# vector with complex numbers
complex <- c(1 + 1i, 1 + 2i, 1 + 3i)

# face names of cards of Royal flush
hand <- c("Ace", "King", "Queen", "Jack", "ten")


# testing for attributes
attributes(die)

# assigning names attribute to a vector
names(die) <- c("one", "two", "three", "four", "five", "six")
die
# change the names attribute of a vector
names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
names(die)
die

# removing names attribute from a vector
names(die) <- NULL
names(die)

# converting a vector to a 2 x 3 array
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
hand1
dim(hand1)

royal_flush <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
royal_flush_matrix <- matrix(royal_flush, 5, 2)
royal_flush_matrix

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


# exercise - knows that multiple types of data are coerced
# into a single data type when creating a vector
card <- c("ace", "heart", 1)
typeof(card)

# coercion occurs when trying to do mathematical operations
# with logical values
sum(c(TRUE, TRUE, FALSE, FALSE, FALSE, TRUE))

# functions for converting data types 
as.character(1)
as.logical(1)
as.numeric(FALSE)


# the "list" object groups together R objects rather than values
list_one <- list(100:130, "R", list(TRUE, FALSE))
list_one

# exercise
list_card <- list("ace", "heart", 1)
list_card


# creating a data frame
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"),
                 value = c(1, 2, 3))
df

typeof(df)
class(df)
str(df)

df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"),
                 value = c(1, 2, 3), stringsAsFactors = FALSE)
str(df)

head(deck)

# saves a copy of the new file
?write.csv
write.csv(deck, file = "cards.CSV", row.names = FALSE)
