library(ggplot2)
library(readxl)

business_data = read.csv("./yelp_academic_dataset_business.json.csv")
View(business_data)
ggplot(business_data) + geom_bar(aes(x = stars), fill = "lightblue")

user_data = read.csv("./yelp_academic_dataset_user.json.csv")
View(user_data)
userCluster = kmeans(user_data[, c(4,11)], 4)
ggplot(user_data, aes(average_stars, fans, color = userCluster$cluster)) + geom_point()