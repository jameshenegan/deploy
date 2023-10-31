#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_emg.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_emg)="CRF Version"
label(data$emg01)="Foot temperature for peroneal"
label(data$emg01a)="Foot temperature for peroneal following heating"
label(data$emg02)="Which leg was tested"
label(data$emg02a)="Why wasn't right leg tested"
label(data$emg01a1)="Foot temperature for sural"
label(data$emg01a2)="Foot temperature for sural following heating"
label(data$emg01b)="Foot temperature at end of tests"
label(data$emg03a)="Peroneal Test Completed Distal"
label(data$emg04a)="Peroneal Test Completed Fibular Head"
label(data$emg05a)="Peroneal Test Completed Popliteal Fossa"
label(data$emg06a)="Sural TestCompleted LowerLeg"
label(data$emg08)="Were files exported"
label(data$emg03b)="Distal Amplitude"
label(data$emg03c)="Distal Latency"
label(data$emg04b)="Fibula head Amplitude"
label(data$emg04c)="Fibula head Latency"
label(data$emg04d)="Fibula head Conduction Velocity"
label(data$emg05b)="Popliteal Fossa Amplitude"
label(data$emg05c)="Popliteal Fossa Latency"
label(data$emg05d)="Popliteal Fossa Conduction Velocity"
label(data$emg06b)="Lower Leg Amplitude"
label(data$emg06c)="Lower Leg Latency"
label(data$emg06c1)="Lower Leg Latency"
label(data$emg06d)="Lower Leg Conduction Velocity"
label(data$emg07)="Which stimulus site was chosen for lower leg Sural"
label(data$auto_id_emg)="Unique Teleform Number"
label(data$testerid_emg)="Tester ID"

#Create new variables for factors
data$emg02.factor = factor(data$emg02, levels = c("0","1"))
levels(data$emg02.factor) = c("Right","Left")

data$emg02a.factor = factor(data$emg02a, levels = c("4","3","1","2"))
levels(data$emg02a.factor) = c("Other - explain","Trauma or surgery (including knee replacement)","Amputation","Ulcer")

data$emg03a.factor = factor(data$emg03a, levels = c("1","9","8","0","4","5","7","6"))
levels(data$emg03a.factor) = c("Yes","Technical problems (no time)"," Refused","Other","No response","Physical problems","Physical and mental problems","Mental problems")

data$emg04a.factor = factor(data$emg04a, levels = c("1","9","8","0","4","5","7","6"))
levels(data$emg04a.factor) = c("Yes","Technical problems (no time)"," Refused","Other","No response","Physical problems","Physical and mental problems","Mental problems")

data$emg05a.factor = factor(data$emg05a, levels = c("1","9","8","0","4","5","7","6"))
levels(data$emg05a.factor) = c("Yes","Technical problems (no time)"," Refused","Other","No response","Physical problems","Physical and mental problems","Mental problems")

data$emg06a.factor = factor(data$emg06a, levels = c("1","9","8","0","4","5","7","6"))
levels(data$emg06a.factor) = c("Yes","Technical problems (no time)"," Refused","Other","No response","Physical problems","Physical and mental problems","Mental problems")

data$emg08.factor = factor(data$emg08, levels = c("1","0"))
levels(data$emg08.factor) = c("Yes","No")

data$emg07.factor = factor(data$emg07, levels = c("1","2","3","4"))
levels(data$emg07.factor) = c("A1","A2","A3","A4")

