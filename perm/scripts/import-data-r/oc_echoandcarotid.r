#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_echoandcarotid.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_echandcar)="CRF Version"
label(data$echo01)="Echo done"
label(data$echo01a)="Echo reason not done"
label(data$ct01)="Carotid done"
label(data$ct01a)="Carotid reason not done"
label(data$bp001)="Blood pressure measured"
label(data$bpsbp)="Systolic"
label(data$bpdbp)="Diastolic"
label(data$bpmap)="MAP"
label(data$auto_id_echandcar)="Unique Teleform Number"
label(data$testerid_echandcar)="Tester ID"

#Create new variables for factors
data$echo01.factor = factor(data$echo01, levels = c("1","0"))
levels(data$echo01.factor) = c("Yes","No")

data$echo01a.factor = factor(data$echo01a, levels = c("999","0","888","555","777","666"))
levels(data$echo01a.factor) = c("Technical problems","Other","Refused","Physical problems","Physical and cognitive","Cognitive")

data$ct01.factor = factor(data$ct01, levels = c("1","0"))
levels(data$ct01.factor) = c("Yes","No")

data$ct01a.factor = factor(data$ct01a, levels = c("999","1","888","555","777","666"))
levels(data$ct01a.factor) = c("Technical problems","Other","Refused","Physical problems","Physical and cognitive","Cognitive")

data$bp001.factor = factor(data$bp001, levels = c("1","0"))
levels(data$bp001.factor) = c("Yes","No")

