---
title: "R Fundamentals"
author: "Steven Nanga"
date: "2024-02-27"
output: powerpoint_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


## Assignment Operator (<- or =):
- Use the assignment operator to assign values to variables. For example


```{r}
x <- 10
y <- "Hello, R!"
z = 11

```

## Variables:
- Variables store data. You can name them as you like (following rules like starting with a letter or a dot).

```{r}
my_age <- 30
my_name <- "Alice"

```

## Comments: 
- Add comments to explain your code. Comments start with #. They are ignored by R but help others (and your future self) understand your code:

```{r}
# This is a comment
```

## Arithmetic Operators:
- R supports standard arithmetic operations:

```{r}
addition_result <- 5 + 3
subtraction_result <- 10 - 2
multiplication_result <- 4 * 6
division_result <- 20 / 5

```

## Logical Operators:
These operators allow you to perform logical comparisons and combine conditions. Here are the key ones:
  1. **Logical AND (& or &&):**
     - The & operator checks if both conditions are true.
     - The && operator evaluates only the first condition and proceeds to the second condition         only if the first is true
     - Example:
```{r}
x <- 5
y <- 10
result1 <- x > 3 & y < 15  # TRUE
result2 <- x > 7 && y < 15  # FALSE

```

  2. **Logical OR (| or ||):**
     - The | operator checks if at least one condition is true.
     - The || operator evaluates only the first condition and proceeds to the second condition        only if the first is false.
     - Example:
     
```{r}
a <- TRUE
b <- FALSE
result3 <- a | b  # TRUE
result4 <- a || b  # TRUE
```
    
## Comparison Operators
- These operators compare values and return logical results.
- Common comparison operators:
   - \>: Greater than
   - \<: Less than
   - \>=: Greater than or equal to
   - \<=: Less than or equal to
   - \==: Equal to
   - \!=: Not equal to
- Example:

```{r}
num1 <- 7
num2 <- 10
result6 <- num1 > num2  # FALSE
result7 <- num1 == num2  # FALSE

```


## R Data Types

1. **Numeric (Double):**
   - Represents real numbers, including integers and decimals.
```{r}
numeric_value <- 3.14
```
   
2. **Integer:**
   - Represents whole numbers (no decimal part).
   - You can use the L suffix to denote an integer explicitly 
   
```{r}
integer_value <- 42
```
  
3. **Logical (Boolean):**
   - Takes values of TRUE or FALSE.
   - Often used for comparisons and conditional statements.
   
```{r}
logical_value <- TRUE
```

4. **Complex:**
   - Represents complex numbers with both real and imaginary parts.
   - Written as a + bi, where a and b are real numbers.
  
```{r}
complex_value <- 1 + 2i
```
  
5. **Character (String):**
   -Represents text data (words, sentences, etc.).
   -Enclosed in double or single quotes.
   
```{r}
character_value <- "Hello, world"
```
   
## Checking Data Types:
- Use the class() function to determine the data type of a variable:   

```{r}
x <- 10.5
class(x)  # Returns "numeric"

y <- "Hello, R!"
class(y)  # Returns "character"

```

##  Data type conversion in R

Data type conversion allows you to transform one type of data into another. Here are some common scenarios and functions for type conversion:

  1. **Numeric to Integer:**
      - Use as.integer() to convert a numeric value to an integer:
      
```{r}
num <- 42.5
int_num <- as.integer(num)  # Converts 42.5 to 42

```
      
  2. **Character to Numeric:**
      - Use as.numeric() to convert a character (string) to a numeric value:
      
```{r}
str_num <- "123.45"
numeric_str <- as.numeric(str_num)  # Converts "123.45" to 123.45

```

  3. **Character to Logical:**
      - Use as.logical() to convert a character to a logical value (TRUE or FALSE):
      
```{r}
str_logical <- "TRUE"
logical_value <- as.logical(str_logical)  # Converts "TRUE" to TRUE

```
   
  4. **Logical to Numeric:**
      - Logical values can be converted to numeric (0 for FALSE, 1 for TRUE): 
      
```{r}
my_logical <- TRUE
numeric_logical <- as.numeric(my_logical)  # Converts TRUE to 1

```
      
  5. **Factor to Character:**
      - Factors are categorical variables. Convert them to character for text representation:
      
```{r}
my_factor <- factor("High")
char_factor <- as.character(my_factor)  # Converts factor to "High"

```
      
  6. **Date and Time Conversions:**
     - Use functions like as.Date(), as.POSIXct(), or as.POSIXlt() to convert date and time formats.
     
## Data Structures

These structures allow you to organize and store data efficiently within the R programming language. Each data structure serves a specific purpose and has its own characteristics. Here are the key ones:

## Vectors:
- A vector is an ordered collection of basic data types (e.g., numeric, character, logical) of a given length.
- All elements in a vector must be of the same data type (homogeneous).
- Vectors are one-dimensional data structures.
- Example:

```{r}
X <- c(1, 3, 5, 7, 8)  # Numeric vector

```


## Lists
- A list is a generic object consisting of an ordered collection of other objects.
- Lists can be heterogeneous (elements of various types).
- They are also one-dimensional data structures.
- Example:

```{r}
empId <- c(1, 2, 3, 4)
empName <- c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp <- 4
empList <- list(empId, empName, numberOfEmp)

```

## Dataframes:
- Dataframes are widely used for storing tabular data.
- They are two-dimensional, heterogeneous data structures.
- Each column must have the same number of items, and different columns may have different data types.
- Example:

```{r}
Name <- c("Amiya", "Raj", "Asish")
Language <- c("R", "Python", "Java")
Age <- c(22, 25, 45)
df <- data.frame(Name, Language, Age)

```

## Matrices:
- A matrix is a rectangular arrangement of numbers in rows and columns.
- Rows run horizontally, and columns run vertically.
- Matrices are two-dimensional and homogeneous.
- Example:

```{r}
my_matrix <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

```

## Arrays:
- Arrays extend matrices to more dimensions (e.g., three-dimensional arrays).
- They are useful for handling multi-dimensional data.
- Example:

```{r}
my_array <- array(1:24, dim = c(2, 3, 4))

```

## Factors:
- Factors represent categorical data (e.g., levels of a variable).
- They are useful for statistical modeling and plotting.
- Example:

```{r}
my_factor <- factor(c("High", "Medium", "Low"))

```

## If-Else Statements in R
## Basic Syntax
- The if-else statement evaluates a condition and executes different code blocks depending on whether the condition is true or false.
- Basic syntax:


if (condition) {
  # Code to execute if condition is true
} else {
  # Code to execute if condition is false
}



Suppose we want to check if a number is positive or negative: 

```{r}
x <- 5
if (x > 0) {
  print("The number is positive.")
} else {
  print("The number is non-positive.")
}

```

## Nested If-Else:
- You can nest if-else statements to handle multiple conditions:

```{r}
y <- -3
if (y > 0) {
  print("The number is positive.")
} else if (y < 0) {
  print("The number is negative.")
} else {
  print("The number is zero.")
}

```

## Vectorized If-Else:
- You can use vectorized ifelse() for element-wise conditional operations on vectors:

```{r}
my_vector <- c(2, -1, 0, 5)
result_vector <- ifelse(my_vector > 0, "Positive", "Non-positive")

```

## Loops in R
