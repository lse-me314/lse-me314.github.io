#################################
# code block #1

# Helper packages
library(dplyr)       # for data wrangling
library(ggplot2)     # for awesome plotting

# Modeling packages
library(rpart)       # direct engine for decision tree application
library(caret)       # meta engine for decision tree application

# Model interpretability packages
library(rpart.plot)  # for plotting decision trees
library(vip)         # for feature importance
library(pdp)         # for feature effects


#################################
# code block #2

ames_dt1 <- rpart(
  formula = Sale_Price ~ .,
  data    = ames_train,
  method  = "anova"
)


#################################
# code block #3

ames_dt1
## n= 2054 
## 
## node), split, n, deviance, yval
##       * denotes terminal node
## 
##  1) root 2054 12814010000000 180075.80  
##    2) Overall_Qual=Very_Poor,Poor,Fair,Below_Average,Average,Above_Average,Good 1721  4143289000000 156268.80  
##      4) Neighborhood=North_Ames,Old_Town,Edwards,Sawyer,Mitchell,Brookside,Iowa_DOT_and_Rail_Road,South_and_West_of_Iowa_State_University,Meadow_Village,Briardale,Northpark_Villa,Blueste,Landmark 1039  1312109000000 131833.50  
##        8) Overall_Qual=Very_Poor,Poor,Fair,Below_Average 188   159887200000  96590.14 *
##        9) Overall_Qual=Average,Above_Average,Good 851   867121100000 139619.40  
##         18) First_Flr_SF< 1150.5 585   328437100000 129475.70 *
##         19) First_Flr_SF>=1150.5 266   346113800000 161927.70 *
##      5) Neighborhood=College_Creek,Somerset,Northridge_Heights,Gilbert,Northwest_Ames,Sawyer_West,Crawford,Timberland,Northridge,Stone_Brook,Clear_Creek,Bloomington_Heights,Veenker,Green_Hills 682  1265696000000 193495.10  
##       10) Gr_Liv_Area< 1717.5 463   481627200000 176808.50  
##         20) Total_Bsmt_SF< 1312 333   200919700000 166160.10 *
##         21) Total_Bsmt_SF>=1312 130   146229100000 204084.90 *
##       11) Gr_Liv_Area>=1717.5 219   382597500000 228773.10 *
##    3) Overall_Qual=Very_Good,Excellent,Very_Excellent 333  2654216000000 303114.00  
##      6) Overall_Qual=Very_Good 239   718060400000 270942.60  
##       12) Gr_Liv_Area< 1916.5 141   265789500000 244999.00 *
##       13) Gr_Liv_Area>=1916.5 98   220824300000 308269.60 *
##      7) Overall_Qual=Excellent,Very_Excellent 94  1059850000000 384911.70  
##       14) Gr_Liv_Area< 1948.5 41    62874680000 328724.70 *
##       15) Gr_Liv_Area>=1948.5 53   767409000000 428377.10  
##         30) Neighborhood=College_Creek,Edwards,Timberland,Veenker 9   133510600000 297788.90 *
##         31) Neighborhood=Old_Town,Somerset,Northridge_Heights,Northridge,Stone_Brook 44   449025400000 455088.30  
##           62) Total_Bsmt_SF< 2325 37   191041700000 429253.80 *
##           63) Total_Bsmt_SF>=2325 7   102760700000 591642.00 *


#################################
# code block #4

rpart.plot(ames_dt1)


#################################
# code block #5

plotcp(ames_dt1)


#################################
# code block #6

ames_dt2 <- rpart(
    formula = Sale_Price ~ .,
    data    = ames_train,
    method  = "anova", 
    control = list(cp = 0, xval = 10)
)

plotcp(ames_dt2)
abline(v = 12, lty = "dashed")


#################################
# code block #7

# rpart cross validation results
ames_dt1$cptable
##            CP nsplit rel error    xerror       xstd
## 1  0.46952540      0 1.0000000 1.0013737 0.06065292
## 2  0.12216969      1 0.5304746 0.5320497 0.03211224
## 3  0.06838658      2 0.4083049 0.4104053 0.03102241
## 4  0.03133069      3 0.3399183 0.3439781 0.02213469
## 5  0.02224916      4 0.3085876 0.3132198 0.02164601
## 6  0.01806201      5 0.2863385 0.3053021 0.02357822
## 7  0.01791524      6 0.2682765 0.3085728 0.02384897
## 8  0.01502810      7 0.2503612 0.2990906 0.02347804
## 9  0.01442742      8 0.2353331 0.2946538 0.02342691
## 10 0.01211354      9 0.2209057 0.2810198 0.02130367
## 11 0.01049464     10 0.2087922 0.2722751 0.01897770
## 12 0.01000000     11 0.1982975 0.2588718 0.01796231

# caret cross validation results
ames_dt3 <- train(
  Sale_Price ~ .,
  data = ames_train,
  method = "rpart",
  trControl = trainControl(method = "cv", number = 10),
  tuneLength = 20
)

ggplot(ames_dt3)


#################################
# code block #8

vip(ames_dt3, num_features = 40, bar = FALSE)


#################################
# code block #9

# Construct partial dependence plots
p1 <- partial(ames_dt3, pred.var = "Gr_Liv_Area", grid.resolution = 10) %>% 
  autoplot()
p2 <- partial(ames_dt3, pred.var = "Year_Built", grid.resolution = 10) %>% 
  autoplot()
p3 <- partial(ames_dt3, pred.var = c("Gr_Liv_Area", "Year_Built"), 
              grid.resolution = 10) %>% 
  plotPartial(levelplot = FALSE, zlab = "yhat", drape = TRUE, colorkey = TRUE, 
              screen = list(z = -20, x = -60))

# Display plots side by side
gridExtra::grid.arrange(p1, p2, p3, ncol = 3)
