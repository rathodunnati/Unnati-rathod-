# 6. PRACTICAL: Performing paired t-tests using t.test(paired = TRUE)
df <- read.csv("Walmart_Sales.csv")

print("---- 6. Paired t-test ----")

# NOTE:
# Dataset does not naturally contain before/after values
# So we simulate Fuel Price before & after for demonstration

set.seed(123)

df$Fuel_Price_Before <- df$Fuel_Price - runif(nrow(df), min = 0.1, max = 0.5)
df$Fuel_Price_After  <- df$Fuel_Price

# Perform paired t-test
t_test_paired <- t.test(
  df$Fuel_Price_Before,
  df$Fuel_Price_After,
  paired = TRUE
)

print(t_test_paired)