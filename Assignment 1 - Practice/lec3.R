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
frequency_table <- table(ranges)
print(frequency_table)

#----------------Histogram-------------------

#hist(v,main,xlab,xlim,ylim,breaks,col,border)

hist(vals)

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