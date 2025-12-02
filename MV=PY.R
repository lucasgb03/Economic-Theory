library(readr)
df <- read_csv("Downloads/MV=PY Data - Sheet1.csv")

#Create variables
df$inflation       <- c(NA, diff(log(df$CPI)))
df$money_growth    <- c(NA, diff(log(df$M)))
df$output_growth   <- c(NA, diff(log(df$rGDP)))

df$velocity        <- df$GDP / df$M
df$velocity_growth <- c(NA, diff(log(df$velocity)))
df <- na.omit(df)

#Run regression
fit <- lm(inflation ~ money_growth + output_growth + velocity_growth, data=df)
summary(fit)

#Create plot of predicted vs actual inflation
df$pred <- predict(fit)

plot(df$inflation, type="l", col="black", lwd=2, 
     main="Actual vs Predicted Inflation")
lines(df$pred, col="blue", lwd=2)

legend("topleft", legend=c("Actual","Predicted"),
       col=c("black","blue"), lwd=2)

#Predict this years inflation
predict(fit, newdata = data.frame(
  money_growth    = 0.0348,
  output_growth   = 0.0128,
  velocity_growth = -0.00231
))