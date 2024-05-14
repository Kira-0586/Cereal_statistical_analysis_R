getwd()
setwd("C:\\Users\\Kira\\Downloads\\data analyst\\course 8\\Module_1\\Completed
      _projects\\Cereal-Statistical-Analysis-main")


#
cereal_data<-read.csv("cereal_data.csv")

#
length(unique(cereal_data$name))

#mfr data
table(cereal_data$mfr)

#type data
table(cereal_data$type)

#calorie data
summary(cereal_data$calories)

#protein data
summary(cereal_data$protein)

#fat data
summary(cereal_data$fat)

#sodium data
summary(cereal_data$sodium)

#fiber data
summary(cereal_data$fiber)

#carbo data
summary(cereal_data$carbo)

#sugars data
summary(cereal_data$sugars)

#potass data
summary(cereal_data$potass)

#vitamins data
summary(cereal_data$vitamins)

#shelf data
summary(cereal_data$shelf)

#weight data
summary(cereal_data$weight)

#cups data
summary(cereal_data$cups)

#rating data
summary(cereal_data$rating)


##Graphing--------------------------------

#Barplot of "mfr"
barplot(table(cereal_data$mfr), main = "Distribution of Cereals by Manufacturer"
        , xlab = "Manufacturer", col = "sky blue")
        

#Histogram of "Calories"
hist(cereal_data$calories, main = "Distribution of Calories", xlab = "Calories",
     col = "green")

#Histogram of "Protein"
hist(cereal_data$protein, main = "Distribution of Protein", xlab = "Protein (grams)", col = "pink")


#Change the Data Type of Fat from Character to Numeric
class(cereal_data$fat)
cereal_data$fat<- as.numeric(cereal_data$fat)
class(cereal_data$fat)


#Histogram of "Fats"
hist(cereal_data$fat, main = "Distribution of Fat", xlab = "Fat (grams)",
     col = "blue")


#Change the Data Type of Sodium from Character to Numeric
class(cereal_data$sodium)
cereal_data$sodium<- as.numeric(cereal_data$sodium)
class(cereal_data$sodium)

#Histogram of "Sodium"
hist(cereal_data$sodium, main = "Distribution of Sodium", xlab = "Sodium (miligrams)",
     col = "orange")


#Change the Data Type of Fiber from Character to Numeric
class(cereal_data$fiber)
cereal_data$fiber<- as.numeric(cereal_data$fiber)
class(cereal_data$fiber)

#Histogram of "Fiber"
hist(cereal_data$fiber, main = "Distribution of Fiber", xlab = "Fiber (grams)",
     col = "skyblue")


#Change the Data Type of Carbo from Character to Numeric
class(cereal_data$carbo)
cereal_data$carbo<- as.numeric(cereal_data$carbo)
class(cereal_data$carbo)

#Histogram of "Carbo"
hist(cereal_data$carbo, main = "Distribution of Carbohydrates", xlab = "Carbohydrates (grams)",
     col = "green")


#Change the Data Type of Sugars from Character to Numeric
class(cereal_data$sugars)
cereal_data$sugars<- as.numeric(cereal_data$sugars)
class(cereal_data$sugars)


#Histogram of "Sugars"
hist(cereal_data$sugars, main = "Distribution of Sugars", xlab = "Sugars (grams)",
     col = "pink")


#Change the Data Type of Potass from Character to Numeric
class(cereal_data$potass)
cereal_data$potass<- as.numeric(cereal_data$potass)
class(cereal_data$potass)


#Histogram of "Potass"
hist(cereal_data$potass, main = "Distribution of Potassium", xlab = "Potassium (miligrams)",
     col = "blue")

#Barplot for "Weight"
barplot(table(cereal_data$weight), main = "Distribution of Weight"
        , xlab = "Weight per Serving (ounces)", col = "green")


#Change the Data Type of Cups from Character to Numeric
class(cereal_data$cups)
cereal_data$cups<- as.numeric(cereal_data$cups)
class(cereal_data$cups)


#Histogram of "Cups"
hist(cereal_data$cups, main = "Distribution of Cups", xlab = "Cups per Serving",
     col = "pink")


#Change the Data Type of Rating from Character to Numeric
class(cereal_data$rating)
cereal_data$rating<- as.numeric(cereal_data$rating)
class(cereal_data$rating)


#Histogram of "Rating"
hist(cereal_data$rating, main = "Distribution of Ratings", xlab = "Rating",
     col = "orange")


#Barplot for "Vitamins"
barplot(table(cereal_data$vitamins), main = "Distribution of Vitamins"
        , xlab = "Vitamins percentage per Serving (percent)", col = "orange")


#Barplot for "Shelf"
barplot(table(cereal_data$shelf), main = "Distribution of Shelf"
        , xlab = "Shelf number(1,2,3, counting from floor)", col = "skyblue")





#Converting the data type of "Vitamins", "Shelf", "Weight", "Rating"
cereal_data$vitamins<- as.numeric(cereal_data$vitamins)
class(cereal_data$vitamins)

cereal_data$shelf<- as.numeric(cereal_data$shelf)
class(cereal_data$shelf)

cereal_data$weight<- as.numeric(cereal_data$weight)
class(cereal_data$weight)

cereal_data$rating<- as.numeric(cereal_data$rating)
class(cereal_data$rating)


##Scaterplot of all Numeric Variables
pairs(cereal_data[,4:13], cex.axis= 1.5)


##Getting all the Variables of Interest
variable_of_interest<- cbind(cereal_data$fat, cereal_data$protein,
                             cereal_data$carbo, cereal_data$sugars)

##Boxplot of Variables of Interest
boxplot(variable_of_interest,
        main = "Boxplot for Nutritional Content in Cereal",
        names =c("Fat", "Protein", "Carbo", "Sugars"),
        ylab = "Grams",
        col =c("Red","Blue","Green","Purple"))


##Sort Calories Data
sorted_cereal_data<- cereal_data[order(cereal_data$calories, decreasing = TRUE),]

#Top 5 highest calories and bottom 5 lowest calories content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Calories Barplot
barplot(sorted_cereal_data$calories, col = "skyblue", main = "Sorted Cereal by Calories",
        ylab= "Cereals", xlab= "Calories", horiz= TRUE)


##Sort Carbo Data
sorted_cereal_data<- cereal_data[order(cereal_data$carbo, decreasing = TRUE),]

#Top 5 highest complex carbohydrates and bottom 5 lowest complex carbohydrates content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Cabohydrates Barplot
barplot(sorted_cereal_data$carbo, col = "skyblue", main = "Sorted Cereal by Complex Carbohydtrates",
        ylab= "Cereals", xlab= "Complex Cabohydrates", horiz= TRUE)



##Sort Sugar Data
sorted_cereal_data<- cereal_data[order(cereal_data$sugars, decreasing = TRUE),]

#Top 5 highest Sugar and bottom 5 lowest Sugar content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Sugar Barplot
barplot(sorted_cereal_data$sugars, col = "skyblue", main = "Sorted Cereal by Sugar",
        ylab= "Cereals", xlab= "Sugar", horiz= TRUE)


##Sort Fat Data
sorted_cereal_data<- cereal_data[order(cereal_data$fat, decreasing = TRUE),]

#Top 5 highest Fat and bottom 5 lowest Fat content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Fats Barplot
barplot(sorted_cereal_data$fat, col = "skyblue", main = "Sorted Cereal by Fats",
        ylab= "Cereals", xlab= "Fats", horiz= TRUE)


##Sort Potass Data
sorted_cereal_data<- cereal_data[order(cereal_data$potass, decreasing = TRUE),]

#Top 5 highest Potassium and bottom 5 lowest Potassium content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Potass Barplot
barplot(sorted_cereal_data$potass, col = "skyblue", main = "Sorted Cereal by Potassium",
        ylab= "Cereals", xlab= "Potassium", horiz= TRUE)


##Sort Fiber Data
sorted_cereal_data<- cereal_data[order(cereal_data$fiber, decreasing = TRUE),]

#Top 5 highest Fiber and bottom 5 lowest Fiber content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Fiber Barplot
barplot(sorted_cereal_data$fiber, col = "skyblue", main = "Sorted Cereal by Fiber",
        ylab= "Cereals", xlab= "Fiber", horiz= TRUE)


##Sort Sodium Data
sorted_cereal_data<- cereal_data[order(cereal_data$sodium, decreasing = TRUE),]

#Top 5 highest Sodium and bottom 5 lowest Sodium content in Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Sodium Barplot
barplot(sorted_cereal_data$sodium, col = "skyblue", main = "Sorted Cereal by Sodium",
        ylab= "Cereals", xlab= "Sodium", horiz= TRUE)


##Sort Rating Data
sorted_cereal_data<- cereal_data[order(cereal_data$rating, decreasing = TRUE),]

#Top 5 highest Rated and bottom 5 lowest Rated Cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#Sorted Rating Barplot
barplot(sorted_cereal_data$rating, col = "skyblue", main = "Sorted Cereal by Rating",
        ylab= "Cereals", xlab= "Ratings", horiz= TRUE)

##Nutritional Facts about higest rated and lowest rated

#sort rating
sorted_cereal_data<- cereal_data[order(cereal_data$rating, decreasing = TRUE),]

#Top 30 cereals and Bottom 30 cereal by Rating
top30 <- head(sorted_cereal_data, 30)
last30 <- tail(sorted_cereal_data, 30)

#Summary of last 30 Statistics
summary(last30[,c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")])


#Summary of top 30 Statistics
summary(top30[,c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")])

##Boxplot of Top 30 and Last 30 Cereal
boxplot(top30[,c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")], main ="Highest Rated Cereal", las=2)
boxplot(last30[,c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")], main ="Lowest Rated Cereal", las=2)


##Manufacturer with their Average Nutritional Content and Average Rating

aggregate(. ~ mfr, data = cereal_data[, c("mfr", "calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass", "rating")], mean)


##Shelf Number with their Average Nutritional Content and Average Rating

aggregate(. ~ shelf, data = cereal_data[, c("shelf", "calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass", "rating")], mean)


##Manufacturers on which shelf witha barplot to indicate each manufacturer

table(cereal_data$mfr, cereal_data$shelf)
manufacturer_table<- table(cereal_data$mfr, cereal_data$shelf)
barplot(manufacturer_table, beside = TRUE, col = rainbow(nrow(manufacturer_table)), legend = rownames(manufacturer_table), main = "Manufacturers Distribution of Shelfs", xlab = "Shelf", ylab = "count")


##Research Question

#1.Do cereals from Different Shelves have Significant different mean Sodium Content?

#Method- Analysis of Variance (ANOVA)

#Models the data from Sodium to each Shelf
anova_model <- aov(sodium ~ shelf, data = cereal_data)

#Residuals vs Fitted model
plot(anova_model, 1)

#qq plot
plot(anova_model, 2)

#Summary Statistics of the Test
summary(anova_model)


#2. Is there Linear Relationship Between amount of Potassium in cereal and their overall Fiber?

#Models the data from fiber to potassium
lm_model<- lm(fiber ~ potass, data = cereal_data)

#Scatterplot
scatterplot(cereal_data$fiber, cereal_data$potass)

#Residuals vs Fitted model
plot(lm_model, 1)

#qq Plot
plot(lm_model, 2)

#Summary Statistics of the Test
summary(lm_model)


#3. Are there significant differences in calories amoung cereals from different shelves?
#Method ANOVA

#Models the data from calories to each shelves
anova_model_calories <- aov(calories ~ shelf, data = cereal_data)

#Residuals vs Fitted model
plot(anova_model_calories, 1)

#qq plot
plot(anova_model_calories, 2)

#Summary Statistics of the test
summary(anova_model_calories)


#4. Is the mean sugar of lowest 30 cereal significantly different from the mean sugar of top 30 Cereals?
#Method: Independent Samples t-test

#Sort the Ceral Data
sorted_cereal_data <- cereal_data[order(cereal_data$rating, decreasing = TRUE), ]

#top 30 and bottom 30 by Rating
top30 <- head(sorted_cereal_data, 30)
last30 <- tail(sorted_cereal_data, 30)

#qq plot for top30
qqnorm(top30$sugars)
qqline(top30$sugars)

#qq plot for last30
qqnorm(last30$sugars)
qqline(last30$sugars)

#t-test for sugar
t_test_sugar <- t.test(top30$sugars, last30$sugars)
t_test_sugar


#5. Is the mean Rating of the Shelf 1 cereal is significantly diffrent from mean rating of the shelf 3 cerals?
#Method: Independent samples t-test

#Shelf 1 and Shelf 3
shelf1 <- cereal_data$rating[cereal_data$shelf == 1] 
shelf3 <- cereal_data$rating[cereal_data$shelf == 3]

#qq plot for shelf 1
qqnorm(shelf1)
qqline(shelf1)

#qq plot for shelf 3
qqnorm(shelf3)
qqline(shelf3)

#t-test
t_test_rating <- t.test(shelf1, shelf3)
t_test_rating


#6. Is there a linear realationship between amount of sugar in cereals and their calories content?
#Method: Simple linear Regression

#Models the data from calories and sugars
lm_models_sugar_calories <- lm(calories ~ sugars, data = cereal_data)

#scatterplot
plot(cereal_data$sugars, cereal_data$calories)

#Residuals vs Fitted Models
plot(lm_models_sugar_calories, 1)

#qq plot
plot(lm_models_sugar_calories, 2)

#Summary Statistics of the test
summary(lm_models_sugar_calories)
