#################################
# code block #1

# Helper packages
library(dplyr)    # for data wrangling
library(ggplot2)  # for awesome graphics

# Modeling packages
library(ranger)   # for a fast c++ implementation of random forest 
library(h2o)      # for a fast java-based implementation of random forest


#################################
# code block #2

1.  Given a training data set
2.  Select number of trees to build ($n_{trees}$)
3.  for i = 1 to $n_{trees}$ do
4.  |  Generate a bootstrap sample of the original data
5.  |  Grow a regression or classification tree to the bootstrapped data
6.  |  for each split do
7.  |  | Select $m_{try}$ variables at random from all $p$ variables
8.  |  | Pick the best variable/split-point among the $m_{try}$
9.  |  | Split the node into two child nodes
10. |  end
11. | Use typical tree model stopping criteria to determine when a tree is complete (but do not prune)
12. end
13. Output ensemble of trees 


#################################
# code block #3

# number of features
n_features <- length(setdiff(names(ames_train), "Sale_Price"))

# train a default random forest model
ames_rf1 <- ranger(
  Sale_Price ~ ., 
  data = ames_train,
  mtry = floor(n_features / 3),
  respect.unordered.factors = "order",
  seed = 123
)

# get OOB RMSE
(default_rmse <- sqrt(ames_rf1$prediction.error))
## [1] 24816.29


#################################
# code block #4

# create 
hyper_grid <- expand.grid(
  mtry = floor(n_features * c(.05, .15, .25, .333, .4)),  # split rule
  min.node.size = c(1, 3, 5, 10),                         # tree complexity
  replace = c(TRUE, FALSE),                               # sampling scheme
  sample.fraction = c(.5, .63, .8),                       # sampling scheme
  rmse = NA                                               # results placeholder
)

# execute full cartesian grid search
for(i in seq_len(nrow(hyper_grid))) {
  # fit model for ith hyperparameter combination
  fit <- ranger(
    formula         = Sale_Price ~ ., 
    data            = ames_train, 
    num.trees       = n_features * 10,
    mtry            = hyper_grid$mtry[i],
    min.node.size   = hyper_grid$min.node.size[i],
    replace         = hyper_grid$replace[i],
    sample.fraction = hyper_grid$sample.fraction[i],
    verbose         = FALSE,
    seed            = 123,
    respect.unordered.factors = 'order',
  )
  # export OOB error 
  hyper_grid$rmse[i] <- sqrt(fit$prediction.error)
}

# assess top 10 models
hyper_grid %>%
  arrange(rmse) %>%
  mutate(perc_gain = (default_rmse - rmse) / default_rmse * 100) %>%
  head(10)
##    mtry min.node.size replace sample.fraction     rmse perc_gain
## 1    26             1   FALSE             0.8 23758.83  4.261176
## 2    20             1   FALSE             0.8 23763.35  4.242953
## 3    26             5   FALSE             0.8 23787.76  4.144588
## 4    20             3   FALSE             0.8 23802.53  4.085078
## 5    26             3   FALSE             0.8 23812.10  4.046502
## 6    20             5   FALSE             0.8 23864.73  3.834418
## 7    32             3   FALSE             0.8 23956.95  3.462812
## 8    32             5   FALSE             0.8 23986.22  3.344872
## 9    32             1   FALSE             0.8 24010.42  3.247349
## 10   12             1   FALSE             0.8 24021.96  3.200865


#################################
# code block #5

h2o.no_progress()
h2o.init(max_mem_size = "5g")


#################################
# code block #6

# convert training data to h2o object
train_h2o <- as.h2o(ames_train)

# set the response column to Sale_Price
response <- "Sale_Price"

# set the predictor names
predictors <- setdiff(colnames(ames_train), response)


#################################
# code block #7

h2o_rf1 <- h2o.randomForest(
    x = predictors, 
    y = response,
    training_frame = train_h2o, 
    ntrees = n_features * 10,
    seed = 123
)

h2o_rf1
## Model Details:
## ==============
## 
## H2ORegressionModel: drf
## Model ID:  DRF_model_R_1554292876245_2 
## Model Summary: 
##   number_of_trees number_of_internal_trees model_size_in_bytes min_depth max_depth mean_depth min_leaves max_leaves mean_leaves
## 1             800                      800            12365675        19        20   19.99875       1148       1283  1225.04630
## 
## 
## H2ORegressionMetrics: drf
## ** Reported on training data. **
## ** Metrics reported on Out-Of-Bag training samples **
## 
## MSE:  597254712
## RMSE:  24438.8
## MAE:  14833.34
## RMSLE:  0.1396219
## Mean Residual Deviance :  597254712


#################################
# code block #8

# hyperparameter grid
hyper_grid <- list(
  mtries = floor(n_features * c(.05, .15, .25, .333, .4)),
  min_rows = c(1, 3, 5, 10),
  max_depth = c(10, 20, 30),
  sample_rate = c(.55, .632, .70, .80)
)

# random grid search strategy
search_criteria <- list(
  strategy = "RandomDiscrete",
  stopping_metric = "mse",
  stopping_tolerance = 0.001,   # stop if we don't experience 0.1% improvement
  stopping_rounds = 10,         # over the last 10 models
  max_runtime_secs = 60*10      # or cut grid search off at 10 minutes
)


#################################
# code block #9

# perform grid search 
random_grid <- h2o.grid(
  algorithm = "randomForest",
  grid_id = "rf_random_grid",
  x = predictors, 
  y = response, 
  training_frame = train_h2o,
  hyper_params = hyper_grid,
  ntrees = n_features * 10,
  seed = 123,
  stopping_metric = "RMSE",   
  stopping_rounds = 10,           # stop adding trees if we don't experience
  stopping_tolerance = 0.005,     # 0.05 improvement in error over last 10 trees
  search_criteria = search_criteria
)


#################################
# code block #10

# collect the results and sort by our model performance metric of choice
random_grid_perf <- h2o.getGrid(
  grid_id = "rf_random_grid", 
  sort_by = "mse", 
  decreasing = FALSE
)
## H2O Grid Details
## ================
## 
## Grid ID: rf_random_grid 
## Used hyper parameters: 
##   -  max_depth 
##   -  min_rows 
##   -  mtries 
##   -  sample_rate 
## Number of models: 129 
## Number of failed models: 0 
## 
## Hyper-Parameter Search Summary: ordered by increasing mse
##   max_depth min_rows mtries sample_rate                 model_ids                 mse
## 1        30      1.0     20         0.8  rf_random_grid_model_113 5.727214331253618E8
## 2        20      1.0     20         0.8   rf_random_grid_model_39 5.727741137204964E8
## 3        20      1.0     32         0.7    rf_random_grid_model_8  5.76799145123527E8
## 4        30      1.0     26         0.7   rf_random_grid_model_67 5.815643260591004E8
## 5        30      1.0     12         0.8   rf_random_grid_model_64 5.951710701891141E8
## 
## ---
##     max_depth min_rows mtries sample_rate                model_ids                  mse
## 124        10     10.0      4         0.7  rf_random_grid_model_44 1.0367731339073703E9
## 125        20     10.0      4         0.8  rf_random_grid_model_73 1.0451421787520385E9
## 126        20      5.0      4        0.55  rf_random_grid_model_12 1.0710840266353173E9
## 127        10      5.0      4        0.55  rf_random_grid_model_75 1.0793293549247448E9
## 128        10     10.0      4       0.632  rf_random_grid_model_37 1.0804801985871077E9
## 129        20     10.0      4        0.55  rf_random_grid_model_22 1.1525799087784908E9


#################################
# code block #11

# re-run model with impurity-based variable importance
rf_impurity <- ranger(
  formula = Sale_Price ~ ., 
  data = ames_train, 
  num.trees = 2000,
  mtry = 26,
  min.node.size   = 1,
  sample.fraction = .80,
  replace = FALSE,
  importance = "impurity",
  respect.unordered.factors = "order",
  verbose = FALSE,
  seed  = 123
)

# re-run model with permutation-based variable importance
rf_permutation <- ranger(
  formula = Sale_Price ~ ., 
  data = ames_train, 
  num.trees = 2000,
  mtry = 26,
  min.node.size   = 1,
  sample.fraction = .80,
  replace = FALSE,
  importance = "permutation",
  respect.unordered.factors = "order",
  verbose = FALSE,
  seed  = 123
)


#################################
# code block #12

p1 <- vip::vip(rf_impurity, num_features = 25, bar = FALSE) + ggtitle("Impurity-based")
p2 <- vip::vip(rf_permutation, num_features = 25, bar = FALSE) + ggtitle("Permutation-based")

gridExtra::grid.arrange(p1, p2, nrow = 1)
