#read data into a variable
library(readr)
stu_performance <- read_csv(file = "E:/22Second Sem/Laboratory 2/R/practical - 02/archive/Student Performance new.csv")
stu_performance

# assigning new names to the columns of the data frame 
colnames(stu_performance) <- c('id','race','edu', 'lunch', 'prep', 'math', 'read', 'write', 'gen') 
stu_performance

#Change the math, read and write variables to whole number (Multiply by 100)
stu_performance[c('math')] <- stu_performance[c('math')] * 100
stu_performance[c('read')] <- stu_performance[c('read')] * 100
stu_performance[c('write')] <- stu_performance[c('write')] * 100
stu_performance

#Create a new attribute average (average of math,read and write)
attributes(stu_performance)
