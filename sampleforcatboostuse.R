###sample for catboost model proposed in the paper
#Written by Yongtian Cheng
#You have to install the "catboot" package by yourself from github with the version of your OS.


library(readxl)
library(boot)
library(dplyr)
library(caret)
library(pROC)
library(ROSE)
library(PRROC)
library(catboost)


###sample for format


data1

data2


#change format

test_pool1 <- catboost.load_pool(data = data1[, -which(names(data1) == "DV")], 
                                label = as.numeric(data1$DV) - 1)

test_pool2 <- catboost.load_pool(data = data2[, -which(names(data2) == "DV")], 
                                 label = as.numeric(data2$DV) - 1)
#make predition
prediction1 <- catboost.predict(model1, test_pool1, prediction_type = "Probability")

prediction2 <- catboost.predict(model2, test_pool2, prediction_type = "Probability")

