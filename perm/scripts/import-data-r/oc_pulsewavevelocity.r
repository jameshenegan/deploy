#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_pulsewavevelocity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_pulwavvel)="CRF Version"
label(data$pwv01_pulwavvel)="Was PWV performed"
label(data$pwv01a_pulwavvel)="PWV reason not done"
label(data$pwv01b_pulwavvel)="PWV Contraindications"
label(data$agi01_pulwavvel)="Was AGI performed"
label(data$agi01a_pulwavvel)="AGI reason not done"
label(data$agi01b_pulwavvel)="AGI Contraindications"
label(data$abi01_pulwavvel)="Was ABI performed"
label(data$abi01a_pulwavvel)="ABI reason not done"
label(data$pwbp01_pulwavvel)="Blood pressure"
label(data$pwsbp_pulwavvel)="BP systolic"
label(data$pwdbp_pulwavvel)="BP diastolic"
label(data$pwmap_pulwavvel)="BP MAP"
label(data$vaseracolin)="Was Vasera and Colin comparison study performed"
label(data$pwran_pulwavvel)="Randomization list"
label(data$auto_id_pulwavvel)="Unique Teleform Number"
label(data$testerid_pulwavvel)="Tester ID"

#Create new variables for factors
data$pwv01_pulwavvel.factor = factor(data$pwv01_pulwavvel, levels = c("1","0"))
levels(data$pwv01_pulwavvel.factor) = c("Yes","No")

data$pwv01a_pulwavvel.factor = factor(data$pwv01a_pulwavvel, levels = c("999","0","555","888","1","777","666"))
levels(data$pwv01a_pulwavvel.factor) = c("Technical problems","Other","Physical","Refused","Contraindication","Physical and Cognitive","Cognitive")

data$pwv01b_pulwavvel.factor = factor(data$pwv01b_pulwavvel, levels = c("2","3","1"))
levels(data$pwv01b_pulwavvel.factor) = c("Bilateral carotid bruits","Hardware on neck precluding access to carotid pulse","TIA or CVA within past 6 months")

data$agi01_pulwavvel.factor = factor(data$agi01_pulwavvel, levels = c("1","0"))
levels(data$agi01_pulwavvel.factor) = c("Yes","No")

data$agi01a_pulwavvel.factor = factor(data$agi01a_pulwavvel, levels = c("999","0","555","888","1","777","666"))
levels(data$agi01a_pulwavvel.factor) = c("Technical problems","Other","Physical","Refused","Contraindication","Physical and Cognitive","Cognitive")

data$agi01b_pulwavvel.factor = factor(data$agi01b_pulwavvel, levels = c("3","2","1"))
levels(data$agi01b_pulwavvel.factor) = c("Hardware on neck precluding access to carotid pulse","Bilateral carotid bruits","TIA or CVA within past 6 months")

data$abi01_pulwavvel.factor = factor(data$abi01_pulwavvel, levels = c("1","0","2","3"))
levels(data$abi01_pulwavvel.factor) = c("Yes both sides","No","Right only","Left only")

data$abi01a_pulwavvel.factor = factor(data$abi01a_pulwavvel, levels = c("999","0","555","888","1","666","777"))
levels(data$abi01a_pulwavvel.factor) = c("Technical problems","Other","Physical","Refused","Contraindication","Cognitive","Physical and Cognitive")

data$pwbp01_pulwavvel.factor = factor(data$pwbp01_pulwavvel, levels = c("1","0"))
levels(data$pwbp01_pulwavvel.factor) = c("Yes","No")

data$vaseracolin.factor = factor(data$vaseracolin, levels = c("1","0"))
levels(data$vaseracolin.factor) = c("Yes","No")

data$pwran_pulwavvel.factor = factor(data$pwran_pulwavvel, levels = c("2","1","3"))
levels(data$pwran_pulwavvel.factor) = c("SphgmoCor first Complior second","Complior first SphygmoCor second","Complior Only")

