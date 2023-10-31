#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_fingertapping.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_fintap)="CRF Version"
label(data$ftt01)="Does the participant have physical hand problems"
label(data$fttdone)="Was finger tapping completed"
label(data$ftt02a)="Reason test not performed or unsatisfactory"
label(data$auto_id_fintap)="Unique Teleform Number"
label(data$testerid_fintap)="Tester ID"

#Create new variables for factors
data$ftt01.factor = factor(data$ftt01, levels = c("0","1"))
levels(data$ftt01.factor) = c("No","Yes")

data$fttdone.factor = factor(data$fttdone, levels = c("1","0"))
levels(data$fttdone.factor) = c("Yes","No")

data$ftt02a.factor = factor(data$ftt02a, levels = c("999","1","555","666","888","777"))
levels(data$ftt02a.factor) = c("Technical problems (includes no time or no tester)","Other (please specify)","Physical problems","Mental problems","Refused","Physical and mental problems")

