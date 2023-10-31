#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_skinbiopsy.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_skibio)="CRF Version"
label(data$sb01)="Skin Biopsy consent reviewed"
label(data$sb02)="Eligibility criteria reviewed"
label(data$sb03)="Pre procedure body temperature"
label(data$sb04)="Pre procedure pulse"
label(data$sb05)="Pre procedure respirations"
label(data$sb06s)="Pre procedure BP systolic"
label(data$sb06d)="Pre procedure BP diastolic"
label(data$sb07)="Brief History and Physical performed"
label(data$sb09)="Total amount of Anesthesia given"
label(data$sb11)="Biopsy performed"
label(data$sb12)="Dressing applied"
label(data$sb13)="Post procedure instructions reviewed"
label(data$sbneedle)="Skin Biopsy needle size"
label(data$sbpostpulse)="Post procedure pulse"
label(data$sbpostresp)="Post procedure respirations"
label(data$sbpostsystolic)="Post procedure BP systolic"
label(data$sbpostdiastolic)="Post procedure BP diastolic"
label(data$sbsamples)="All samples collected"
label(data$testerid_skibio)="Tester ID"
label(data$provideinformedconsent_skibio)="Able to provide informed consent"
label(data$nohxbleedingdisorder_skibio)="Does not have history of bleeding disorder"
label(data$nomedsincrbleeding_skibio)="Does not take medications that will increase bleeding"
label(data$nonsaids_skibio)="Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label(data$lessth81mgaspirin_skibio)="Does not take more than 81 mg Aspirin a day"
label(data$noallergylocanesthetic)="Is not allergic to Lidocaine or other local anesthetic"
label(data$noinfectionskincond_skibio)="Has no active infection or chronic skin condition around biopsy site"
label(data$notpregnant_skibio)="Is not pregnant"
label(data$eligibility_skibio)="Eligibility"
label(data$anesthesiastart)="Anesthesia start time"
label(data$ampm1)="Anesthesia start time AmPm"
label(data$biopsystart)="Biopsy started"
label(data$ampm2)="Biopsy started AmPm"
label(data$biopsycomplete)="Biopsy completed"
label(data$ampm3)="Biopsy completed AmPm"
label(data$sbtid1)="Biopsy tester ID"
label(data$sbfatobtained)="total amount of fat obtained"
label(data$sbtestid)="Biopsy tester ID"
label(data$sb08)="Anesthesia start time"
label(data$sb10s)="Biopsy started"
label(data$sb10c)="Biopsy completed"
label(data$sbtesterid)="Biopsy tester ID"
label(data$auto_id_skibio)="Unique Teleform Number"
label(data$testerid_1_skibio)="Tester ID 1"

#Create new variables for factors
data$sb01.factor = factor(data$sb01, levels = c("1","0"))
levels(data$sb01.factor) = c("Yes","No")

data$sb02.factor = factor(data$sb02, levels = c("1","0"))
levels(data$sb02.factor) = c("Yes","No")

data$sb07.factor = factor(data$sb07, levels = c("1","0"))
levels(data$sb07.factor) = c("Yes","No")

data$sb11.factor = factor(data$sb11, levels = c("1","0"))
levels(data$sb11.factor) = c("Yes","No")

data$sb12.factor = factor(data$sb12, levels = c("1","0"))
levels(data$sb12.factor) = c("Yes","No")

data$sb13.factor = factor(data$sb13, levels = c("1","0"))
levels(data$sb13.factor) = c("Yes","No")

data$sbneedle.factor = factor(data$sbneedle, levels = c("1"))
levels(data$sbneedle.factor) = c("6mm")

data$sbsamples.factor = factor(data$sbsamples, levels = c("1","0"))
levels(data$sbsamples.factor) = c("Yes","No")

data$provideinformedconsent_skibio.factor = factor(data$provideinformedconsent_skibio, levels = c("1","0"))
levels(data$provideinformedconsent_skibio.factor) = c("Yes","No")

data$nohxbleedingdisorder_skibio.factor = factor(data$nohxbleedingdisorder_skibio, levels = c("1","0"))
levels(data$nohxbleedingdisorder_skibio.factor) = c("Yes","No")

data$nomedsincrbleeding_skibio.factor = factor(data$nomedsincrbleeding_skibio, levels = c("1","0"))
levels(data$nomedsincrbleeding_skibio.factor) = c("Yes","No")

data$nonsaids_skibio.factor = factor(data$nonsaids_skibio, levels = c("1","0"))
levels(data$nonsaids_skibio.factor) = c("Yes","No")

data$lessth81mgaspirin_skibio.factor = factor(data$lessth81mgaspirin_skibio, levels = c("1","0"))
levels(data$lessth81mgaspirin_skibio.factor) = c("Yes","No")

data$noallergylocanesthetic.factor = factor(data$noallergylocanesthetic, levels = c("1","0"))
levels(data$noallergylocanesthetic.factor) = c("Yes","No")

data$noinfectionskincond_skibio.factor = factor(data$noinfectionskincond_skibio, levels = c("1","0"))
levels(data$noinfectionskincond_skibio.factor) = c("Yes","No")

data$notpregnant_skibio.factor = factor(data$notpregnant_skibio, levels = c("1","0"))
levels(data$notpregnant_skibio.factor) = c("Yes","No")

data$eligibility_skibio.factor = factor(data$eligibility_skibio, levels = c("1","0"))
levels(data$eligibility_skibio.factor) = c("Yes","No")

data$ampm1.factor = factor(data$ampm1, levels = c("1","2"))
levels(data$ampm1.factor) = c("Am","Pm")

data$ampm2.factor = factor(data$ampm2, levels = c("1","2"))
levels(data$ampm2.factor) = c("Am","Pm")

data$ampm3.factor = factor(data$ampm3, levels = c("1","2"))
levels(data$ampm3.factor) = c("Am","Pm")

