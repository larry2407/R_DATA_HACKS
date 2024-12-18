source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Compute Mean Squared Error in R – MSE & RMSE ----------------------------

# In this post, I’ll explain how to calculate the MSE and RMSE in R programming.

# Creation of Example Data
head(iris) # preview the iris data frame

iris_mod <- lm(Sepal.Length ~ ., data = iris)    # Estimating regression model
summary(iris_mod)                               # Summary of regression model

# explain lm(Sepal.Length ~ ., data = iris) function
# The lm() function is used to fit linear models in R. The function takes two main arguments: a formula and a data frame. The formula specifies the model to be fitted, and the data frame specifies the data to be used. In this case, the formula Sepal.Length ~ . specifies that the Sepal.Length variable is the dependent variable, and all other variables in the data frame are independent variables. The data argument specifies the data frame to be used, which is the iris data frame in this case.

# explain summary(iris_mod) function
# The summary() function is used to obtain a summary of the results of a linear regression model in R. The function takes a linear regression model object as its argument and returns a summary of the model. The summary includes information such as the coefficients of the model, the standard errors of the coefficients, the t-values of the coefficients, and the p-values of the coefficients.
# comment each line of the output of summary(iris_mod) function
# The output of the summary() function provides a summary of the linear regression model fitted to the iris data. The output includes the following information:
# - The coefficients of the model, which represent the estimated effect of each independent variable on the dependent variable.
# - The standard errors of the coefficients, which measure the uncertainty in the estimated coefficients.
# - The t-values of the coefficients, which indicate the significance of the estimated coefficients.
# - The p-values of the coefficients, which test the null hypothesis that the coefficient is equal to zero.
# - The residual standard error, which measures the variability of the residuals around the fitted values.
# - The R-squared value, which measures the proportion of variance in the dependent variable that is explained by the independent variables.
# - The F-statistic, which tests the overall significance of the model.
# - The degrees of freedom of the model, which represent the number of observations minus the number of estimated parameters.
# - The number of observations, which is the number of rows in the data frame.
# - The residual degrees of freedom, which represent the number of observations minus the number of estimated parameters minus one.

# Calculation of Mean Squared Error (MSE)
iris_pred <- predict(iris_mod) # Prediction of model
MSE <- mean((iris$Sepal.Length - iris_pred)^2) # Calculation of MSE
MSE # Print MSE

# explain predict(iris_mod) function
# The predict() function is used to make predictions from a linear regression model in R. The function takes a linear regression model object as its first argument and returns the predicted values of the dependent variable based on the independent variables in the model. In this case, the predict() function is used to make predictions of the Sepal.Length variable based on the other variables in the iris data frame.

# explain mean((iris$Sepal.Length - iris_pred)^2) function
# The mean((iris$Sepal.Length - iris_pred)^2) function calculates the mean squared error (MSE) of the linear regression model fitted to the iris data. The function first calculates the squared differences between the observed values of the Sepal.Length variable and the predicted values of the Sepal.Length variable. It then calculates the mean of these squared differences to obtain the MSE.

# Calculation of Root Mean Squared Error (RMSE)
RMSE <- sqrt(MSE) # Calculation of RMSE
RMSE # Print RMSE

# explain sqrt(MSE) function
# The sqrt(MSE) function calculates the root mean squared error (RMSE) of the linear regression model fitted to the iris data. The function takes the mean squared error (MSE) calculated in the previous step and calculates the square root of the MSE to obtain the RMSE.

# Output of the R Script
# The output of the R script shows the mean squared error (MSE) and root mean squared error (RMSE) of the linear regression model fitted to the iris data. The MSE is 0.109 and the RMSE is 0.330, indicating that the model has a relatively low error in predicting the Sepal.Length variable.

# Example 1: Applying mean() Function to Calculate MSE
mean(iris_mod$residuals^2)                       # Mean squared error

# Explain mean(iris_mod$residuals^2) function
# The mean(iris_mod$residuals^2) function calculates the mean squared error (MSE) of the linear regression model fitted to the iris data using the residuals of the model. The residuals are the differences between the observed values of the dependent variable and the predicted values of the dependent variable. The function first squares the residuals and then calculates the mean of the squared residuals to obtain the MSE.

str(iris_mod$residuals) # Check the structure of the residuals
str(iris_mod) # Check the structure of the residuals

# Hence the MSE is 0.109 and the RMSE is 0.330, indicating that the model has a relatively low error in predicting the Sepal.Length variable. The mean squared error (MSE) is calculated as the mean of the squared differences between the observed values of the Sepal.Length variable and the predicted values of the Sepal.Length variable. The root mean squared error (RMSE) is calculated as the square root of the MSE. In this case, the MSE is 0.109 and the RMSE is 0.330, indicating that the model has a relatively low error in predicting the Sepal.Length variable.
sqrt(mean(iris_mod$residuals^2)) # Root mean squared error

# In this tutorial, I have explained how to calculate the mean squared error (MSE) and root mean squared error (RMSE) in R programming. The MSE is a measure of the average squared differences between the observed values and the predicted values of a model. The RMSE is the square root of the MSE and provides a measure of the average differences between the observed values and the predicted values of a model. Both the MSE and RMSE are commonly used metrics to evaluate the performance of regression models in R.

# Further Resources & Related Articles
# Please find some further R programming tutorials on topics such as indices, groups, extracting data, and character strings below.
search_lessons("regression") %>% view()
