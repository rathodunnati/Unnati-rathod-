library(dplyr)
library(tidyr)

df <- read.csv("Walmart_Sales.csv", na.strings = c("", "NA")) %>%
  mutate(SaleID = dplyr::row_number()) %>%
  select(SaleID, Store, Weekly_Sales, Temperature)

print("--- 1. Original Wide Data ---")
print(head(df))

long_df <- df %>%
  pivot_longer(
    cols = c(Weekly_Sales, Temperature),
    names_to = "Metric",
    values_to = "Value"
  )

print("--- 2. Long Format (pivot_longer) ---")
print(head(long_df, 6))

wide_df <- long_df %>%
  pivot_wider(
    names_from = Metric,
    values_from = Value
  )

print("--- 3. Wide Format (Back to Original) ---")
print(head(wide_df))

df_clean <- df %>%
  mutate(Store = ifelse(is.na(Store), "Unknown", Store))

category_pivot <- df_clean %>%
  select(SaleID, Store, Weekly_Sales) %>%
  pivot_wider(
    names_from = Store,
    values_from = Weekly_Sales
  )

print("--- 4. Store Pivot (Spreading Stores) ---")
print(head(category_pivot))
