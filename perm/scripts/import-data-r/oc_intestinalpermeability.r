#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_intestinalpermeability.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_intper)="CRF Version"
label(data$testerid_intper)="Tester ID"
label(data$amount)="Amount of PEG given"
label(data$timedispensed)="Time dispensed"
label(data$timeampm)="Time ampm"
label(data$done_intper)="Done not done"
label(data$reasonnd)="Reason not done"
label(data$ua_volume)="UA 24 hr Volume"

#Create new variables for factors
data$timeampm.factor = factor(data$timeampm, levels = c("2","1"))
levels(data$timeampm.factor) = c("Pm","Am")

data$done_intper.factor = factor(data$done_intper, levels = c("1","0"))
levels(data$done_intper.factor) = c("Done","Not Done")

data$reasonnd.factor = factor(data$reasonnd, levels = c("2","1","3"))
levels(data$reasonnd.factor) = c("Not Eligible","Refused","Technical")

