source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Arithmetic Mean in R (Example) ------------------------------------------

# This page explains how to calculate the arithmetic mean of a numeric data object in the R programming language.

# Example Data
x <- c(6, 6, 8, 5, 3, 9, 1, 7, 5, 2)    # Create example vector
# Example: Application of mean Function in R
mean(x)                                 # Compute mean

# Generalization of Example: Application of mean Function in R
mean(1:10)                              # Compute mean of 1 to 10
mean(1:100)                             # Compute mean of 1 to 100
mean(1:1000)                            # Compute mean of 1 to 1000
# use the trim argument to calculate the trimmed mean
mean(x, trim = 0.1)                     # Compute trimmed mean
mean(x, trim = 0.2)                     # Compute trimmed mean
mean(x, trim = 0.3)                     # Compute trimmed mean
mean(x, trim = 0.4)                     # Compute trimmed mean
mean(x, trim = 0.5)                     # Compute trimmed mean
# what is the trimmed mean?
# The trimmed mean is a measure of central tendency that is calculated by removing a certain percentage of the smallest and largest values from a dataset 
# and then calculating the mean of the remaining values. The trimmed mean is useful when the dataset contains outliers or extreme values that may skew the results of the mean calculation. 
# By removing these values, the trimmed mean provides a more robust estimate of the central tendency of the dataset.

# Summary: This tutorial illustrated how to calculate the arithmetic mean in the R programming language.
search_lessons("mean") %>% view()
search_lessons("geom") %>% view()

# harmonic mean
# The harmonic mean is a type of average, which is calculated by dividing the number of observations by the reciprocal of each observation,
# and then taking the reciprocal of the result. The harmonic mean is useful when dealing with rates or ratios, such as speed or fuel efficiency,
# where the average of the rates is needed. The harmonic mean is always less than or equal to the arithmetic mean, and is less affected by outliers
# than the arithmetic mean. The harmonic mean is calculated as follows:
# H = n / (1/x1 + 1/x2 + ... + 1/xn)
# where H is the harmonic mean, n is the number of observations, and x1, x2, ..., xn are the individual observations.
# The harmonic mean is useful when dealing with rates or ratios, such as speed or fuel efficiency, where the average of the rates is needed.

# geometric mean
# The geometric mean is a type of average, which is calculated by taking the nth root of the product of n observations. The geometric mean is useful
# when dealing with growth rates or ratios, such as compound interest or population growth, where the average of the rates is needed. The geometric mean
# is always less than or equal to the arithmetic mean, and is less affected by outliers than the arithmetic mean. The geometric mean is calculated as follows:
# G = (x1 * x2 * ... * xn)^(1/n)
# where G is the geometric mean, n is the number of observations, and x1, x2, ..., xn are the individual observations.
# The geometric mean is useful when dealing with growth rates or ratios, such as compound interest or population growth, where the average of the rates is needed.

# inequality between the arithmetic mean, geometric mean, and harmonic mean
# The arithmetic mean, geometric mean, and harmonic mean are three types of averages that are commonly used in statistics.
# The arithmetic mean is the most commonly used measure of central tendency, and is calculated by summing the values of a dataset and dividing by the number of observations.
# The geometric mean is used to calculate the average of rates or ratios, and is calculated by taking the nth root of the product of n observations.
# The harmonic mean is used to calculate the average of rates or ratios, and is calculated by dividing the number of observations by the reciprocal of each observation,
# and then taking the reciprocal of the result.
# The AM-GM-HM inequality states that for any set of positive numbers, the arithmetic mean is always greater than or equal to the geometric mean, which is always greater than or equal to the harmonic mean.
# The AM-GM-HM inequality is a powerful tool in mathematics and statistics, and is used in a wide range of applications, including optimization, probability theory, and number theory.