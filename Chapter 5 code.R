



# changing values of an element in a vector
vec <- c(0, 0, 0, 0, 0, 0)
vec[1] <- 1000





# exercise - extract the face column of deck2 and test
# whether each value is equal to "ace"
ace <- deck2[deck2$face == "ace"]
ace
# count how many cards  are equal to  "ace"
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