#################################
# code block #1

# Helper packages
library(dplyr)       # for data wrangling
library(ggplot2)     # for awesome plotting
library(doParallel)  # for parallel backend to foreach
library(foreach)     # for parallel processing with for loops

# Modeling packages
library(caret)       # for general model fitting
library(rpart)       # for fitting decision trees
library(ipred)       # for fitting bagged decision trees


#################################
# code block #2

# make bootstrapping reproducible
set.seed(123)

# train bagged model
ames_bag1 <- bagging(
  formula = Sale_Price ~ .,
  data = ames_train,
  nbagg = 100,  
  coob = TRUE,
  control = rpart.control(minsplit = 2, cp = 0)
)

ames_bag1
## 
## Bagging regression trees with 100 bootstrap replications 
## 
## Call: bagging.data.frame(formula = Sale_Price ~ ., data = ames_train, 
##     nbagg = 100, coob = TRUE, control = rpart.control(minsplit = 2, 
##         cp = 0))
## 
## Out-of-bag estimate of root mean squared error:  25528.78


#################################
# code block #3

ames_bag2 <- train(
  Sale_Price ~ .,
  data = ames_train,
  method = "treebag",
  trControl = trainControl(method = "cv", number = 10),
  nbagg = 100,  
  control = rpart.control(minsplit = 2, cp = 0)
)
ames_bag2
## Bagged CART 
## 
## 2054 samples
##   80 predictor
## 
## No pre-processing
## Resampling: Cross-Validated (10 fold) 
## Summary of sample sizes: 1849, 1849, 1847, 1850, 1849, 1849, ... 
## Resampling results:
## 
##   RMSE      Rsquared   MAE     
##   27571.21  0.8800096  16923.66


#################################
# code block #4

# Create a parallel socket cluster
cl <- makeCluster(8) # use 8 workers
registerDoParallel(cl) # register the parallel backend

# Fit trees in parallel and compute predictions on the test set
predictions <- foreach(icount(160), .packages = "rpart", .combine = cbind) %dopar% {
  # bootstrap copy of training data
  ames_train_boot <- ames_train[sample(nrow(ames_train), replace = TRUE), ]  
  
  # fit tree to bootstrap copy
  bagged_tree <- rpart(
    Sale_Price ~ ., 
    control = rpart.control(minsplit = 2, cp = 0),
    data = ames_train_boot
    ) 
  
  predict(bagged_tree, newdata = ames_test)
}

predictions[1:5, 1:7]
##   result.1 result.2 result.3 result.4 result.5 result.6 result.7
## 1   185088   187500   212109   187000   195500   212109   187100
## 2   213750   239500   213750   236500   180000   182000   182000
## 3   178000   185000   180000   178900   179000   168675   178900
## 4   210000   180000   218500   218500   218500   190000   218500
## 5   128500   155000   155000   147000   152000   163000   143250


#################################
# code block #5

# Create average predictions per observation per tree
predictions %>%
  as.data.frame() %>%
  mutate(
    observation = 1:n(),
    actual = ames_test$Sale_Price) %>%
  tidyr::gather(tree, predicted, -c(observation, actual)) %>%
  group_by(observation) %>%
  mutate(tree = stringr::str_extract(tree, '\\d+') %>% as.numeric()) %>%
  ungroup() %>%
  arrange(observation, tree) %>%
  group_by(observation) %>%
  mutate(avg_prediction = cummean(predicted)) %>%
  group_by(tree) %>%
  summarize(RMSE = RMSE(avg_prediction, actual)) %>%
  ggplot(aes(tree, RMSE)) +
  geom_line() +
  xlab('Number of trees')


#################################
# code block #6

# Shutdown parallel cluster
stopCluster(cl)


#################################
# code block #7

vip::vip(ames_bag2, num_features = 40, bar = FALSE)


#################################
# code block #8

# Construct partial dependence plots
p1 <- pdp::partial(ames_bag2, pred.var = "Lot_Area", grid.resolution = 20) %>% 
  autoplot()
p2 <- pdp::partial(ames_bag2, pred.var = "Lot_Frontage", grid.resolution = 20) %>% 
  autoplot()

gridExtra::grid.arrange(p1, p2, nrow = 1)
