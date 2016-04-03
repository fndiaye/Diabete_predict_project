Diabete progression prediction project presentation
========================================================
author: Fndiaye
date: 3rd April 2016

Project Presentation
========================================================

This project aims to create an application to predict the progression of the diabete desease.
This presentation contains:

- Presentation of the used data
- Data analysis operation 
- Result of the analysis

Presentation of the used data
========================================================

The data come from the site http://www4.stat.ncsu.edu/~boos/var.select/diabetes.html. They are from Bradley Efron, Trevor Hastie, Iain Johnstone and Robert Tibshirani (2004) "Least Angle Regression," Annals of Statistics (with discussion), 407-499.

In the dataset, we have ten baseline variables, age, sex, body mass index, average blood pressure, and six blood serum measurements were obtained for each of n = 442 diabetes patients, as well as the response of interest, a quantitative measure of disease progression one year after baseline.

In the provided tab delimited file, the variables are named: 
AGE SEX BMI BP S1 S2 S3 S4 S5 S6 Y
whereas, in the R file, they are named:
age sex bmi map tc ldl hdl tch ltg glu y

Data Analysis operation
========================================================
Download of the data and necessary packages

Explore data

```
      AGE             SEX             BMI              BP        
 Min.   :19.00   Min.   :1.000   Min.   :18.00   Min.   : 62.00  
 1st Qu.:38.25   1st Qu.:1.000   1st Qu.:23.20   1st Qu.: 84.00  
 Median :50.00   Median :1.000   Median :25.70   Median : 93.00  
 Mean   :48.52   Mean   :1.468   Mean   :26.38   Mean   : 94.65  
 3rd Qu.:59.00   3rd Qu.:2.000   3rd Qu.:29.27   3rd Qu.:105.00  
 Max.   :79.00   Max.   :2.000   Max.   :42.20   Max.   :133.00  
       S1              S2               S3              S4      
 Min.   : 97.0   Min.   : 41.60   Min.   :22.00   Min.   :2.00  
 1st Qu.:164.2   1st Qu.: 96.05   1st Qu.:40.25   1st Qu.:3.00  
 Median :186.0   Median :113.00   Median :48.00   Median :4.00  
 Mean   :189.1   Mean   :115.44   Mean   :49.79   Mean   :4.07  
 3rd Qu.:209.8   3rd Qu.:134.50   3rd Qu.:57.75   3rd Qu.:5.00  
 Max.   :301.0   Max.   :242.40   Max.   :99.00   Max.   :9.09  
       S5              S6               Y        
 Min.   :3.258   Min.   : 58.00   Min.   : 25.0  
 1st Qu.:4.277   1st Qu.: 83.25   1st Qu.: 87.0  
 Median :4.620   Median : 91.00   Median :140.5  
 Mean   :4.641   Mean   : 91.26   Mean   :152.1  
 3rd Qu.:4.997   3rd Qu.: 98.00   3rd Qu.:211.5  
 Max.   :6.107   Max.   :124.00   Max.   :346.0  
```
Model design for predicting the desease progression (Y variable)


Results of the analysis
========================================================

Application of the model on the values entered by the user of the application. The values are given as examples


```r
test
```

```
  AGE SEX BMI BP  S1  S2 S3 S4 S5 S6
1  30   1  30 80 110 110 50  5  4 92
```

```r
res
```

```
       1 
147.6407 
```
