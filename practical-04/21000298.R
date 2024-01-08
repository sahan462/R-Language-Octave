population_1 <- c(580000, 450000, 330000, 380000, 280000, 310000)
city_1 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
pie(population_1, city_1, main="City pie chart", col=rainbow(length(values)))

population_2 <- c(580000, 450000, 330000, 380000, 280000, 310000)
city_2 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
piepercent <- round(100*values_2/sum(population_2), 1)
pie(population_2, city_2 = piepercent, main = "City pie chart", col = rainbow(length(values_2)))
