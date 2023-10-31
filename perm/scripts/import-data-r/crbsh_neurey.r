#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/crbsh_neurey.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLS Visit ID"
label(data$reycto)="Rey Total copy"
label(data$reycti)="Rey Time copy"
label(data$reyito)="Rey Total immediate"
label(data$reyiti)="Rey Time immediate"
label(data$reydto)="Rey Total delayed"
label(data$reydti)="Rey Time delayed"
