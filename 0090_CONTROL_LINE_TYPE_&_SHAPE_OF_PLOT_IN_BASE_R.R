source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Control Line Type & Shape of Plot in Base R -----------------------------

# This tutorial shows how to modify the lines types in a plot in the R programming language.

# Exemplifying Data
x <- 1:10                                                         # Examplifying data
y1 <- 1:10
y2 <- y1 + 1
y3 <- y1 + 2
y4 <- y1 + 3
y5 <- y1 + 4
y6 <- y1 + 5
plot(x, y1, type = "l")  

# Plot with Different Line Types
# Example: Create Plot with Different Line Types
plot(x, y1, type = "l", lty = "solid", lwd = 3, ylim = c(1, 15))  # Multiple line types in same graph
lines(x, y2, type = "l", lty = "dashed", lwd = 3, col = 2)
lines(x, y3, type = "l", lty = "dotted", lwd = 3, col = 3)
lines(x, y4, type = "l", lty = "dotdash", lwd = 3, col = 4)
lines(x, y5, type = "l", lty = "longdash", lwd = 3, col = 5)
lines(x, y6, type = "l", lty = "twodash", lwd = 3, col = 6)
legend("topleft",
       c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash"),
       col = 1:6,
       lty = 1:6,
       lwd = 3)

# same with ggplot2
library(ggplot2)
my_data <- data.frame(x = x, y1 = y1, y2 = y2, y3 = y3, y4 = y4, y5 = y5, y6 = y6)
my_ggplot <- ggplot(my_data, aes(x)) +
  geom_line(aes(y = y1), linetype = "solid", size = 1) +
  geom_line(aes(y = y2), linetype = "dashed", size = 1) +
  geom_line(aes(y = y3), linetype = "dotted", size = 1) +
  geom_line(aes(y = y4), linetype = "dotdash", size = 1) +
  geom_line(aes(y = y5), linetype = "longdash", size = 1) +
  geom_line(aes(y = y6), linetype = "twodash", size = 1)

my_ggplot

# Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
# ℹ Please use `linewidth` instead.

# The previous R code created a plot with different line types in the R programming language. The plot is shown in Figure 1. As you can see, the plot contains multiple lines with different line types. If you have any further questions, please let me know in the comments section.

# Figure 1: Plot with Different Line Types in R.

# Summary: This tutorial showed how to modify the line types in a plot in the R programming language. If you have any further questions, please let me know in the comments section.

my_ggplot2 <- ggplot(my_data, aes(x)) +
  geom_line(aes(y = y1), linetype = "solid", linewidth = 1) +
  geom_line(aes(y = y2), linetype = "dashed", linewidth = 1) +
  geom_line(aes(y = y3), linetype = "dotted", linewidth = 1) +
  geom_line(aes(y = y4), linetype = "dotdash", linewidth = 1) +
  geom_line(aes(y = y5), linetype = "longdash", linewidth = 1) +
  geom_line(aes(y = y6), linetype = "twodash", linewidth = 1)
my_ggplot

search_lessons("Modify") %>% view()