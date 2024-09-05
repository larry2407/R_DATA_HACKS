
# Add New Column to Data Frame in for-Loop in R (Example Code) ------------

head(iris) # preview the iris data frame

for(index in 1:3) {                                        # Running for-loop
  add_col <- paste0("index", index, "_row", 1:nrow(iris))  # Creating new variable
  iris[ , ncol(iris) + 1] <- add_col                       # Appending new variable to data
}
iris <- iris[ , -(6:8)]                                        # Removing last 3 columns
# GitHub Copilot use transform() function to add new column to data frame
transform(iris, new_col = paste0("index", 1:3, "_row", 1:nrow(iris)))
