values <- c(580000, 450000, 330000, 380000, 280000, 310000)
labels <- c("colombo", "Kandy", "Galle", "Anuradhapura", "Trincomalee", "Jaffna")
pie(values, labels, main="City pie chart", col=rainbow(length(values)))
