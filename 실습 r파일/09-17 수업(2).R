train_data <- read.csv("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/simple_train_data.csv")

ggplot(train_data, aes(x = thigh, y = upper_arm)) +
  geom_point(alpha = 0.7) +
  labs(title = "대퇴부 vs 상박부 산점도",
       x = "대퇴부 둘레(thigh, cm)",
       y = "상박부 둘레 (upper_arm, cm)") +
  theme_minimal()

# lm(종속변수 ~ 독립변수, 불러온 데이터)
model <- lm(upper_arm ~ thigh, data = train_data)
summary(model)

#모델에 대한 각각의 잔차
residuals(model)

# 잔차 -> 최소, 최대 값을 봄
# intercept는 상수, 그 아래는 독립변수

# -------------------------------------------------------------------------

train_data2 <- read.csv("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/simple_train_2.csv")

ggplot(train_data2, aes(x = thigh, y = upper_arm)) +
  geom_point(alpha = 0.7) +
  labs(title = "대퇴부 vs 상박부 산점도",
       x = "대퇴부 둘레(thigh, cm)",
       y = "상박부 둘레 (upper_arm, cm)") +
  theme_minimal()

model <- lm(upper_arm ~ thigh, data = train_data2)
summary(model)

residuals(model)

# r-squared 값 비교