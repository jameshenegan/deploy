#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_tmstressblood.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_tmstrblo)="CRF Version"
label(data$tmsb_done)="Treadmill stress blood completed"
label(data$tmsb_rnd)="TMSB reason not done"
label(data$tmsb_samples)="Were all blood draws completed"
label(data$tmsb_rnc)="Reason not completed"

#Create new variables for factors
data$tmsb_done.factor = factor(data$tmsb_done, levels = c("1","0"))
levels(data$tmsb_done.factor) = c("Yes","No")

data$tmsb_rnd.factor = factor(data$tmsb_rnd, levels = c("2","1","3","4"))
levels(data$tmsb_rnd.factor) = c("Unable","Refused","Not Scheduled","Other")

data$tmsb_samples.factor = factor(data$tmsb_samples, levels = c("1","0"))
levels(data$tmsb_samples.factor) = c("Yes","No")

data$tmsb_rnc.factor = factor(data$tmsb_rnc, levels = c("1","2","3"))
levels(data$tmsb_rnc.factor) = c("IV access","Refused","Other")

