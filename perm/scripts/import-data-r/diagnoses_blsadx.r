#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/diagnoses_blsadx.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$category)="Category"
label(data$certainty)="Certainty"
label(data$dx_index)="Diagnosis Index"
label(data$icd9_1)="ICD9 Code 1"
label(data$icd9_2)="ICD9 Code 2"
label(data$icd9_3)="ICD9 Code 3"
label(data$source)="Source"
label(data$visit)="Visit"
label(data$year_1st_act)="Year First"
label(data$year_last_act)="Year Last"
