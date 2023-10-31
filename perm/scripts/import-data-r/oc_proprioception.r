#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_proprioception.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_pro)="CRF Version"
label(data$pro01)="Status of Proprioception test"
label(data$pro01a)="Reason test not performed"
label(data$pro02)="Accuracy in threshold test"
label(data$pro02a)="Partially correct threshold"
label(data$auto_id_pro)="Unique Teleform Number"
label(data$pro02a_1)="Partially correct threshold : Threshold 1 (Checkbox Indicator)"
label(data$pro02a_2)="Partially correct threshold : Threshold 2 (Checkbox Indicator)"
label(data$pro02a_3)="Partially correct threshold : Threshold 3 (Checkbox Indicator)"
label(data$pro02a_4)="Partially correct threshold : Threshold 4 (Checkbox Indicator)"
label(data$testerid_pro)="Tester ID"

#Create new variables for factors
data$pro01.factor = factor(data$pro01, levels = c("1","0"))
levels(data$pro01.factor) = c("Attempted","Not attempted")

data$pro01a.factor = factor(data$pro01a, levels = c("1","3","2","8","7","6","5","4","11","12","10","9"))
levels(data$pro01a.factor) = c("Not enough time/not scheduled","Technical/equipment problem","No examiner available","Other Physical problems","Participant refused","Examiner felt unsafe","Unable to stand/walk","Cognitively impaired","Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)","Unable to follow directions","Lower limb braces ambulatory","Lower limb amputations")

data$pro02.factor = factor(data$pro02, levels = c("1","2"))
levels(data$pro02.factor) = c("All Correct","Partially Correct")

