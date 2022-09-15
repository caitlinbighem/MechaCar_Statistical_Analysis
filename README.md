# MechaCar_Statistical_Analysis
Click here to view the R-script: [MechaCarChallenge.RScript](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

## Project Overview
The purpose of this project is to analyze metrics that could affect the manufacturing a prototype of a new car and generate a comparison of performance across multiple manufacturer lots. These metrics include vehicle length, weight, spoiler angle, ground clearance, AWD capabilities, MPG, and PSI.

## Linear Regression to Predict MPG
![Linear Regression](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Regression%20to%20Predict%20MPG.PNG)

3 Key Deductions:
* Variance of a non-random variable is usually 0. Given this conclusion; the intercept, vehicle length, and ground clearance coefficients can be said to provide a non-random amount of variance to the mpg values. 
* At a significance level of 0.05, the initial null hypothesis can be rejected due to the exceedingly small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if the null hypothesis is rejected, we can state that the alternative (β1 ≠ 0) is true. Therefore, confirming that the slope is not 0.
* A number of R-squared increases as more variables are passed through the regression. However, tweaked R-squared controls against this increase, and adds penalties for the number of predictors in the model, consequently making it a more accurate predictor of how effective the linear model is. An amended R-square of 0.6825 concludes that this linear model foresees the MPG of MechaCar prototypes fairly well.


## Summary Statistics on Suspension Coils
![Total Summary](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Total%20Summary.PNG)
![Lot Summary](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%20Summary.PNG")

The complete variance for the full dataset indicates that the current manufacturing data does indeed meet the 100 pounds per square inch variance limitation. Although, when the data was separated into three lots, the third lot demonstrates a much higher variance. Due to the fact that these lots were randomly generated, there is a possibility that a third of the lot does not meet the necessary suspension coils requirement.


## T-Test on Suspension Coils
### T-Test on Entire Lot
![All Lots](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/All%20Lots.PNG)

At a significance level of 0.05, we cannot reject the null hypothesis because the p-value equals 0.06. As a result, we are unable to reject the fact that the mean of the sample could be comparable to the true population mean. Another aspect to take note of is the small confidence interval. Although a smaller confidence interval indicates that there is a slim chance of procuring an observation within that interval, it provides greater accuracy than a wider interval.

### T-Test on Three Smaller Lots
![Lot 1](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%201.PNG)
</p>

#### Lot 1
At a significance level of 0.05, we fail to reject the null hypothesis since the p-value equals 1. An curious connection between p-value and confidence intervals: while the p-values increases, the confidence interval decreases, this suggesting a more precise prediction of the true population mean.

![Lot 2](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%202.PNG)

#### Lot 2
At a significance level of 0.05, we fail to reject the null hypothesis again because the p-value equals 0.6072. The second lot also has a comparatively small confidence interval.

![Lot 3](https://github.com/caitlinbighem/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%203.PNG)

#### Lot 3
At a significance level of 0.05, we can reject the null hypothesis due to the fact that the p-value equals 0.04168. The mean of this sample is also drastically smaller in comparison to the first two lots. Notably, in contrast to the original two lots, the confidence interval for the third lot does not include the predicted population mean.


## Study Design: MechaCar vs. Competition
To determine MechaCar’s quality as it compares to its competition, we would suggest another statistical study of linear regression on both city and highway fuel efficiency. This will be of significant benefit, specifically with gas prices currently soaring, not to mention that fuel efficiency is a significant factor customers research when buying a new car. Possible metrics include: 

* City fuel efficiency – dependent variable
* Highway fuel efficiency – dependent variable
* Horse power – independent variable
* Vehicle weight – independent variable
* AWD capabilities – independent variable
* MPG – independent variable
While we have data concerning MPG, AWD and vehicle weight, an additional collection would need to gather data attributed to fuel efficiency and horse power.
