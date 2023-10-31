#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_bodymeasurements.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_bodmea)="CRF Version"
label(data$anttid1)="Tester ID 1"
label(data$ant01)="Body Temperature (F)"
label(data$ant02)="Pulse"
label(data$ant03)="Respirations"
label(data$ant05)="Weight"
label(data$ant06a)="Height measurement 1"
label(data$ant06b)="Height measurement 2"
label(data$arm1)="R arm skinfold thickness mm 1"
label(data$ant12a)="Right arm skinfold thickness measurement 1"
label(data$arm2)="R arm skinfold thickness mm 2"
label(data$ant12b)="Right arm skinfold thickness measurement 2"
label(data$arm3)="R arm skinfold thickness mm 3"
label(data$ant12c)="Right arm skinfold thickness measurement 3"
label(data$ant05a2)="Weight not measured"
label(data$ant06a2)="Height not measured"
label(data$hvbp_rl)="Blood Pressure R or L"
label(data$hvsystolic)="Blood Pressure Systolic"
label(data$hvdiastolic)="Blood Pressure Diastolic"
label(data$hv_bp_rnd)="Blood Pressure Reason not done"
label(data$ant04a)="Blood Pressure Systolic"
label(data$ant04b)="Blood Pressure Diastolic"
label(data$ant06c)="Height measurement 3"
label(data$anttid3)="Tester ID 3"
label(data$ant13)="Tibia Length"
label(data$anttid2)="Tester ID 2"
label(data$ant07a)="Waist diameter measurement 1"
label(data$ant07b)="Waist diameter measurement 2"
label(data$ant07c)="Waist diameter measurement 3"
label(data$ant08a)="Waist depth measurement 1"
label(data$ant08b)="Waist depth measurement 2"
label(data$ant08c)="Waist depth measurement 3"
label(data$ant09a)="Upper abdomen circumference measurement 1"
label(data$ant09b)="Upper abdomen circumference measurement 2"
label(data$ant09c)="Upper abdomen circumference measurement 3"
label(data$ant10a)="Lower abdomen circumference measurement 1"
label(data$ant10b)="Lower abdomen circumference measurement 2"
label(data$ant10c)="Lower abdomen circumference measurement 3"
label(data$ant11a)="Buttock circumference measurement 1"
label(data$ant11b)="Buttock circumference measurement 2"
label(data$ant11c)="Buttock circumference measurement 3"
label(data$ant14a)="Head circumference measurement 1 before Dexa"
label(data$ant14b)="Head circumference measurement 2 before Dexa"
label(data$ant14c)="Head circumference measurement 3 after Dexa"
label(data$ant05a)="Weight not measured"
label(data$ant06a1)="Height not measured"
label(data$ant06a1_2)="Upper abdomen not measured"
label(data$ant06a1_3)="Lower abdomen not measured"
label(data$auto_id_bodmea)="Unique Teleform Number"

#Create new variables for factors
data$ant05a2.factor = factor(data$ant05a2, levels = c("555","666","777","888","999"))
levels(data$ant05a2.factor) = c("Physical problems","Mental problems","Both Physical and Mental problems","Refused but theoretically could do","Technical problems")

data$ant06a2.factor = factor(data$ant06a2, levels = c("555","666","777","888","999"))
levels(data$ant06a2.factor) = c("Physical problems","Mental problems","Both Physical and Mental problems","Refused but theoretically could do","Technical problems")

data$hvbp_rl.factor = factor(data$hvbp_rl, levels = c("1","2"))
levels(data$hvbp_rl.factor) = c("Rignt","Left")

data$ant05a.factor = factor(data$ant05a, levels = c("555","777","0","888","666","999"))
levels(data$ant05a.factor) = c("555","777","Not Measured","888","666","999")

data$ant06a1.factor = factor(data$ant06a1, levels = c("555","777","999","888","0","666"))
levels(data$ant06a1.factor) = c("555","777","999","888","Not Measured","666")

data$ant06a1_2.factor = factor(data$ant06a1_2, levels = c("555","0","888","666","777","999"))
levels(data$ant06a1_2.factor) = c("555","Not Measured","888","666","777","999")

data$ant06a1_3.factor = factor(data$ant06a1_3, levels = c("555","0","888","666","777","999"))
levels(data$ant06a1_3.factor) = c("555","Not Measured","888","666","777","999")

