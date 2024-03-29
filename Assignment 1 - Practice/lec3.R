#-----------------------------------Descriptive Statistics------------------------------

#Descriptive Statistics are methods of organizing, summarizing, and presenting 
#data in a convenient and informative way.

#Graphical Techniques
#Numerical Techiniques

#----------------------------------------Bar Charts------------------------------------

programme <- c("Accounting", "Financial Planning", "Management Studies", "Industrial Realations", "Marketing")
programme

students <- c(200, 250, 275, 150, 290)
students

bar <- cbind(programme, students)
print(bar)

barplot(
  students,
  xlab = "Programme",
  ylab = "Students",
  names.arg = programme,
  cex.names = 0.6
)

#homework

fruits <- c("Mango", "Orange", "Apple")
Student_Preference <- c(20, 30, 10)

barplot(
  Student_Preference,
  xlab = "fruits",
  ylab = "Student_Preference",
  names.arg = fruits,
  main = "Student's Info"
)

#----------------------------Pie Charts------------------------------

#pie(x,labels, radius, main, col, clockwise)

#x - numeric values
#labels - used to give descriptions to the slices
#radius - radius of the graph
#col - indicates the color palette
#main - title of the graph

x <- c(30,20,15,35)
x
labels <- c("Category 1", "Category 2", "Category 3", "Category 4")
labels

pie(x, labels = labels, radius = 1, main="My Pie Chart", col = rainbow(length(x)), clockwise = TRUE)


#------------------------Summarizing Qualitative Data------------------------

#stem and leaf display
#Frequency Tables
#Histogram
#Box Plot
#Scatter Diagrams


#----------------stem and leaf--------------
vals <- c(109, 148, 175, 148, 116, 175, 112, 159, 158, 169, 136, 133, 143, 169, 165, 106, 154, 105, 153, 175)
stem(vals)

#------------------Frequency Table-----------
ranges <- cut(vals, breaks = c(101, 111, 121,131,141,151,161))
print(ranges)

frequency_table <- table(ranges)
print((frequency_table[1]))

#----------------Histogram-------------------

#hist(v,main,xlab,xlim,ylim,breaks,col,border)

hist(vals)

# Set of weights
weights <- c(14, 22, 33, 45, 56, 23, 12, 56, 45, 34, 23, 11, 17, 3, 5, 23, 34, 38, 54, 6, 7, 24, 48, 46)

# Create a histogram
hist(weights, 
     main = "Histogram of Parcel Weights",
     xlab = "Weight",
     ylab = "Frequency",
     xlim = c(0, 70),
     ylim = c(0, 10),
     col = "yellow",
     breaks = seq(0, 70,  5),
     width = 5)


#v is a vector containing numeric values used in histogram
#main indicates title of the chart
#xlab is used to give description of x axis
#xlim is used to specify the range of values on the x axis
#ylim is used to specify the range of values on the y axis
#breaks is used to mention the width of each bar
#col is used to set color of the bars
#border is used to set border color of each bar

#----------------BoxPlot------------------------

boxplot(vals)


data <- c(12, 15, 18, 20, 22, 25, 27, 30, 35, 100)

#calculating quartiles and IQR
q <- quantile(data, probs = c(.025, .075))
q

Q1 <- q[1]
Q3 <- q[2]

IQR_Value <- IQR(data)
print(IQR_Value)

#calculating lower and upper bounds for outliers
lower_bound <- Q1 - 1.5 * IQR_Value
upper_bound <- Q3 + 1.5 * IQR_Value
 
#identifying outliers
Outliers <- data[data < lower_bound | data > upper_bound]
print(Outliers)



# Example data for multiple groups
group1 <- c(15, 20, 22, 25, 30)
group2 <- c(35, 40, 45, 50, 55)

# Combine data into a list
data_list <- list(Group1 = group1, Group2 = group2)

# Draw a boxplot for multiple groups
boxplot(data_list, main = "Boxplot Example", ylab = "Values", col = c("lightblue", "lightgreen"))






data <- c(15, 20, 22, 25, 30, 35, 40, 45, 50)


# Create a boxplot with additional statistics
boxplot(data, main = "Boxplot with Summary Statistics", ylab = "Values",
        notch = TRUE, col = "lightblue", border = "black",
        names = c("Group1"), # Change group name if needed
        boxwex = 0.6, # Adjust width of the boxes
        outline = FALSE, # Do not plot outliers separately
        stats = c("median", "quartiles", "range")) # Specify statistics to display


#------------------Scatter Plots-----------------------

study_hours <- c(14, 42, 10, 32, 5, 10, 25, 18)
study_hours

gpa <- c(2.91, 3.98, 2.22, 3.81, 1.0, 1.82, 2.79, 2.48)
plot(
  study_hours,
  gpa,
  xlab = "No of Hours Studied Per Week",
  ylab = "GPA",
  main = "Scatterplot Example",
  col = "darkblue",
  pch = 16
)


#-------------------------------Exercise 1--------------------------------

ex1_data <- c( sample(1:100, 100, replace = TRUE))
print(ex1_data)

mean(ex1_data)
median(ex1_data)
mode(ex1_data)
percentile_90 = quantile(ex1_data, 0.9)
range(ex1_data)
IQR(ex1_data)
var(ex1_data)
sd(ex1_data)
cov = (sd(ex1_data)/length(ex1_data)) * 100
print(cov)
round(cov,2)