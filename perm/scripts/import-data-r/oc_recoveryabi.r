#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_recoveryabi.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_recabi)="CRF Version"
label(data$testerid_recabi)="Tester ID"
label(data$rabi01)="Was Recovery ABI performed"
label(data$rabi01a)="Recovery ABI reason not done"

#Create new variables for factors
data$rabi01.factor = factor(data$rabi01, levels = c("1","0","2","3"))
levels(data$rabi01.factor) = c("Yes both sides","No","Right only","Left only")

data$rabi01a.factor = factor(data$rabi01a, levels = c("0","2","555","1","666","777","888","999"))
levels(data$rabi01a.factor) = c("Other","No tester","Physical","Contraindication","Cognitive","Physical and Cognitive","Refused","Technical problems")

