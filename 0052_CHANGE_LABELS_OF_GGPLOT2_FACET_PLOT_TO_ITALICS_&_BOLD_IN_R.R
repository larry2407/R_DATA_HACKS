source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Labels of ggplot2 Facet Plot to Italics & Bold in R --------------

# In this article, I’ll show how to switch the labels of a ggplot2 facet graphic to bold or italics in the R programming language.

# Setting up the Examples
head(iris)

# Example 1: Change Labels of ggplot2 Facet Plot to Italics
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  facet_wrap(~Species, labeller = label_parsed)

# Example 2: Change Labels of ggplot2 Facet Plot to Bold
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  facet_wrap(~Species, labeller = label_bquote(bold(.(Species))))

# Example 3: Change Labels of ggplot2 Facet Plot to Bold & Italics
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  facet_wrap(~Species, labeller = label_bquote(italic(bold(.(Species)))))

my_plot <- ggplot(iris,        # Draw ggplot2 facet plot
                  aes(x = Petal.Length,
                      y = Petal.Width)) +
  geom_point() +
  facet_wrap(. ~ Species)
my_plot

# Example 1: Changing Labels of ggplot2 Facet Plot to Italics
my_plot +                      # Convert labels to italics
  theme(strip.text = element_text(face = "italic"))

# Example 2: Changing Labels of ggplot2 Facet Plot to Bold
my_plot +                      # Convert labels to bold
  theme(strip.text = element_text(face = "bold"))

# Example 3: Changing Labels of ggplot2 Facet Plot to Bold & Italics
my_plot +                      # Convert labels to bold and italics
  theme(strip.text = element_text(face = "bold.italic"))

# Related Tutorials
# Have a look at the following R programming tutorials. They illustrate topics such as ggplot2, labels, and graphics in R.
# 
# Add Space Between Panels of ggplot2 Facet Plot
# How to Display a ggplot2 Plot when Running a Script
# Switch ggplot2 Facet Plot Labels from Top to Bottom
# Delete Labels in ggplot2 Facet Plot

search_lessons("Space") %>% view()
search_lessons("Display") %>% view()
search_lessons("Switch") %>% view()
search_lessons("Delete") %>% view()


# Summary: This article illustrated how to change the labels of a ggplot2 facet plot to bold or italics in the R programming language. If you have any further questions, please let me know in the comments section.