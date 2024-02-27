# Assignment Operator

x <- 10
y <- "Hello, R!"
z = 11

# Variables
my_age <- 30
my_name <- "Alice"

# Arithmetic Operators
addition_result <- 5 + 3
subtraction_result <- 10 - 2
multiplication_result <- 4 * 6
division_result <- 20 / 5


# Logical Operators
x <- 5
y <- 10
result1 <- x > 3 & y < 15  # TRUE
result2 <- x > 7 && y < 15  # FALSE

a <- TRUE
b <- FALSE
result3 <- a | b  # TRUE
result4 <- a || b  # TRUE


num1 <- 7
num2 <- 10
result6 <- num1 > num2  # FALSE
result7 <- num1 == num2  # FALSE

# R Data Types

numeric_value <- 3.14
integer_value <- 42
logical_value <- TRUE
complex_value <- 1 + 2i
character_value <- "Hello, world"

# Checking Data Types

x <- 10.5
class(x)  # Returns "numeric"

y <- "Hello, R!"
class(y)  # Returns "character"

num <- 42.5
int_num <- as.integer(num)  # Converts 42.5 to 42

str_num <- "123.45"
numeric_str <- as.numeric(str_num)  # Converts "123.45" to 123.45

str_logical <- "TRUE"
logical_value <- as.logical(str_logical)  # Converts "TRUE" to TRUE

my_logical <- TRUE
numeric_logical <- as.numeric(my_logical)  # Converts TRUE to 1

my_factor <- factor("High")
char_factor <- as.character(my_factor)  # Converts factor to "High"




