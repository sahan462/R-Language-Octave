#pie charts

population_1 <- c(580000, 450000, 330000, 380000, 280000, 310000)
city_1 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
pie(population_1, city_1, main="City pie chart", col=rainbow(length(values)))

population_2 <- c(580000, 450000, 330000, 380000, 280000, 310000)
city_2 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
piepercent <- round(100*values_2/sum(population_2), 1)
pie(population_2, city_2 = piepercent, main = "City pie chart", col = rainbow(length(values_2)))


#bar charts

year <- c(2015, 2016, 2017, 2018, 2019)
yearly_income <- c(1320000, 1500000, 2002000, 1980000, 1520000)
barplot(yearly_income, names.arg=year, xlab="year", ylab="yearly income",col="red",main="Income",border="blue")

weight <- c(14,22,33,45,56,23,12,56,45,34,23,11,17,3,5,23,34,38,54,6,7,24,48,46)
hist(weight, xlab="weight", col="yellow", xlim = c(0,70), ylim = c(0,10), breaks= 10)