# Orange Tree Growthing Prediction
Wayne Chan  
2017-03-10  



## Overview

This was built for the course Developing Data Products as part of Data Science Specialization in Coursera.

The shiny app developed for this assignment is avalilable at: https://doost.shinyapps.io/shinyapp/

The source codes of ui.R and server.R and also Rpresentation are available on the GitHub repo: https://github.com/emamdoost/Developing_Data_Products


## Methodology

I will use a sample dataset named "Orange" in R datasets to formula a simple linear regression. The model generated from the regression will apply to later function of predition. While a user move the slider bar to select a value of days of orange tree growthing, it will estimate the predicted circumference of orange tree and show in the web page.


## Regression Modeling


```r
summary(lm(circumference~age, Orange))
```

```
## 
## Call:
## lm(formula = circumference ~ age, data = Orange)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -46.310 -14.946  -0.076  19.697  45.111 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 17.399650   8.622660   2.018   0.0518 .  
## age          0.106770   0.008277  12.900 1.93e-14 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 23.74 on 33 degrees of freedom
## Multiple R-squared:  0.8345,	Adjusted R-squared:  0.8295 
## F-statistic: 166.4 on 1 and 33 DF,  p-value: 1.931e-14
```

## Residual Plot of Regression 

![](OrangeTreeGrowthing_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

