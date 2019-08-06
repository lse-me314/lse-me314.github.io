#################################
# code block #1

# Helper packages
library(dplyr)     # for data wrangling
library(ggplot2)   # for awesome plotting

# Modeling packages
library(earth)     # for fitting MARS models
library(caret)     # for automating the tuning process

# Model interpretability packages
library(vip)       # for variable importance
library(pdp)       # for variable relationships


#################################
# code block #2

# Fit a basic MARS model
mars1 <- earth(
  Sale_Price ~ .,  
  data = ames_train   
)

# Print model summary
print(mars1)
## Selected 37 of 45 terms, and 26 of 307 predictors
## Termination condition: RSq changed by less than 0.001 at 45 terms
## Importance: Gr_Liv_Area, Year_Built, Total_Bsmt_SF, ...
## Number of terms at each degree of interaction: 1 36 (additive model)
## GCV 521186626    RSS 995776275391    GRSq 0.9165386    RSq 0.92229


#################################
# code block #3

summary(mars1) %>% .$coefficients %>% head(10)
##                              Sale_Price
## (Intercept)                301399.98345
## h(2945-Gr_Liv_Area)           -49.84518
## h(Year_Built-2003)           2698.39864
## h(2003-Year_Built)           -357.11319
## h(Total_Bsmt_SF-2171)        -265.30709
## h(2171-Total_Bsmt_SF)         -29.77024
## Overall_QualExcellent       88345.90068
## Overall_QualVery_Excellent 116330.48509
## Overall_QualVery_Good       36646.55568
## h(Bsmt_Unf_SF-278)            -21.15661


#################################
# code block #4

plot(mars1, which = 1)


#################################
# code block #5

# Fit a basic MARS model
mars2 <- earth(
  Sale_Price ~ .,  
  data = ames_train,
  degree = 2
)

# check out the first 10 coefficient terms
summary(mars2) %>% .$coefficients %>% head(10)
##                                             Sale_Price
## (Intercept)                               242611.63686
## h(Gr_Liv_Area-2945)                          144.39175
## h(2945-Gr_Liv_Area)                          -57.71864
## h(Year_Built-2003)                         10909.70322
## h(2003-Year_Built)                          -780.24246
## h(Year_Built-2003)*h(Gr_Liv_Area-2274)        18.54860
## h(Year_Built-2003)*h(2274-Gr_Liv_Area)       -10.30826
## h(Total_Bsmt_SF-1035)                         62.11901
## h(1035-Total_Bsmt_SF)                        -33.03537
## h(Total_Bsmt_SF-1035)*Kitchen_QualTypical    -32.75942


#################################
# code block #6

# create a tuning grid
hyper_grid <- expand.grid(
  degree = 1:3, 
  nprune = seq(2, 100, length.out = 10) %>% floor()
)

head(hyper_grid)
##   degree nprune
## 1      1      2
## 2      2      2
## 3      3      2
## 4      1     12
## 5      2     12
## 6      3     12


#################################
# code block #7

# for reproducibiity
set.seed(123)

# cross validated model
cv_mars <- train(
  x = subset(ames_train, select = -Sale_Price),
  y = ames_train$Sale_Price,
  method = "earth",
  metric = "RMSE",
  trControl = trainControl(method = "cv", number = 10),
  tuneGrid = hyper_grid
)

# best model
cv_mars$bestTune
##    nprune degree
## 14     34      2

# plot results
ggplot(cv_mars)


#################################
# code block #8

# variable importance plots
p1 <- vip(cv_mars, num_features = 40, bar = FALSE, value = "gcv") + ggtitle("GCV")
p2 <- vip(cv_mars, num_features = 40, bar = FALSE, value = "rss") + ggtitle("RSS")

gridExtra::grid.arrange(p1, p2, ncol = 2)


#################################
# code block #9

cv_mars$finalModel %>%
  coef() %>%  # extract coefficients
  broom::tidy() %>%  # convert to tidy data frame
  filter(stringr::str_detect(names, "\\*"))  # select interaction terms
## # A tibble: 16 x 2
##    names                                                   x
##    <chr>                                               <dbl>
##  1 h(Year_Built-2003) * h(Gr_Liv_Area-2274)           18.7  
##  2 h(Year_Built-2003) * h(2274-Gr_Liv_Area)          -10.9  
##  3 h(Total_Bsmt_SF-1035) * Kitchen_QualTypical       -33.1  
##  4 NeighborhoodEdwards * h(Gr_Liv_Area-2945)        -507.   
##  5 h(Lot_Area-4058) * h(3-Garage_Cars)                -0.791
##  6 h(2003-Year_Built) * h(Year_Remod_Add-1974)         7.00 
##  7 Overall_QualExcellent * h(Total_Bsmt_SF-1035)     104.   
##  8 NeighborhoodCrawford * h(2003-Year_Built)         424.   
##  9 h(Lot_Area-4058) * Overall_CondFair                -3.29 
## 10 Overall_QualAbove_Average * h(2003-Year_Built)    136.   
## 11 h(Lot_Area-4058) * Overall_CondGood                 1.35 
## 12 Bsmt_ExposureNo * h(Total_Bsmt_SF-1035)           -22.5  
## 13 NeighborhoodGreen_Hills * h(5-Bedroom_AbvGr)    27362.   
## 14 Overall_QualVery_Good * Bsmt_QualGood          -18641.   
## 15 h(2003-Year_Built) * Sale_ConditionNormal         192.   
## 16 h(Lot_Area-4058) * h(Full_Bath-2)                   1.61


#################################
# code block #10

# Construct partial dependence plots
p1 <- partial(cv_mars, pred.var = "Gr_Liv_Area", grid.resolution = 10) %>% 
  autoplot()
p2 <- partial(cv_mars, pred.var = "Year_Built", grid.resolution = 10) %>% 
  autoplot()
p3 <- partial(cv_mars, pred.var = c("Gr_Liv_Area", "Year_Built"), 
              grid.resolution = 10) %>% 
  plotPartial(levelplot = FALSE, zlab = "yhat", drape = TRUE, colorkey = TRUE, 
              screen = list(z = -20, x = -60))

# Display plots side by side
gridExtra::grid.arrange(p1, p2, p3, ncol = 3)


#################################
# code block #11

# get attrition data
df <- attrition %>% mutate_if(is.ordered, factor, ordered = FALSE)

# Create training (70%) and test (30%) sets for the rsample::attrition data.
# Use set.seed for reproducibility
set.seed(123)
churn_split <- initial_split(df, prop = .7, strata = "Attrition")
churn_train <- training(churn_split)
churn_test  <- testing(churn_split)


# for reproducibiity
set.seed(123)

# cross validated model
tuned_mars <- train(
  x = subset(churn_train, select = -Attrition),
  y = churn_train$Attrition,
  method = "earth",
  trControl = trainControl(method = "cv", number = 10),
  tuneGrid = hyper_grid
)

# best model
tuned_mars$bestTune
##   nprune degree
## 5     45      1

# plot results
ggplot(tuned_mars)
