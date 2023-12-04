# Create the dataframe
emp_sal <- data.frame(
  Emp_ID = c(11, 12, 13, 14, 15),
  Dep = c("Sales", "HR", "Sales", "HR", "Sales"),
  Basic = c(25450, 22500, 21000, 23500, 15000),
  Allowances = c(5200, 4500, 3100, 2600, 1800)
)

print(emp_sal)

#Store net salary in new column named “net_sal”
emp_sal$net_salary <- emp_sal$Basic + emp_sal$Allowances
print(emp_sal$net_salary)

#Obtain employee IDs of employees whose net salary is above 25000
high_salary_employees <- emp_sal$Emp_ID[emp_sal$net_sal > 25000]
print(high_salary_employees)

#Obtain employee IDs of employees attached to HR Department whose net salary is below 25000
HR_high_salary_employees <- emp_sal$Emp_ID[emp_sal$net_sal > 25000 & emp_sal$Dep == 'HR']
print(HR_high_salary_employees)