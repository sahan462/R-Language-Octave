#----------------------Explanatory and Response variables-------------------------

#Explanatory Variable(Independant Variable)
#Response Variable(Dependant Variable)

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

#---------------------Adding Categorical Variables to ScatterPlots-----------------------




#-------------------find correlation coefficient and interpret r--------------------

x <- c(50, 51, 52, 53, 54)
y <- c(3.1, 3.2, 3.3, 3.4, 3.5)
correlation_coefficient <- cor(x,y)
print(correlation_coefficient)