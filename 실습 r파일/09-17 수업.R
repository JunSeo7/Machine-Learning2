x = c(0.0, 0.3, 0.7, 1.0, 1.4, 1.7, 2.1, 2.4, 2.8, 3.1, 3.4, 3.8, 4.1)
y = c(2.9, 3.5, 2.3, 2.8, 3.2, 4.6, 4.3, 3.4, 4.0, 3.7, 3.1, 3.3, 3.2)

xs = mean(x)
ys = mean(y)

sumx = sum(x)
sumy = sum(y)

b1 = ((sumx-xs)*(sumy-ys)) / (sumx-xs)^2
b1

x1 = c(0.0, 0.3, 0.7, 1.0, 1.4, 1.7, 2.1, 2.4, 2.8, 3.1, 3.4, 3.8, 4.1)
y1 = c(2.9, 4.0, 3.2, 4.2, 5.0, 6.9, 6.9, 6.5, 7.6, 7.8, 7.5, 8.2, 8.6)

mean_x1 = mean(x1)
mean_y1 = mean(y1)

sum_x1 = sum(x1)
sum_y1 = sum(y1)

b2 = ((sum_x1-mean_x1)*(sum_y1-mean_y1)) / (sum_x1-mean_x1)^2
b2

b0 = xs - b1*ys
b0

b0_1 = mean_x1 - b2*mean_y1
b0_1


