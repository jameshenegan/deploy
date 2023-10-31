#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_gripstrength.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_gristr)="CRF Version"
label(data$grip1)="Do you have arthritis in either hand or wrist"
label(data$grip1a)="Is the pain or arthritis in your right left or both hands or wrists"
label(data$grip1b)="Has the pain or arthritis gotten worse recently"
label(data$grip1c)="Will the pain or arthritis keep you from squeezing as hard as you can"
label(data$grip2)="Have you had surgery on either hand or wrist in the past 3 months"
label(data$grip2a)="Was the surgery on your right left or both hands or wrists"
label(data$grip3r1)="Trial 1 right hand"
label(data$grip3r2)="Trial 2 right hand"
label(data$grip3r3)="Trial 3 right hand"
label(data$grip3r4)="Right hand completion status"
label(data$grip3l1)="Trial 1 left hand"
label(data$grip3l2)="Trial 2 left hand"
label(data$grip3l3)="Trial 3 left hand"
label(data$grip3l4)="Left hand completion status"
label(data$auto_id_gristr)="Unique Teleform Number"
label(data$testerid_gristr)="Tester ID"

#Create new variables for factors
data$grip1.factor = factor(data$grip1, levels = c("0","1","8","7"))
levels(data$grip1.factor) = c("No","Yes","Dont know","Refused")

data$grip1a.factor = factor(data$grip1a, levels = c("3","1","2","8","7"))
levels(data$grip1a.factor) = c("Both","Right","Left","Dont know","Refused")

data$grip1b.factor = factor(data$grip1b, levels = c("0","1","8","7"))
levels(data$grip1b.factor) = c("No","Yes","Dont know","Refused")

data$grip1c.factor = factor(data$grip1c, levels = c("0","1","8","7"))
levels(data$grip1c.factor) = c("No","Yes","Dont know","Refused")

data$grip2.factor = factor(data$grip2, levels = c("0","8","1","7"))
levels(data$grip2.factor) = c("No","Dont know","Yes","Refused")

data$grip2a.factor = factor(data$grip2a, levels = c("2","1","8","3"))
levels(data$grip2a.factor) = c("Left (Test right side only)","Right (Test left side only)","Dont know (Do not test)","Both (Do not test)")

data$grip3r4.factor = factor(data$grip3r4, levels = c("1","4","7","0","3","2"))
levels(data$grip3r4.factor) = c("Did 3 trials","Unable to do","Refused","Excluded","Did 1 trial","Did 2 trials")

data$grip3l4.factor = factor(data$grip3l4, levels = c("1","4","7","0","3","2"))
levels(data$grip3l4.factor) = c("Did 3 trials","Unable to do","Refused","Excluded","Did 1 trial","Did 2 trials")

