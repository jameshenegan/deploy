#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_bloodpressure.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$htn_self)="Hypertension Status (using self-reported physician DX and BP medication use)"
label(data$sbp)="Systolic Blood Pressure (mmHg)"
label(data$dbp)="Diastolic Blood Pressure (mmHg)"
label(data$bpjnc7)="JNC 7 BP Classification"
label(data$bp2cat)="Elevated BP Classification"
label(data$htn)="Hypertension Status"
label(data$icrose)="Classic Symptoms of Intermittent Claudication as Defined by Rose"

#Create new variables for factors
data$htn_self.factor = factor(data$htn_self, levels = c("1","0"))
levels(data$htn_self.factor) = c("Self-Reported History of HTN","No Reported History of HTN")

data$bpjnc7.factor = factor(data$bpjnc7, levels = c("0","1","2","3"))
levels(data$bpjnc7.factor) = c("Normal","Pre-HTN","Stage I HTN","Stage II HTN")

data$bp2cat.factor = factor(data$bp2cat, levels = c("0","1"))
levels(data$bp2cat.factor) = c("Normal: SBP < 130 and DBP < 80","Elevated: SBP greater than or equal to 130 or DBP greater than or equal to 80")

data$htn.factor = factor(data$htn, levels = c("0","1"))
levels(data$htn.factor) = c("Non-Hypertensive","Hypertensive")

data$icrose.factor = factor(data$icrose, levels = c("0","1"))
levels(data$icrose.factor) = c("Intermittent Claudication Sympoms Absent","Intermittent Claudication Sympoms Present")

