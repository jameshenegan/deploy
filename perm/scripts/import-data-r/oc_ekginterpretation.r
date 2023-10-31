#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_ekginterpretation.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_ekgint)="CRF Version"
label(data$ekgcdrid)="Coder ID"
label(data$ekg01)="EKG done"
label(data$ekg02)="EKG02"
label(data$ekg03)="EKG03"
label(data$ekg04)="EKG04"
label(data$ekg05)="EKG05"
label(data$ekg06)="EKG06"
label(data$ekg07)="EKG07"
label(data$ekg08)="EKG08"
label(data$ekg30)="EKG30"
label(data$ekg09)="EKG09"
label(data$ekg26)="EKG26"
label(data$ekg27)="EKG27"
label(data$ekg28)="EKG28"
label(data$ekg29)="EKG29"
label(data$auto_id_ekgint)="Unique Teleform Number"
label(data$testerid_ekgint)="Tester ID"

#Create new variables for factors
data$ekg01.factor = factor(data$ekg01, levels = c("1","0","9","7","5","6","8"))
levels(data$ekg01.factor) = c("Yes","Other","Technical problems","Physical and cognitive","Physical","Cognitive","Refused")

data$ekg02.factor = factor(data$ekg02, levels = c("1","2","3","4","5"))
levels(data$ekg02.factor) = c("1","2","3","4","5")

data$ekg03.factor = factor(data$ekg03, levels = c("1","3","2"))
levels(data$ekg03.factor) = c("1","3","2")

data$ekg04.factor = factor(data$ekg04, levels = c("3","2","1","4"))
levels(data$ekg04.factor) = c("3","2","1","4")

data$ekg05.factor = factor(data$ekg05, levels = c("3","2","1","4"))
levels(data$ekg05.factor) = c("3","2","1","4")

data$ekg06.factor = factor(data$ekg06, levels = c("3","2","5","1","4"))
levels(data$ekg06.factor) = c("3","2","5","1","4")

data$ekg07.factor = factor(data$ekg07, levels = c("2","3","5","1","6","4"))
levels(data$ekg07.factor) = c("2","3","5","1","6","4")

data$ekg08.factor = factor(data$ekg08, levels = c("8","1","9","3","7","2","4","5","6"))
levels(data$ekg08.factor) = c("8","1","9","3","7","2","4","5","6")

data$ekg30.factor = factor(data$ekg30, levels = c("1","3","4","2","8","5","6","7"))
levels(data$ekg30.factor) = c("1","3","4","2","8","5","6","7")

data$ekg09.factor = factor(data$ekg09, levels = c("5","4","2","1","3","6","7"))
levels(data$ekg09.factor) = c("5","4","2","1","3","6","7")

data$ekg26.factor = factor(data$ekg26, levels = c("1","2","3"))
levels(data$ekg26.factor) = c("1","2","3")

data$ekg27.factor = factor(data$ekg27, levels = c("2","4","1","3","5","7","6","8"))
levels(data$ekg27.factor) = c("2","4","1","3","5","7","6","8")

data$ekg28.factor = factor(data$ekg28, levels = c("1","2","3"))
levels(data$ekg28.factor) = c("1","2","3")

data$ekg29.factor = factor(data$ekg29, levels = c("6","7","4","1","2","3","5","8"))
levels(data$ekg29.factor) = c("6","7","4","1","2","3","5","8")

