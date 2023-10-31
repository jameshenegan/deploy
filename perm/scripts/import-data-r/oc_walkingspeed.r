#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_walkingspeed.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_walspe)="CRF Version"
label(data$wsup10)="Usual Pace 10ft"
label(data$wsup10t)="Usual Pace 10ft time"
label(data$wsup100)="Usual Pace 100ft"
label(data$wsup100t)="Usual Pace 100ft time"
label(data$wsfp10)="Fast Pace 10ft"
label(data$wsfp10t)="Fast Pace 10ft time"
label(data$wsfp100)="Fast Pace 100ft"
label(data$wsfp100t)="Fast Pace 100ft time"
label(data$auto_id_walspe)="Unique Teleform Number"
label(data$testerid_walspe)="Tester ID"

#Create new variables for factors
data$wsup10.factor = factor(data$wsup10, levels = c("1","0","7"))
levels(data$wsup10.factor) = c("Completes without walking aid","Not attempted unable to walk unaided","Participant refused (includes not time/no tester")

data$wsup100.factor = factor(data$wsup100, levels = c("1","0","7"))
levels(data$wsup100.factor) = c("Completes without walking aid","Not attempted unable to walk unaided","Participant refused (includes not time/no tester")

data$wsfp10.factor = factor(data$wsfp10, levels = c("1","0","7"))
levels(data$wsfp10.factor) = c("Completes without walking aid","Not attempted unable to walk unaided","Participant refused (includes not time/no tester")

data$wsfp100.factor = factor(data$wsfp100, levels = c("1","0","7"))
levels(data$wsfp100.factor) = c("Completes without walking aid","Not attempted unable to walk unaided","Participant refused (includes not time/no tester")

