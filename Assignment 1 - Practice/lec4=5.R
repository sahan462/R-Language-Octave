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