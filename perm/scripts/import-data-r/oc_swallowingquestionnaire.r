#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_swallowingquestionnaire.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_swaque)="CRF Version"
label(data$swaq01)="Cough when drink liquids"
label(data$swaq02)="Cough when eat solild food"
label(data$swaq03)="Need to drink fluids to wash food down"
label(data$swaq04)="I choke when I take my medication"
label(data$auto_id_swaque)="Unique Teleform Number"
label(data$testerid_swaque)="Tester ID"

#Create new variables for factors
data$swaq01.factor = factor(data$swaq01, levels = c("0","1","2"))
levels(data$swaq01.factor) = c("Never","Sometimes","Always")

data$swaq02.factor = factor(data$swaq02, levels = c("0","1","2"))
levels(data$swaq02.factor) = c("Never","Sometimes","Always")

data$swaq03.factor = factor(data$swaq03, levels = c("0","1","2"))
levels(data$swaq03.factor) = c("Never","Sometimes","Always")

data$swaq04.factor = factor(data$swaq04, levels = c("0","1","2"))
levels(data$swaq04.factor) = c("Never","Sometimes","Always")

