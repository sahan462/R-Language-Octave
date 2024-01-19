#----------------------------------------Question 1------------------------------------

#a
df <- datasets::rock #loading the data set
print(df)


#b

#-------------area----------------

boxplot(
  df$area,
  col = "darkblue"
)

mean(df$area)
q = quantile(df$area, probs = c(0.25, 0.75))
Q1 = q[1]
Q3 = q[2]
print(Q1)
print(Q3)

#mean value of the area is 7187.729
#First quantile of the area is 5305.25
#Third quantile of the area is 8869.5 



#-----------------peri---------------------
boxplot(
  df$peri,
  col = "darkblue"
)

mean(df$peri)
q = quantile(df$peri, probs = c(0.25, 0.75))
Q1 = q[1]
Q3 = q[2]
print(Q1)
print(Q3)

#mean value of the peri is 682.212
#First quantile of the peri is 1414.907 
#Third quantile of the peri is 3989.523 

#------------------------shape---------------------
boxplot(
  df$shape,
  col = "darkblue"
)

mean(df$shape)
q = quantile(df$shape, probs = c(0.25, 0.75))
Q1 = q[1]
Q3 = q[2]
print(Q1)
print(Q3)

#mean value of the shape is 0.2181104
#First quantile of the shape is 0.1622618 
#Third quantile of the shape is 0.26267 

#-----------perm-------------------

boxplot(
  df$perm,
  col = "darkblue"
)

mean(df$perm)
q = quantile(df$perm, probs = c(0.25, 0.75))
Q1 = q[1]
Q3 = q[2]
print(Q1)
print(Q3)

#mean value of the perm is 415.45
#First quantile of the perm is 76.45 
#Third quantile of the perm is 777.5 


#c


#d




#--------------------------------------Question 2---------------------------------------

#creation of the dataset
num_customers <- 100

# Customer IDs
customer_ids <- seq(101, 200)

# Gender
gender <- sample(c("Male", "Female"), num_customers, replace = TRUE, prob = c(1, 3))

# Shopping frequency
shopping_frequency <- sample(c("First time", "Once a week", "Once a month"), num_customers, replace = TRUE, prob = c(1, 1, 2))

# Customer satisfaction levels
satisfaction_levels <- sample(c("Positive", "Neutral", "Negative"), num_customers, replace = TRUE)

# Create a data frame
shopping_data <- data.frame(
  CustomerID = customer_ids,
  Gender = gender,
  ShoppingFrequency = shopping_frequency,
  SatisfactionLevel = satisfaction_levels
)


#a
head(shopping_data)
tail(shopping_data)

#b

genderFrequencies <- table(shopping_data$Gender)

maleCount <- genderFrequencies["Male"]
femaleCount <- genderFrequencies["Female"]

genderNames <- c("male", "female")
genderCount <- c(maleCount, femaleCount) 

barplot(
  genderCount,
  names.arg = genderNames,
  xlab = "Gender",
  ylab = "percentage",
  main = "Gender Distribution",
  col = c("blue", "pink")
)

#c

satisfactionFrequencies <- table(shopping_data$SatisfactionLevel)

negativeCount <- satisfactionFrequencies['Negative']
neutralCount <- satisfactionFrequencies['Neutral']
positiveCount <- satisfactionFrequencies['Positive']

satisfactionTypes <- c("Negative", "Neutral", "Positive")
satisfactionCount <- c(negativeCount, neutralCount, positiveCount)

pie(
  satisfactionCount,
  labels = satisfactionTypes,
  col = c("red", "green", "blue")
)
