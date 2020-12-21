# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![linear_regression.png](linear_regression.png)
The regression line provides the following equation.
The linear regression vehicle length and ground clearance have a p-value less than 0.05, therefore, provided a non-random amount of variance to the mpg values. The vehicle weight spoiler angle and AWD has a p-value that is greater than 0.05, thus offered a random amount of variance to the mpg values. 
The linear model's slope is non-zero because the intercepts and the linear regression coefficients are non-zero. If the slope is zero, then the values of mpg remain constant. But from the above linear model, mpg values vary as the vehicle weights, vehicle length, spoiler angle ground clearance, and AWD vary. 
However, the linear model does not predict the mpg of MechaCar prototypes effectively. Because the R square value of 0.71 or 71% is not significant enough to provide the confidence in independent variables(Vehicle weight, vehicle length, spoiler angle, AWD, and ground clearance) explaining the variation in the dependent variable(mpg). 75% and above R square would be required to predict mpg effectively. Also, some of the independent variables(vehicle weight, spoiler angle, and AWD) 
contain some level multicollinearity that is affecting the effectiveness of the model. These variables could be eliminated.
