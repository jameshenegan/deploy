#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_cogstate.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_cogsta)="CRF Version"
label(data$randomizationid)="Randomization number"
label(data$handprob)="Does the participant have physical hand problems"
label(data$done_cogsta)="Was Cog State protocol completed"
label(data$rnd)="Reason test not performed or unsatisfactory"
label(data$testerid_cogsta)="Tester ID"

#Create new variables for factors
data$handprob.factor = factor(data$handprob, levels = c("0","1"))
levels(data$handprob.factor) = c("No","Yes")

data$done_cogsta.factor = factor(data$done_cogsta, levels = c("1","0"))
levels(data$done_cogsta.factor) = c("Yes","No")

data$rnd.factor = factor(data$rnd, levels = c("1","999","555","888","666","777"))
levels(data$rnd.factor) = c("Other (please specify)","Technical problems (includes no time or no tester)","Physical problems","Refused","Mental problems","Physical and mental problems")

