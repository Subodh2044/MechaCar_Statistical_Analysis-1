# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![linear_regression.png](linear_regression.png)
The regression line provides the following equation.
The linear regression vehicle length and ground clearance have a p-value less than 0.05, therefore, provided a non-random amount of variance to the mpg values. The vehicle weight spoiler angle and AWD has a p-value that is greater than 0.05, thus offered a random amount of variance to the mpg values. 
The linear model's slope is non-zero because the intercepts and the linear regression coefficients are non-zero. If the slope is zero, then the values of mpg remain constant. But from the above linear model, mpg values vary as the vehicle weights, vehicle length, spoiler angle ground clearance, and AWD vary. 
However, the linear model does not predict the mpg of MechaCar prototypes effectively. Because the R square value of 0.71 or 71% is not significant enough to provide the confidence in independent variables(Vehicle weight, vehicle length, spoiler angle, AWD, and ground clearance) explaining the variation in the dependent variable(mpg). 75% and above R square would be required to predict mpg effectively. Also, some of the independent variables(vehicle weight, spoiler angle, and AWD) 
contain some level multicollinearity that is affecting the effectiveness of the model. These variables could be eliminated.

## Summary Statistics on Suspension Coils
![total_summary.png](total_summary.png)
![lot_summary.png](lot_summary.png)
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meet this design specification for all manufacturing lots in total as the variance is 62 pounds. However, the design specification for the MechaCar suspension meet the Lot1 and Lot2 as their variance does not exceed 100 pounds per square. But the design specification for Lot3 exceed 100 pounds as it's variance is 170. 
