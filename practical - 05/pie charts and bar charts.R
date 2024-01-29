Type <- c("Comedy", "Action", "Romance", "Drama", "SiFi")
noOfLikes <- c(40, 50, 60, 10, 30)
percentages <- round((noOfLikes/sum(noOfLikes))*100)
print(percentages)

pie(
  noOfLikes,
  labels = Type,
  col = rainbow(length(Type)),
  main = "Favourite Type of Movie",
  radius = 1
)

pie(
  noOfLikes,
  labels = percentages,
  col = rainbow(length(Type)),
  main = "Favourite Type of Movie",
  radius = 1
)

barplot(
  height = noOfLikes,
  names.arg = Type,
  xlab = "Movie Type",
  ylab = "No of Likes",
  col = "red",
  border = "yellow",
  main = "Favourite Type of Movie"
)
