#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_cognition.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$cogn_status)="4-level Cognitive Status at visit"
label(data$last_cogn_status)="4-level Cognitive Status at last case conference"
label(data$last_cogn_status_dementia)="Dementia diagnosis indicator at last case conference"
label(data$last_cogn_status_alzdis)="Alzheimers Disease (AD) diagnosis at last case conference"
label(data$last_cogn_status_type1)="19-Level Primary DX Category at last case conference"
label(data$last_cogn_status_type2)="19-Level Secondary DX Category at last case conference"
label(data$last_cogn_status_caseconf)="Indicator of Case Conferencing for Cognitive Status Determination"

#Create new variables for factors
data$cogn_status.factor = factor(data$cogn_status, levels = c("0","1","2","3"))
levels(data$cogn_status.factor) = c("Normal","MCI","Dementia","Impaired Not-MCI/Dem")

data$last_cogn_status.factor = factor(data$last_cogn_status, levels = c("0","2","1","3"))
levels(data$last_cogn_status.factor) = c("Normal","Dementia","MCI","Impaired Not-MCI/Dem")

data$last_cogn_status_dementia.factor = factor(data$last_cogn_status_dementia, levels = c("0","1"))
levels(data$last_cogn_status_dementia.factor) = c("Non-Dementia","Dementia")

data$last_cogn_status_alzdis.factor = factor(data$last_cogn_status_alzdis, levels = c("0","1"))
levels(data$last_cogn_status_alzdis.factor) = c("non-AD","Dementia due to Alzheimers")

data$last_cogn_status_type1.factor = factor(data$last_cogn_status_type1, levels = c("0","2","4","3","9","5","8","14","6","17","10","18","15","7","1","11","12","13","19"))
levels(data$last_cogn_status_type1.factor) = c("Normal","Probable AD","Vascular dementia","Possible AD","Unspecified","Consistent w/ AD","PD","Dementia w/ lewy body","Depression","Vascular without dementia","Other primary DX","Other Dementia","Frontotemporal dementia","Alcohol abuse","Definite AD","Other secondary DX","Normal pressure hydrocephalus","Hippocampal sclerosis","Unknown")

data$last_cogn_status_type2.factor = factor(data$last_cogn_status_type2, levels = c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","17","18","19"))
levels(data$last_cogn_status_type2.factor) = c("Normal","Definite AD","Probable AD","Possible AD","Vascular dementia","Consistent w/ AD","Depression","Alcohol abuse","PD","Unspecified","Other primary DX","Other secondary DX","Normal pressure hydrocephalus","Hippocampal sclerosis","Dementia w/ lewy body","Frontotemporal dementia","Vascular without dementia","Other Dementia","Unknown")

data$last_cogn_status_caseconf.factor = factor(data$last_cogn_status_caseconf, levels = c("0","1"))
levels(data$last_cogn_status_caseconf.factor) = c("Participant has never been case-conferenced","Participant has been case-conferenced")

