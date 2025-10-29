#importing the dataset
dataset = read.csv("polynom_data.csv")
attach(dataset)

#plot the data
plot(x,y, main ="Polynomial Regression Example",pch = 19)

#fit a quadratic PR
polynom_model = lm(y~poly(x,2,raw=TRUE))

#view the model summary
summary(polynom_model)

#create a data for prediction
x_new = seq(min(x),max(x),length.out = 100)
x_new
#new = data.frame(x_new)
y_pred = predict(polynom_model,newdata=data.frame(x=x_new))
y_pred
pred