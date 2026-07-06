# Creating variables
a <- 20
b <- 6

name <- "Mohnish"
status <- TRUE

# Display variables
print(a)
print(b)
print(name)
print(status)

# Arithmetic Operations
cat("Addition =", a + b, "\n")
cat("Subtraction =", a - b, "\n")
cat("Multiplication =", a * b, "\n")
cat("Division =", a / b, "\n")
cat("Modulus =", a %% b, "\n")
cat("Integer Division =", a %/% b, "\n")
cat("Exponent =", a ^ b, "\n")

# Relational Operators
cat("a > b =", a > b, "\n")
cat("a < b =", a < b, "\n")
cat("a >= b =", a >= b, "\n")
cat("a <= b =", a <= b, "\n")
cat("a == b =", a == b, "\n")
cat("a != b =", a != b, "\n")

# Logical Operators
x <- TRUE
y <- FALSE

cat("x & y =", x & y, "\n")
cat("x | y =", x | y, "\n")
cat("!x =", !x, "\n")
cat("!y =", !y, "\n")

# Vector (a sequence of numbers)
Numbers <- c(1, 2, 3, 4, 5)
# List (a collection of different types)
mixed_list <- list(1, "R Programming", TRUE)
# Data Frame (table-like structure)
data <- data.frame(
  Name =  c("Alice", "Alex", "Charlie"),
  Age = c(25, 30, 35),
  Score = c(90, 85, 88)
)
print(Numbers)
print(mixed_list)
print(data)


