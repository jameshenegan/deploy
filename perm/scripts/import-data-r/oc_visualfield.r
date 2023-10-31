#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_visualfield.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_visfie)="CRF Version"
label(data$vissc1_visfie)="Do you wear glasses or contact lenses"
label(data$vissc2_visfie)="Did you bring your glasses"
label(data$vissc2a_visfie)="Type of glasses or contact lenses"
label(data$vissc2a1_visfie)="Glasses"
label(data$vissc2b_visfie)="Contact Lenses"
label(data$vissc2b1_visfie)="Contact lenses for distance bifocal or monovision"
label(data$vissc2b2_visfie)="Which eye distance"
label(data$visvfdis_visfie)="Does participant have marked discrepency of vision between eyes"
label(data$vissc3a1_visfie)="Right eye sphere Rx"
label(data$vissc3a2_visfie)="Right eye cylinder Rx"
label(data$vissc3a3_visfie)="Right eye Axis Rx"
label(data$vissc3a4_visfie)="Right eye sphere Rx final"
label(data$vissc3b1_visfie)="Left eye sphere Rx"
label(data$vissc3b2_visfie)="Left eye cylinder Rx"
label(data$vissc3b3_visfie)="Left eye Axis Rx"
label(data$vissc3b4_visfie)="Left eye sphere Rx final"
label(data$vissc3c_visfie)="Near add"
label(data$visvfdon_visfie)="Was visual field assessment completed"
label(data$visvfrnd_visfie)="Why visual field not done"
label(data$auto_id_visfie)="Unique Teleform Number"
label(data$testerid_visfie)="Tester ID"

#Create new variables for factors
data$vissc1_visfie.factor = factor(data$vissc1_visfie, levels = c("3","1","0","2"))
levels(data$vissc1_visfie.factor) = c("For both distance and near","Near only (eg reading)","Never","Distance only (eg driving watching TV)")

data$vissc2_visfie.factor = factor(data$vissc2_visfie, levels = c("1","0"))
levels(data$vissc2_visfie.factor) = c("Yes","No")

data$vissc2a_visfie.factor = factor(data$vissc2a_visfie, levels = c("1","2"))
levels(data$vissc2a_visfie.factor) = c("Glasses","Contact Lenses")

data$vissc2a1_visfie.factor = factor(data$vissc2a1_visfie, levels = c("4","2","1","3"))
levels(data$vissc2a1_visfie.factor) = c("Progressives","Bifocal","Single vision","Trifocals")

data$vissc2b_visfie.factor = factor(data$vissc2b_visfie, levels = c("1","2","8"))
levels(data$vissc2b_visfie.factor) = c("Soft","RGP (hard)","Unknown")

data$vissc2b1_visfie.factor = factor(data$vissc2b1_visfie, levels = c("1","2","3"))
levels(data$vissc2b1_visfie.factor) = c("Distance","Bifocal","Monovision")

data$vissc2b2_visfie.factor = factor(data$vissc2b2_visfie, levels = c("8","2","1"))
levels(data$vissc2b2_visfie.factor) = c("Unknown","Left","Right")

data$visvfdis_visfie.factor = factor(data$visvfdis_visfie, levels = c("0","1"))
levels(data$visvfdis_visfie.factor) = c("No","Yes")

data$visvfdon_visfie.factor = factor(data$visvfdon_visfie, levels = c("1","0"))
levels(data$visvfdon_visfie.factor) = c("Yes","No")

data$visvfrnd_visfie.factor = factor(data$visvfrnd_visfie, levels = c("555","999","888","666","777"))
levels(data$visvfrnd_visfie.factor) = c("Physical problems (*includes if participant has marked discrepancy of vision between eyes","Technical problems","Refused","Physical and cognitive","Cognitive problems")

