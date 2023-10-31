#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_nervesensitivity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_nersen)="CRF Version"
label(data$nrvs01a)="Foot temperature at start of study"
label(data$nrvs01b)="Foot temperature following heating:"
label(data$nrvs01c)="Foot temperature at end of tests:"
label(data$nrvs02)="Which leg was tested"
label(data$nrvs02a)="Why wasn't right let tested"
label(data$nrvsdon)="Was test done"
label(data$testerid_nersen)="Tester ID"

#Create new variables for factors
data$nrvs02.factor = factor(data$nrvs02, levels = c("0","1"))
levels(data$nrvs02.factor) = c("Right","Left")

data$nrvs02a.factor = factor(data$nrvs02a, levels = c("9","3","1","2"))
levels(data$nrvs02a.factor) = c("Other please specify","Trauma or surgery (including knee replacement)","Amputation","Ulcer")

data$nrvsdon.factor = factor(data$nrvsdon, levels = c("1","9","5","6","7"))
levels(data$nrvsdon.factor) = c("Yes","Technical problems","Physical problems","Cognitive problems","Refused")

