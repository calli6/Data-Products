The Affairs App
========================================================
author: Calli6
date: 6/18/2016
autosize: true

========================================================

This shiny app was built for the Data Products class.  The code for the app can be found at <https://github.com/calli6/Data-Products>.  The app can be found at <https://calli6.shinyapps.io/Affairs/>.  


Data
========================================================

The data used in this app is from the AER library in R.  The Affairs dataset contains the following variables:

```
[1] "affairs"       "gender"        "age"           "yearsmarried" 
[5] "children"      "religiousness" "education"     "occupation"   
[9] "rating"       
```

Variables in the Regression Model
========================================================

A regression model was created to predict the number of affairs someone is likely to have had.  All variables were initially used in the regression model but only four variables were significant predictors of affairs. They are age, yearsmarried, religiousness, and rating. Religiousness is a variable on a scale of 1 to 5 with 1 being not very religious and 5 being very religious.  Rating is also a variable on a scale of 1 to 5 that describes how happy you are in your marriage.  1 means you are not happy and 5 means you are extremely happy. 

Regression Model Output
========================================================

```

Call:
lm(formula = affairs ~ age + yearsmarried + religiousness + rating, 
    data = Affairs)

Coefficients:
  (Intercept)            age   yearsmarried  religiousness         rating  
      5.88603       -0.04333        0.15510       -0.48684       -0.70545  
```
