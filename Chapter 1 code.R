roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  print(dice)
  sum(dice)
}

printy <- function() {
  
  word <- "nice"
  print("hello world")
  print(word)

}
