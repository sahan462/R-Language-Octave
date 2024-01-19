#---------------------------Linear Regression-----------------------
# data
Age <- c(43, 21, 25, 42, 57, 59)
Glucose_Level <- c(99, 65, 79, 75, 87, 81)

# Create a data frame
data <- data.frame(Age, Glucose_Level)

# Perform linear regression
linear_model <- lm(Glucose_Level ~ Age, data)

# Display the regression summary
summary(linear_model)

# Extract coefficients
intercept <- coef(linear_model)[1]
slope <- coef(linear_model)[2]

# Print the linear regression equation
cat("Linear Regression Equation: Glucose_Level =", intercept, "+", slope, "* Age\n")

# Predict glucose level at age 32
new_data <- data.frame(Age = 32)
predicted_glucose <- predict(linear_model, newdata = new_data)
print(predicted_glucose)

#---------------------Plot Linear Regression---------------------------

# Scatter plot of the data
plot(data$Age, data$Glucose_Level, main = "Linear Regression", 
     xlab = "Ages", ylab = "Glucose Levels")

# Add the regression line to the plot
abline(linear_model, col = "red")


