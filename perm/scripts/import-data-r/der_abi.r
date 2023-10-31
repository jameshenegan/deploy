#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_abi.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$abi)="Ankle-Brachial Index"
label(data$abi2cat)="Peripheral Artery Disease ABI Classification"
label(data$pad)="Peripheral Artery Disease"

#Create new variables for factors
data$abi2cat.factor = factor(data$abi2cat, levels = c("0","1"))
levels(data$abi2cat.factor) = c("PAD Absent: ABI greater than or equal to 0.9","PAD Present: ABI < 0.9")

data$pad.factor = factor(data$pad, levels = c("0","1"))
levels(data$pad.factor) = c("PAD Absent","PAD Present")

