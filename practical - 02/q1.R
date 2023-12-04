#part 01

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
attr(stu_performance, "average of math") <- mean(stu_performance$math)
attr(stu_performance, "average of read") <- mean(stu_performance$read)
attr(stu_performance, "average of write") <- mean(stu_performance$write)
attributes(stu_performance)

#Find the summary for each mark (math,read and write)
math_sumary = summary(stu_performance$math)
math_sumary

read_sumary = summary(stu_performance$read)
read_sumary

write_sumary = summary(stu_performance$write)
write_sumary

#Find unique values for attributes a.
#a. race
race_unique = unique(stu_performance$race)
race_unique

#b. edu
edu_unique = unique(stu_performance$edu)
edu_unique

#c. lunch
lunch_unique = unique(stu_performance$lunch)
lunch_unique

#d. prep
prep_unique = unique(stu_performance$prep)
prep_unique

#e. gen
gen_unique = unique(stu_performance$gen)
gen_unique

#8. Find average mark for
#a. race
avg_math_by_race <- aggregate(math ~ race, data = stu_performance, FUN = mean)
avg_read_by_race <- aggregate(read ~ race, data = stu_performance, FUN = mean)
avg_write_by_race <- aggregate(write ~ race, data = stu_performance, FUN = mean)

print(avg_math_by_race)
print(avg_read_by_race)
print(avg_write_by_race)

#b. edu
avg_math_by_edu <- aggregate(math ~ edu, data = stu_performance, FUN = mean)
avg_read_by_edu <- aggregate(read ~ edu, data = stu_performance, FUN = mean)
avg_write_by_edu <- aggregate(write ~ edu, data = stu_performance, FUN = mean)

print(avg_math_by_edu)
print(avg_read_by_edu)
print(avg_write_by_edu)

#c. lunch
avg_math_by_lunch <- aggregate(math ~ lunch, data = stu_performance, FUN = mean)
avg_read_by_lunch <- aggregate(read ~ lunch, data = stu_performance, FUN = mean)
avg_write_by_lunch <- aggregate(write ~ lunch, data = stu_performance, FUN = mean)

print(avg_math_by_lunch)
print(avg_read_by_lunch)
print(avg_write_by_lunch)

#d. prep
avg_math_by_prep <- aggregate(math ~ prep, data = stu_performance, FUN = mean)
avg_read_by_prep <- aggregate(read ~ prep, data = stu_performance, FUN = mean)
avg_write_by_prep <- aggregate(write ~ prep, data = stu_performance, FUN = mean)

print(avg_math_by_prep)
print(avg_read_by_prep)
print(avg_write_by_prep)

#e. Gen
avg_math_by_gen <- aggregate(math ~ gen, data = stu_performance, FUN = mean)
avg_read_by_gen <- aggregate(read ~ gen, data = stu_performance, FUN = mean)
avg_write_by_gen <- aggregate(write ~ gen, data = stu_performance, FUN = mean)

print(avg_math_by_gen)
print(avg_read_by_gen)
print(avg_write_by_gen)


#part 02
Melbourne_Housing_Snapshot <- read_csv(file = "E:/22Second Sem/Laboratory 2/R/practical - 02/archive- 2/melb_data.csv")
Melbourne_Housing_Snapshot

#




