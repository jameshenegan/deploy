#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_medicalhx.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$mi_hx_ever)="Self-Reported History of MI"
label(data$hf_hx_ever)="Self-Reported History of HF"
label(data$angina_hx_ever)="Self-Reported History of Angina"
label(data$cld_hx_ever)="Self-Reported History of CLD"
label(data$asthma_hx_ever)="Self-Reported History of Asthma"
label(data$liver_dz_hx_ever)="Self-Reported History of Liver Disease"
label(data$hepatitis_hx_ever)="Self-Reported History of Hepatitis"
label(data$hiv_hx_ever)="Self-Reported History of HIV/AIDS"
label(data$ckd_hx_ever)="Self-Reported History of CKD"
label(data$stroke_hx_ever)="Self-Reported History of Stroke"
label(data$tia_hx_ever)="Self-Reported History of TIA"
label(data$pn_hx_ever)="Self-Reported History of PN"
label(data$htn_hx_ever)="Self-Reported History of HTN"
label(data$dm_hx_ever)="Self-Reported History of DM"
label(data$hld_hx_ever)="Self-Reported History of HLD"
label(data$vascular_proc_hx_ever)="Self-Reported History of Vascular Procedures"
label(data$cancer_hx_ever)="Self-Reported History of Cancer"
label(data$arthritis_hx_ever)="Self-Reported History of Arthritis"
label(data$stenosis_hx_ever)="Self-Reported History of Spinal Stenosis"
label(data$osteoporosis_hx_ever)="Self-Reported History of Osteoporosis"
label(data$ctd_hx_ever)="Self-Reported History of CTD"
label(data$parkinson_hx_ever)="Self-Reported History of Parkinson"
label(data$pad_hx_ever)="Self-Reported History of PAD"
label(data$pvd_hx_ever)="Self-Reported History of Varicose Veins"
label(data$cataract1_hx_ever)="Self-Reported History of Cataracts"
label(data$cataract2_hx_ever)="Self-Reported History of Cataracts (both eyes)"
label(data$cataract_surg_hx_ever)="Self-Reported History of Cataract Procedures"
label(data$ulcer_hx_ever)="Self-Reported History of Ulcer"
label(data$depression_hx_ever)="Self-Reported History of Depression"
label(data$covid_hx_ever)="Self-Reported History of COVID-19"

#Create new variables for factors
data$mi_hx_ever.factor = factor(data$mi_hx_ever, levels = c("0","1"))
levels(data$mi_hx_ever.factor) = c("No","Yes")

data$hf_hx_ever.factor = factor(data$hf_hx_ever, levels = c("0","1"))
levels(data$hf_hx_ever.factor) = c("No","Yes")

data$angina_hx_ever.factor = factor(data$angina_hx_ever, levels = c("0","1"))
levels(data$angina_hx_ever.factor) = c("No","Yes")

data$cld_hx_ever.factor = factor(data$cld_hx_ever, levels = c("0","1"))
levels(data$cld_hx_ever.factor) = c("No","Yes")

data$asthma_hx_ever.factor = factor(data$asthma_hx_ever, levels = c("0","1"))
levels(data$asthma_hx_ever.factor) = c("No","Yes")

data$liver_dz_hx_ever.factor = factor(data$liver_dz_hx_ever, levels = c("0","1"))
levels(data$liver_dz_hx_ever.factor) = c("No","Yes")

data$hepatitis_hx_ever.factor = factor(data$hepatitis_hx_ever, levels = c("0","1"))
levels(data$hepatitis_hx_ever.factor) = c("No","Yes")

data$hiv_hx_ever.factor = factor(data$hiv_hx_ever, levels = c("0","1"))
levels(data$hiv_hx_ever.factor) = c("No","Yes")

data$ckd_hx_ever.factor = factor(data$ckd_hx_ever, levels = c("0","1"))
levels(data$ckd_hx_ever.factor) = c("No","Yes")

data$stroke_hx_ever.factor = factor(data$stroke_hx_ever, levels = c("0","1"))
levels(data$stroke_hx_ever.factor) = c("No","Yes")

data$tia_hx_ever.factor = factor(data$tia_hx_ever, levels = c("0","1"))
levels(data$tia_hx_ever.factor) = c("No","Yes")

data$pn_hx_ever.factor = factor(data$pn_hx_ever, levels = c("0","1"))
levels(data$pn_hx_ever.factor) = c("No","Yes")

data$htn_hx_ever.factor = factor(data$htn_hx_ever, levels = c("1","0"))
levels(data$htn_hx_ever.factor) = c("Yes","No")

data$dm_hx_ever.factor = factor(data$dm_hx_ever, levels = c("0","1"))
levels(data$dm_hx_ever.factor) = c("No","Yes")

data$hld_hx_ever.factor = factor(data$hld_hx_ever, levels = c("1","0"))
levels(data$hld_hx_ever.factor) = c("Yes","No")

data$vascular_proc_hx_ever.factor = factor(data$vascular_proc_hx_ever, levels = c("0","1"))
levels(data$vascular_proc_hx_ever.factor) = c("No","Yes")

data$cancer_hx_ever.factor = factor(data$cancer_hx_ever, levels = c("0","1"))
levels(data$cancer_hx_ever.factor) = c("No","Yes")

data$arthritis_hx_ever.factor = factor(data$arthritis_hx_ever, levels = c("1","0"))
levels(data$arthritis_hx_ever.factor) = c("Yes","No")

data$stenosis_hx_ever.factor = factor(data$stenosis_hx_ever, levels = c("0","1"))
levels(data$stenosis_hx_ever.factor) = c("No","Yes")

data$osteoporosis_hx_ever.factor = factor(data$osteoporosis_hx_ever, levels = c("0","1"))
levels(data$osteoporosis_hx_ever.factor) = c("No","Yes")

data$ctd_hx_ever.factor = factor(data$ctd_hx_ever, levels = c("0","1"))
levels(data$ctd_hx_ever.factor) = c("No","Yes")

data$parkinson_hx_ever.factor = factor(data$parkinson_hx_ever, levels = c("0","1"))
levels(data$parkinson_hx_ever.factor) = c("No","Yes")

data$pad_hx_ever.factor = factor(data$pad_hx_ever, levels = c("0","1"))
levels(data$pad_hx_ever.factor) = c("No","Yes")

data$pvd_hx_ever.factor = factor(data$pvd_hx_ever, levels = c("0","1"))
levels(data$pvd_hx_ever.factor) = c("No","Yes")

data$cataract1_hx_ever.factor = factor(data$cataract1_hx_ever, levels = c("0","1"))
levels(data$cataract1_hx_ever.factor) = c("No","Yes")

data$cataract2_hx_ever.factor = factor(data$cataract2_hx_ever, levels = c("1","0"))
levels(data$cataract2_hx_ever.factor) = c("Yes","No")

data$cataract_surg_hx_ever.factor = factor(data$cataract_surg_hx_ever, levels = c("0","1"))
levels(data$cataract_surg_hx_ever.factor) = c("No","Yes")

data$ulcer_hx_ever.factor = factor(data$ulcer_hx_ever, levels = c("0","1"))
levels(data$ulcer_hx_ever.factor) = c("No","Yes")

data$depression_hx_ever.factor = factor(data$depression_hx_ever, levels = c("0","1"))
levels(data$depression_hx_ever.factor) = c("No","Yes")

data$covid_hx_ever.factor = factor(data$covid_hx_ever, levels = c("0","1"))
levels(data$covid_hx_ever.factor) = c("No","Yes")

