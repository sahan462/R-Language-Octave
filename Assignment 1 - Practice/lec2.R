#------------------------Arrays------------------------------

arr <- array(c(1:12), dim = c(2,3,2))
print(arr)

column.names <- c('COL1', 'COL2', 'COL3') #make sure to add the correct number of rows and columns
row.names <- c('ROW1', 'ROW2')
matrix.names <- c('MATRIX1', 'MATRIX2')
result <- array(c(1:12), dim = c(2,3,2), dimnames = list(row.names, column.names, matrix.names))
print(result)

#We use the vector index operator [ ] to access specific elements of an array.
#array_name[row_pos, col_pos, mat_level]
arr[1,2,2]

#access all the elements at 2nd column of 1st matrix
cat('\n2nd column Elements of 1st matrix', arr[,c(2),1])

#access all the elements at 1st row of 2nd matrix
cat('\n1st row Elemenys of 2nd matrix', arr[1, ,2]) #just type the row you want without 'c'


#-----------------------------------Factors----------------------------------
#factors are a data type used to represent categorical variables.

colors <- c('Red', 'Blue', 'Green', 'Red', 'Blue', 'Green')
cat(colors)

factor_colors <- factor(colors)
print(factor_colors)

nlevels(factor_colors)


#------------------------------------Exercise 2 - HomeWork---------------------------------

A <- array(month.name)
print(A)

factor_A <- factor(A)
print(factor_A)

nlevels(factor_A)
labels(factor_A)

A[-3] #remove the given index

dim(A) <- c(3,4) #can be used to change the dimensions of the vector
print(A)

U <- list(month = A, num=1:12)
print(A)


#---------------------------------------Data Frames-----------------------------------------

#There are three types of data frames(2 dimensional)

#using inbuilt sets
#using vectors
#using excel sheets

#creation of data frames usign vectors

names <- c('Alice', 'Bob', 'Charlie')
ages <- c(25, 30, 28)
city <- c('New York', 'San Francisco', 'Chicago')
data <- data.frame(Name = names, Age=ages, City=city)
data

is.data.frame(data)
is.list(data)

class(data) #returns the class of an object
typeof(data) #returns the basic data type of an object

length(data)

data() #displays all the data sets available in R

head(data)
tail(data)

colnames(data) == names(data) ##used to retrieve column names
rownames(data) == row.names(data) #used to retriece row names

dimnames(data) #displays the row names and column names in a single command

max(data[c('Age')]) == max(data$Age)
min(data$Age)
sum(data$Age)
length(data$Age) #retrieves the number of columns in the dataframe
mean(data$Age)
median(data$Age)
var(data$Age)#variance
sd(data$Age)
cov = sd(data$Age)/length(data$Age) * 100
print(cov)
summary(data)

rowSums(USArrests) #displays the sum of individual rows in the data set
colSums(USArrests) #displays the sum of individual columns in the data set

rowMeans(USArrests) #displays mean of the individual rows in the data set
colMeans(USArrests) #displays mean of the individual columns in the data set


data[3,] #displays only the third row of the data frame
data[c(1,3,5), ] #displays just the rows 1,3 and 5
data[-5,] #displays all the rows except the 5th row
data[, 2] #displays just the second column

#Extract specific columns
result <- data.frame(data$Name, data$Age)
print(result)
class(result)

#Adding new columns to the given dataset
data$dept <- c("IT", "Operations", "HR")
data


#importing data of differenct types
df <- read.csv(file = "iris.csv", header = TRUE)
df2 <- read.table(file = "color.txt", header = TRUE)


#remove Rows with NA

na.omit(data)

complete.cases(data)
complete_rows <- data[complete.cases(data), ]
print(complete_rows)


#print the number of NA values in rach row
is.na(data)
rowSums(is.na(data))


#-----------------------------------------Exercise 4------------------------------------
data("iris")

#1
class(iris)

#2
# Use sapply to find the class of each column
column_classes <- sapply(iris, class)
print(column_classes)

#3
summary(iris)

#4
head(iris)

#5
colnames(iris)
iris_df = data.frame(iris)
print(iris_df)

#6
row.names(iris_df)

#7
colnames(iris_df)

#8
ncol(iris)
nrow(iris)

#9
last_two_rows = iris_df[(nrow(iris_df)-1): nrow(iris_df),]
print(last_two_rows)

last_two_columns = iris_df[,(ncol(iris_df-1)): ncol(iris_df)]
print(last_two_columns)

#10
# Get rows with Sepal.Width > 3.5 using which()
selected_rows <- which(iris$Sepal.Width > 3.5)

# Display the result
print(iris[selected_rows, ])


#-----------------------------------------Functions-------------------------------
f1 = function(x,c){
  return (x+c)
}
print(f1(12,12))

for(i in 1:5){
  print(i)
}

