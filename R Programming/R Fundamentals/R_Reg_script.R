

# Load the data
dat <- read_csv("C:/Users/snanga/Downloads/archive/sales_data_sample.csv")

# Scatter plot: Quantity Ordered vs. Sales
plot(dat$QUANTITYORDERED, dat$SALES, main = "Quantity Ordered vs. Sales", xlab = 'Quantity Ordered', ylab = 'Sales')

# Fit your regression model (assuming you already have one)
model <- lm(SALES ~ QUANTITYORDERED, data = dat)
summary(model)
library(car)
# Check for independence using Durbin-Watson test
durbin_test <- durbinWatsonTest(model)
print(durbin_test$p.value)

# Plot residuals vs. fitted values
plot(model$fitted.values, model$residuals, main = "Residuals vs. Fitted Values")

# Histogram of residuals
hist(model$residuals, main = "Histogram of Residuals")

# Q-Q plot of residuals
qqnorm(model$residuals)
qqline(model$residuals)

# Create a scatter plot with the regression line
plot(dat$QUANTITYORDERED, dat$SALES, main = "QUANTITY ORDERED vs. SALES")
abline(model, col = "red")
