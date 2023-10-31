#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_pwvsphygmocor.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_pwvsph)="CRF Version"
label(data$pwran_pwvsph)="Randomization list"
label(data$pwv01_pwvsph)="Was PWV performed"
label(data$pwv01a_pwvsph)="PWV reason not done"
label(data$pwv01b_pwvsph)="PWV Contraindications"
label(data$agi01_pwvsph)="Was AGI performed"
label(data$agi01a_pwvsph)="AGI reason not done"
label(data$agi01b_pwvsph)="AGI Contraindications"
label(data$abi01_pwvsph)="Was ABI performed"
label(data$abi01a_pwvsph)="ABI reason not done"
label(data$abi01b_pwvsph)="ABI reason not done Other"
label(data$pwbp01_pwvsph)="Blood pressure"
label(data$pwsbp_pwvsph)="BP systolic"
label(data$pwdbp_pwvsph)="BP diastolic"
label(data$pwmap_pwvsph)="BP MAP"
label(data$auto_id_pwvsph)="Unique Teleform Number"
label(data$testerid_pwvsph)="Tester ID"

#Create new variables for factors
data$pwran_pwvsph.factor = factor(data$pwran_pwvsph, levels = c("1","2","3"))
levels(data$pwran_pwvsph.factor) = c("Complior first SphygmoCor second","SphgmoCor first Complior second","Complior Only")

data$pwv01_pwvsph.factor = factor(data$pwv01_pwvsph, levels = c("1","0"))
levels(data$pwv01_pwvsph.factor) = c("Yes","No")

data$pwv01a_pwvsph.factor = factor(data$pwv01a_pwvsph, levels = c("999","0","1","555","666","777","888"))
levels(data$pwv01a_pwvsph.factor) = c("Technical problems","Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused")

data$pwv01b_pwvsph.factor = factor(data$pwv01b_pwvsph, levels = c("3","1","2"))
levels(data$pwv01b_pwvsph.factor) = c("Hardware on neck precluding access to carotid pulse","TIA or CVA within past 6 months","Bilateral carotid bruits")

data$agi01_pwvsph.factor = factor(data$agi01_pwvsph, levels = c("1","0"))
levels(data$agi01_pwvsph.factor) = c("Yes","No")

data$agi01a_pwvsph.factor = factor(data$agi01a_pwvsph, levels = c("999","0","1","555","666","777","888"))
levels(data$agi01a_pwvsph.factor) = c("Technical problems","Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused")

data$abi01_pwvsph.factor = factor(data$abi01_pwvsph, levels = c("1","0","2","3"))
levels(data$abi01_pwvsph.factor) = c("Yes both sides","No","Right only","Left only")

data$abi01a_pwvsph.factor = factor(data$abi01a_pwvsph, levels = c("999","0","1","555","666","777","888"))
levels(data$abi01a_pwvsph.factor) = c("Technical problems","Other","Contraindication","Physical","Cognitive","Physical and Cognitive","Refused")

data$pwbp01_pwvsph.factor = factor(data$pwbp01_pwvsph, levels = c("1","0"))
levels(data$pwbp01_pwvsph.factor) = c("Yes","No")

