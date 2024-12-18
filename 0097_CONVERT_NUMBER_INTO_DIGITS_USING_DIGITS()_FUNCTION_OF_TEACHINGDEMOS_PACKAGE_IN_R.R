source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Number into Digits Using digits() Function of TeachingDemos Package in R --------

# Load TeachingDemos package
if(!require("TeachingDemos")) install.packages("TeachingDemos")
library("TeachingDemos")

# Convert number into digits
number <- 12345
result <- digits(number)
result
str(result)

# Convert number into digits with leading zeros
# FALSE → digits(number, leading.zeros = TRUE) # unused argument (leading.zeros = TRUE)
digits(number, n = 1, simplify = TRUE) # n from right to left
 # In this article you’ll learn how to convert numbers into single digits in R.

# Example Data
my_numb <- 563588744 # Create example number
my_numb
# [1] 563588744
# Example: Split Number into Digits Using digits() Function of TeachingDemos Package
my_digits <- digits(my_numb) # Apply digits function
my_digits

args(digits)

x <- 2407
n <- 3
x %/% 10^seq(n,0) %% 10

# Summary: This article showed how to convert a number into digits using the digits() function of the TeachingDemos package in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources & Related Tutorials
# Please find some related R tutorials in the following list:
search_lessons("number") %>% view()

# open the help on the package TeachingDemos
# ?TeachingDemos
# open the help on the function digits
# ?digits

