values_1 <- c(580000, 450000, 330000, 380000, 280000, 310000)
labels_1 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
pie(values, labels, main="City pie chart", col=rainbow(length(values)))

values_2 <- c(580000, 450000, 330000, 380000, 280000, 310000)
labels_2 <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
piepercent <- round(100*values_2/sum(values_2), 1)
pie(values_2, labels_2 = piepercent, main = "City pie chart", col = rainbow(length(values_2)))
