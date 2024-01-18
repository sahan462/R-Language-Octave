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

levels(factor_colors)


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




