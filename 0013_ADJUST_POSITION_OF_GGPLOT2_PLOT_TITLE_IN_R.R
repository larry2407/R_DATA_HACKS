source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Adjust Position of ggplot2 Plot Title in R (Example) --------------------

my_data <- data.frame(x = 1:10,                                  # Example data
                      y = 1:10)

my_ggplot <- ggplot(my_data, aes(x, y)) +                        # ggplot2 with title
  geom_point(aes(x, y)) +
  ggtitle("THIS IS MY TITLE")
my_ggplot                                                        # Print plot

## Adjust position of ggplot2 plot title
my_ggplot + theme(plot.title = element_text(hjust = 0.5))        # Center title
# ggplot2 Plot with Centered Title
# my_ggplot + theme(plot.title = element_text(hjust = 0.5))        # Centered title 

# ggplot2 Plot with Title on the Right Side
my_ggplot + theme(plot.title = element_text(hjust = 1))          # Right-handed title

# ggplot2 Plot with Title within the Plot Area
my_ggplot + theme(plot.title = element_text(vjust = - 10))       # Vertically adjusted title

## ggplot2 Plot with Title on the Left Side
my_ggplot + theme(plot.title = element_text(hjust = 0))          ## Left-handed title hjust = 0 is the default value


