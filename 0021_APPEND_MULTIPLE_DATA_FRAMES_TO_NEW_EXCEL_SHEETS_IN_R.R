source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
# see ChatGPT R Wizard tutorial on openxlsx2 package
# https://chatgpt.com/share/66eeff64-22f0-800d-a3a1-56a3b21e645b

# Append Multiple Data Frames to New Excel Sheets in R (Example Co --------
# In this tutorial, I’ll show how to export several data frames to new Excel worksheets in R.
# 
# Creation of Example Data
head(iris)
head(mtcars)

str(iris)
str(mtcars)
if(!require(openxlsx2)) install.packages("openxlsx2") # Install & load openxlsx2

# The original xlsx package is no longer maintained. The openxlsx2 package is a fork of the original xlsx package that is actively maintained and updated. It provides a set of functions for reading, writing, and editing Excel files in R.

openxlsx2::write_xlsx(iris,          # Initialize xlsx file & write first data frame
            # "C:/Users/Data Hacks/Desktop/my_directory/data_all.xlsx",
            file.path("xlsx_0021", "iris_1st_mtcars_2nd.xlsx"),
            row.names = FALSE,
            sheetName = "iris")
openxlsx2::write_xlsx(mtcars,        # Append second data frame
            # "C:/Users/Data Hacks/Desktop/my_directory/data_all.xlsx",
            file.path("xlsx_0021", "data_all.xlsx"),
            row.names = FALSE,
            sheetName = "mtcars")
# which package is used to write to Excel files?
# The xlsx package is used to write to Excel files.
# which package does the write.xlsx2() function belong to?
# The write.xlsx2() function belongs to the xlsx package.
# what is the purpose of the append argument in the write.xlsx2() function?
# The append argument in the write.xlsx2() function is used to append data frames to an existing Excel file.
# Is there a way to append multiple data frames to new Excel worksheets in R?
# Yes, you can append multiple data frames to new Excel worksheets in R using the write.xlsx2() function.
# what is the purpose of the sheetName argument in the write.xlsx2() function?
# The sheetName argument in the write.xlsx2() function is used to specify the name of the Excel worksheet.
# what is the purpose of the row.names argument in the write.xlsx2() function?
# The row.names argument in the write.xlsx2() function is used to include or exclude row names in the Excel file.
# Can all this be done with the openxlsx package?
# Yes, all this can be done with the openxlsx package.
# Can all this be done with the writexl package?
# Yes, all this can be done with the writexl package.
# Can all this be done with the readxl package?
# No, the readxl package is used to read Excel files, not write them.
# Can all this be done with the openxlsx2 package?

library(openxlsx2)

# Initialize the workbook and write the first data frame (iris)
wb <- wb_workbook()  # Create a new workbook object
# what sheets are already there?
names(wb)
str(wb)
class(wb)
typeof(wb)
# get the sheets names

wb$add_worksheet(sheet = "iris")  # Add a worksheet named "iris"
wb$add_data(sheet = "iris", x = iris, rowNames = FALSE)  # Add the iris data to the "iris" sheet

# how does openxlsx2 show the current sheets names?
openxlsx2::wb_get_sheet_names(wb)

# Add the mtcars data frame as a second sheet
wb$add_worksheet(sheet = "mtcars")  # Add another worksheet named "mtcars"
wb$add_data(sheet = "mtcars", x = mtcars, rowNames = FALSE)  # Add the mtcars data to the "mtcars" sheet
# Check the sheets in the workbook
openxlsx2::wb_get_sheet_names(wb)

# Save the workbook to the specified file path
wb_save(wb, file = file.path("xlsx_0021", "iris_1st_mtcars_2nd.xlsx"))

# another way to do it is 
library(openxlsx2)

# Create a named list of data frames
df_list <- list("iris" = iris, "mtcars" = mtcars)

# Write the list of data frames to an Excel file with each data frame in a separate sheet
openxlsx2::write_xlsx(df_list, 
                      file = file.path("xlsx_0021", "iris_1st_mtcars_2nd_V2.xlsx"), 
                      row.names = FALSE)

# Summary: This tutorial illustrated how to append multiple data frames to new Excel worksheets in the R programming language.

# Further Resources & Related Articles
# Have a look at the following R programming tutorials. They illustrate topics such as missing data, indices, and merging:
#   
# Merge Rows of Data Frames with Unequal Column Names
# Merging Unequal Data Frames & Replacing NA with Zero
# Combining Data Frames Based On Two Variables
# Merge Data Frames with Different Column Names
search_lessons("Merge") %>% view()
search_lessons("Combining") %>% view()
search_lessons("Merging") %>% view()
search_lessons("Data Frames") %>% view()
