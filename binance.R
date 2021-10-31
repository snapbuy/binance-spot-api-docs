install.packages("VIM")
#remotes::install_github("datawookie/binance")

library(binance)
library(testthat)

test_check("binance")

rlang::last_error()

authenticate(
  key = Sys.getenv("BINANCE_API_KEY"),
  secret = Sys.getenv("BINANCE_API_SECRET")
)
packageVersion("binance")


library(tidyverse) # utility functions
library(rpart) # for regression trees
library(randomForest) # for random forests


library(readr)           # Data input with readr::read_csv()
library(descr)           # descr::CrossTable() - 범주별 빈도수, 비율 수치로 확인

# Visualization
library(VIM)             # Missing values assesment used by VIM::aggr()
library(ggplot2)         # Used in almost visualization 
library(RColorBrewer)    # plot의 color 설정 
library(scales)          # plot setting - x, y 축 설정

# Feature engineering, Data Pre-processing
# library(tidyverse)     # dplyr, ggplot2, purrr, etc... 
library(dplyr)           # Feature Engineering & Data Pre-processing 
library(purrr)           # Check missing values 
library(tidyr)           # tidyr::gather() 

# Model generation  
library(randomForest)    # For Random Forest Modeling

# Model validation : 원래는 하는게 맞지만 이번 과정에서는 생략
library(caret)           # caret::confusionMatrix() 
library(ROCR)            # Plotting ROC Curve

