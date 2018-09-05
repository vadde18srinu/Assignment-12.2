library(readr)
library(ggplot2)
library(dplyr)


1. Use the given link Data Set.
   Answer the below questions:

  df<-read.table("https://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.data", header = FALSE)
   View(df)
   summary(df)
   str(df)
   nrow(df)
   class(df)
   names(df)
   summary(df)
   str(df)   
  sample_frac(df)    
  
  # Show a random sample
  set.seed(1234)
  dplyr::sample_n(df, 1000)
  
  
     
(a). What are the assumptions of ANOVA, test it out?

   # The  ANOVA lists three assumptions, namely:
     
   1). Independence of cases - this is an assumption of the model that simplifies the statistical analysis.
   2). Normality - the distributions of the residuals are normal.
   3). Equality (or "homogeneity") of variances, called homoscedasticity...  
  
# checking narmality 

hist(residuals(10,df))

plot(df)

boxplot(df)

summary(df)


library(dplyr)


# equality of variance, we test this aussmption using "F-test". 

var(df)

var.test(df$V9, df$V2)

     
(b). Why ANOVA test? Is there any other way to answer the above question?
  
  Ans: 
  Analysis of Variance (ANOVA) is a statistical method used to test differences between two or more means. 
  It may seem odd that the technique is called "Analysis of Variance" rather than "Analysis of Means." 
  As you will see, the name is appropriate because inferences about means are made by analyzing variance.
  
  
  
  
  
  
  