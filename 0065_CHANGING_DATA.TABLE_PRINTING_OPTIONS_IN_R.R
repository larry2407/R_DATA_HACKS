source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Changing data.table Printing Options in R
# options(datatable.print.topn=5)
# options(datatable.print.nrows=5)
# options(datatable.print.rownames=FALSE)
# options(datatable.print.colnames=TRUE)
# options(datatable.verbose=TRUE)
# options(datatable.print.class=TRUE)
# options(datatable.print.rtable=FALSE)
# options(datatable.print.table.layout="plain")
# options(datatable.print.table="grid")

# In this article, I’ll explain how to change the printing options of data.table in the R programming language.

# Preparing the Examples
# We first install and load the data.table package. If you do not know data.table in R, check its Github page here for more information, especially the getting started page. You can also find information on Gitlab.

install.packages("data.table")                   # Install & load data.table
library("data.table")
# To illustrate the possibilities of printing data.tables, we use the built-in iris dataset.

head(iris)    # show iris data set top 6 rows
# The output of the head() function shows the first six rows of the iris data frame. The iris data frame consists of five columns (Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, and Species) and 150 rows.

# We copy the data as a data.table, called iris_dt.

iris_dt <- data.table(data.table::copy(iris))    # Copy data as data.table
# The iris_dt data.table is created. We can now change the printing options of this data.table.

# Example 1: Displaying the Printing Defaults of data.table
# With 
?print.data.table
# you can see the following output in the help panel in R Studio.
## S3 method for class 'data.table'
# print(x,
#       topn=getOption("datatable.print.topn"),             # default: 5
#       nrows=getOption("datatable.print.nrows"),           # default: 100
#       class=getOption("datatable.print.class"),           # default: TRUE
#       row.names=getOption("datatable.print.rownames"),    # default: TRUE
#       col.names=getOption("datatable.print.colnames"),    # default: "auto"
#       print.keys=getOption("datatable.print.keys"),       # default: TRUE
#       trunc.cols=getOption("datatable.print.trunc.cols"), # default: FALSE
#       show.indices=getOption("datatable.show.indices"),   # default: FALSE
#       quote=FALSE,
#       na.print=NULL,
#       timezone=FALSE, ...)

# It shows the default options used for printing a data.table object. For example, class=FALSE determines that the classes of the columns are not printed.

# Example 2: Printing a data.table in Different Ways
# We first show the default way of printing a data.table.

iris_dt  # Print data.table
# The output of the iris_dt data.table is shown in the RStudio console. The classes of the columns are printed.

# As the default of topn is 5, see the output of ?print.data.table above, only the first and last five data rows are printed. Now, we use function print(), but change the printing argument topn=3 to show only the first and last three data rows.

print(iris_dt, topn = 3)    # Print data.table with topn = 3

# As the default of topn is 5, see the output of ?print.data.table above, only the first and last five data rows are printed. Now, we use function print(), but change the printing argument topn=3 to show only the first and last three data rows.

# To make another example, with quote=TRUE, the output appears in quotes and with row.names=FALSE, the row names are not printed.
print(iris_dt, quote = TRUE, row.names = FALSE)    # Print data.table with quote = TRUE and row.names = FALSE

# Take a look at the documentation found via ?print.data.table to see the meaning of the other options.

# Example 3: Changing the Global Printing Options of data.table
# Instead of setting specific printing options as arguments within print(), we can change the global printing options. As an example, in the following we set datatable.print.class = TRUE and datatable.print.topn = 7.

options(datatable.print.class = TRUE,            # Changing global options for data.table
        datatable.print.topn = 2)

# Now, function print() shows the data.table information with the updated global options.

print(iris_dt) # or simply iris_dt

# The output of the iris_dt data.table is shown in the RStudio console. The classes of the columns are printed and only the first and last two data rows are shown.
# see also: https://data-hacks.com/anna-lena-woelwer