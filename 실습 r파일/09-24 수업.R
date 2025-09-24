train_data = read.csv("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/simple_train_data.csv")
test_data = read.csv("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/simple_train_data.csv")

# 회귀분석 모델
model = lm(upper_arm ~ thigh, data = train_data)

# intercept 값이 상수
summary(model)

saveRDS(model, "C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/regression_model.rds")

loaded_model = readRDS("C:/Users/Galaxy/OneDrive/바탕 화면/eg/머신러닝2/데이터파일/regression_model.rds")

predicted = predict(loaded_model, newdata = test_data)
head(predicted)

ggplot(train_data, aes(x = thigh, y = upper_arm)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "lm", color = "red", se = FALSE) + 
  labs(title = "대퇴부 vs 상박부 회귀분석",
       x = "대퇴부 둘레 (cm)",
       y = "상박부 둘레 (cm)")

results = data.frame(Actual = test_data$upper_arm, Predicted = predicted)

rmse = sqrt(mean((results$Actual - results$Predicted)^2))
print(paste("RMSE", round(rmse,3)))

# 바운더리 값과 rmse 값 비교해보고 판단하기

# 입문적인 데이터를 분석할 땐 이런 방법도 가능함 / 상수가 사라짐
model <- lm(upper_arm ~ 0 + thigh, data = train_data)
summary(model)
