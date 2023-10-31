#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_consentparticipant.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_conpar)="CRF Version"
label(data$dna)="MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
label(data$entered_by)="Staffmember entering this Consent"
label(data$future_studies1)="Samples my be used in future studies."
label(data$future_studies2)="YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label(data$future_studies_shared)="YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label(data$systemrecordid)="ID from MySql Consents Table"

#Create new variables for factors
data$dna.factor = factor(data$dna, levels = c("1","0"))
levels(data$dna.factor) = c("YES - I consent to the DNA collection.","NO - I do NOT consent to the DNA collection.")

data$future_studies1.factor = factor(data$future_studies1, levels = c("2","1","3","4"))
levels(data$future_studies1.factor) = c("YES - these samples may be used for other research projects without contacting me even if the identification code is left on the samples","YES - these samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine","MAYBE - I wish to be re-contacted if further studies with my samples are considered","NO - under no circumstances shall my samples be used for any future studies.")

data$future_studies2.factor = factor(data$future_studies2, levels = c("1","0"))
levels(data$future_studies2.factor) = c("YES - Specimens and data may be stored and used for future research studies.","NO - Specimens and data may NOT be stored and used for future research studies.")

data$future_studies_shared.factor = factor(data$future_studies_shared, levels = c("1","0"))
levels(data$future_studies_shared.factor) = c("YES - Specimens and data may be shared with other researchers and used by these researchers for future research.","NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research.")

