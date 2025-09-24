
df = data.frame( x = c(1, 2, 3, 4, 5),  y = c(6, 8, 5, 9, 7)) 

ggplot(df, aes(x = x, y = y)) +  
  geom_point(color = "blue", size = 3) +  
  geom_line(aes(color = "Connected Points"), size = 0.5) +
  labs(title = "Scatter Plot") +
  xlab("X") +
  ylab("Y")


df = data.frame( x = c(1, 2, 3, 4, 5),  y = c(6, 8, 5, 9, 7)) 
df2 = data.frame( x = c(5,6,7,8,9), y = c(18,12,16,77,63))

ggplot() +
  geom_point(data = df, aes(x=x, y=y), color = "blue", size=3) +
  geom_line(data =df, aes(x=x, y=y, color="Connected Points"), size=0.5) +
  geom_point(data = df2, aes(x = x, y = y), color = "blue", size = 3) +
  geom_line(data = df2, aes(x = x, y = y, color = "Connected Points 2"), size = 0.5) +
  labs(title = "Scatter Plot") +
  xlab("X") +
  ylab("Y")

df = data.frame(values=c(5,7,10,12,14,18,20,22,25,27,30))

ggplot(df, aes(x=values)) +
  geom_boxplot(binwidth = 5, fill = "steelblue", color="white") +
  labs(title="Histogram of Values") +
  xlab("Values") +
  ylabs("Frequency")

df = data.frame(
  group = c(rep("Group 1", 60), rep("Group 2", 60)),
  values = c(rnorm(60, mean = 0, sd = 1), rnorm(60, mean = 2, sd = 1)))

ggplot(df, aes(x=group, y=values)) +
  geom_boxplot(fill = c("lightblue", "lightgreen"), outlier.color = "red") +
  labs(title = "Boxplot Example") +
  xlab("Group") +
  ylab("Values")


data = data.frame(
  Gender = c("Male", "Female", "Male", "Male", "Female", 
            "Female", "Male", "Male", "Female", "Female"),  
  Food = c("국밥", "마라탕","국밥","피자","피자","국밥",
           "국밥","마라탕", "피자", "피자"))

cross_tab = table(data$Gender, data$Food)
cross_tab

chi_square_test_result = chisq.test(cross_tab)
print(chi_square_test_result)

grow = read.csv("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/cafe.csv", stringsAsFactors = TRUE)

anova_result = aov(Satisfaction ~ CoffeeType, data = grow)
summary(anova_result)

tukey_result = glht(anova_result, linfct = mcp(CoffeeType = "Tukey"))
summary(tukey_result)


heights <- c(160, 162, 155, 180, 170, 175, 165, 171, 177, 172)
weights <- c(55, 60, 53, 72, 70, 73, 62, 64, 69, 65)

result_pearson = corr.test(heights, weights, method="pearson")

result_pearson$p
result_pearson$r




