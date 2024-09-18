source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Alternative to expand.grid Function without Duplicates in R (Exa --------


# Creation of Example Data
my_vec <- letters[1:4]        # Example values
my_vec

# Example: Non-Redundant Alternative to expand.grid() Function Using combn()
combn(my_vec, 2)              # Unique combinations

expand.grid(my_vec, my_vec)   # Redundant combinations

die <- 1:6                    # Example values
c1 <- combn(die, 3)                 # Unique combinations
e1 <- expand.grid(die, die, die)         # Redundant combinations
str(c1) 
ncol(c1) == choose(length(die), 3)
str(e1)
nrow(e1) == length(die)^3

search_lessons("expand.grid") %>% view()
