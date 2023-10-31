#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_skinbiopsyeligibility.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_skibioeli)="CRF Version"
label(data$testerid_skibioeli)="Tester ID"
label(data$provideinformedconsent_skibioeli)="Able to provide informed consent"
label(data$nohxbleedingdisorder_skibioeli)="Does not have history of bleeding disorder"
label(data$nomedsincrbleeding_skibioeli)="Does not take medications that will increase bleeding"
label(data$nonsaids_skibioeli)="Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label(data$lessth81mgaspirin_skibioeli)="Does not take more than 81 mg Aspirin a day"
label(data$noallergylocalanesthetic)="Is not allergic to Lidocaine or other local anesthetic"
label(data$noinfectionskincond_skibioeli)="Has no active infection or chronic skin condition around biopsy site"
label(data$notpregnant_skibioeli)="Is not pregnant"
label(data$eligibility_skibioeli)="Eligibility"

#Create new variables for factors
data$provideinformedconsent_skibioeli.factor = factor(data$provideinformedconsent_skibioeli, levels = c("1","0"))
levels(data$provideinformedconsent_skibioeli.factor) = c("Yes","No")

data$nohxbleedingdisorder_skibioeli.factor = factor(data$nohxbleedingdisorder_skibioeli, levels = c("1","0"))
levels(data$nohxbleedingdisorder_skibioeli.factor) = c("Yes","No")

data$nomedsincrbleeding_skibioeli.factor = factor(data$nomedsincrbleeding_skibioeli, levels = c("1","0"))
levels(data$nomedsincrbleeding_skibioeli.factor) = c("Yes","No")

data$nonsaids_skibioeli.factor = factor(data$nonsaids_skibioeli, levels = c("1","0"))
levels(data$nonsaids_skibioeli.factor) = c("Yes","No")

data$lessth81mgaspirin_skibioeli.factor = factor(data$lessth81mgaspirin_skibioeli, levels = c("1","0"))
levels(data$lessth81mgaspirin_skibioeli.factor) = c("Yes","No")

data$noallergylocalanesthetic.factor = factor(data$noallergylocalanesthetic, levels = c("1","0"))
levels(data$noallergylocalanesthetic.factor) = c("Yes","No")

data$noinfectionskincond_skibioeli.factor = factor(data$noinfectionskincond_skibioeli, levels = c("1","0"))
levels(data$noinfectionskincond_skibioeli.factor) = c("Yes","No")

data$notpregnant_skibioeli.factor = factor(data$notpregnant_skibioeli, levels = c("1","0"))
levels(data$notpregnant_skibioeli.factor) = c("Yes","No")

data$eligibility_skibioeli.factor = factor(data$eligibility_skibioeli, levels = c("1","0"))
levels(data$eligibility_skibioeli.factor) = c("Yes","No")

