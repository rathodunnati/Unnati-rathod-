df <- read.csv("Walmart_Sales.csv")

# PRE-PROCESSING: Create a grouping variable
# Classify Holiday vs Non-Holiday weeks
df$Holiday_Group <- ifelse(df$Holiday_Flag == 1, "Holiday", "Non-Holiday")

# 1. PRACTICAL: Generating descriptive statistics using summary() or describe()

print("---- 1. Descriptive Statistics ----")

# A. Using base R summary()
print("Summary of Weekly Sales:")
summary(df$Weekly_Sales)

# B. Using psych::describe()
print("Detailed Description of Temperature:")
describe(df$Temperature)