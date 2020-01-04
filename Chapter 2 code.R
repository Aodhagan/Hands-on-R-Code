# install ggplot2 package
install.packages("ggplot2")

# loaded the ggplot2 package
library("ggplot2")

x <- c(1, -.8, -.6, -.4, -.2, 0, .2, .4, .6, .8, 1)
y <- x^3

qplot(x, y)

x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)


replicate(3, 1 + 1)

# function that simulates a dice throw
# returns the sum of the two dice
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

rep_roll <- replicate(10, roll())
qplot(rep_roll, binwidth = 1)

rep_roll <- replicate(10000, roll())
qplot(rep_roll, binwidth = 1)

help("sample"
     )

# function that simulates an unfair dice throw
# returns the sum of the two dice
roll_unfair <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(10000, roll_unfair())
qplot(rolls, binwidth = 1)
