source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
# Add New Element to List in for-Loop in R (Example Code) -----------------

list_object <- list(1:7,
                    c("AAA", "Hello", "B"),
                    5,
                    LETTERS[8:4])
list_object                                    # Print example list

for(index in 1:2) {                            # Starting for-loop
  list_object_new <- rep(letters[index], 5)    # Defining new element for list
  list_object[[length(list_object) + 1]] <- list_object_new  # Adding new element to list
}
list_object                                    # Print updated list
# GitHub Copilot use append() function to add new element to list
append(list_object, list(rep("a", 5), rep("b", 5)))

# Other ideas to achieve the same result without using a for-loop?
# I can use the c() function to concatenate the list with the new element.
# I can use the append() function to add the new element to the list.
# I can use the list() function to create a new list with the new element.
# I can use the unlist() function to convert the list to a vector, add the new element, and convert it back to a list.
# I can use the cbind() function to add the new element as a new column to the list.
# I can use the rbind() function to add the new element as a new row to the list.
# I can use the merge() function to add the new element as a new column to the list.
# I can use the merge() function to add the new element as a new row to the list.
# I can use the data.frame() function to add the new element as a new column to the list.
# I can use the data.frame() function to add the new element as a new row to the list.
# I can use the data.table() function to add the new element as a new column to the list.
# I can use the data.table() function to add the new element as a new row to the list.
# I can use the tibble() function to add the new element as a new column to the list.
# I can use the tibble() function to add the new element as a new row to the list.
# I can use the dplyr::bind_cols() function to add the new element as a new column to the list.
# I can use the dplyr::bind_rows() function to add the new element as a new row to the list.
# I can use the dplyr::mutate() function to add the new element as a new column to the list.
# I can use the dplyr::mutate_all() function to add the new element as a new column to the list.
# I can use the dplyr::mutate_at() function to add the new element as a new column to the list.
# I can use the dplyr::mutate_if() function to add the new element as a new column to the list.
# I can use the dplyr::mutate_each() function to add the new element as a new column to the list.


# Summary: This tutorial showed how to add new elements to a list in the R programming language.
