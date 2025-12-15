# 4. PRACTICAL: Performing one-sample t-tests using t.test()
# ==============================================================================

print("---- 4. One-Sample t-test ----")

# Question:
# Is the average Weekly Sales significantly different from 100000?

t_test_one <- t.test(df$Weekly_Sales, mu = 100000)
print(t_test_one)
