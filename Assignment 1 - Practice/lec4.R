#---------------------------Confidence Interval---------------------

library(MASS)
attach(survey)

height <- na.omit(Height)
MOE <- qnorm(0.975) * 9.48 / sqrt(length(height))
MOE

CI <- mean(height) + c(-MOE, MOE)
CI
print(CI)