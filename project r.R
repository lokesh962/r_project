unzip("C:\\Users\\Mohit\\Downloads\\heart+disease.zip")
#EDA(Exploratory data analysis)
View(heart_data)
dim(heart_data)
load("C:\\Users\\Mohit\\Downloads\\heart+disease.zip")

str(heart_data)
head(heart_data)

data(heart_data)
D<-hist(heart_data$age,
main="Distribution of age",
xlab="Age",
col="lightblue"
)
D
d<-hist(heart_data$chol,
main="Range of cholestrol",
xlab="Cholestrol",
col="lightgreen"
)
d
data(heart_data)
p<-plot(density(heart_data$age),
main="Age",
col="red"
)
p

#Identify Outliers
t<-boxplot(heart_data$age,
main="Boxplot of Age",
col="lightblue"
)
t
a<-boxplot(sex~cp,
data=heart_data,
main="Boxplot of sex by Cp",
col=c("lightblue","lightgreen","lightpink")
)
a


#Relationship between variables
#Scatter plot
m<-plot(heart_data$age,
heart_data$chol,
main="Age vs Cholestrol",
xlab="Age",
ylab="Cholestrol",
col="red",
pch=1
)
m