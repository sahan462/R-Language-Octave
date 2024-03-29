#Removing objects from the current R session
rm(list = ls())

#get and set working directory
getwd()
setwd()

#LETTERS
#● The 26 upper-case letters of the roman alphabet
LETTERS

#letters
#● 26 lower case letters of the roman alphabet
letters

#month.abb
#● The three letter abbreviations for english months names
month.abb

#month.name
#● The english names for months of the year
month.name

#Imaginary Numbers
sqrt(-1)
sqrt(-1 + 0i)

#Trigonometric functions
sin()
cos()
tan()

#logarithms
log(5)
log10(5)
exp

#vectors

#seq() creates a sequence of 
#equidistant numbers
#● > seq(from=1, to=50, by=7)
v1 <- seq(1, 50, 7)
v1

length(v1)

#Sometimes it’s necessary to have 
#repeated values, for which we use 
#rep()
v2 <- rep("A", 4)
print(v2)

c(1,2,3) + c(4,5,6)
c(1,2,3)*2

#indexing vectors
v3 <- c("A", "B", "C", "D")
v3

v3[2:4]
v3[c(1:2, 4)]

#Matrices
m <- 1:10
print(m)

dim(m) <- c(2,5)
m

#Another way is to bind columns or rows using cbind() and rbind().

#Matrices are created usually in column manner
#if you need it in row manner, you have to byrow = TRUE

x <- matrix(1:12, nrow=3, byrow = TRUE)
print(x)

lst <- list(name="sahan", wife="404 not found", children=0)
print(lst$name)
