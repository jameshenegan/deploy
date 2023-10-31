#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_parentallongevity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_parlon)="CRF Version"
label(data$pl1)="Were you adopted"
label(data$pl2)="Is your biological mother alive"
label(data$pl2a)="What is your mother's age now"
label(data$pl2b)="How old was your mother when she died"
label(data$pl2c)="Cause of death"
label(data$pl3)="Is your biological father alive"
label(data$pl3a)="What is your father's age now"
label(data$pl3b)="How old was your father when he died"
label(data$pl3c)="Cause of death"
label(data$pl4)="Is your adoptivel mother alive"
label(data$pl4a)="What is your mother's age now"
label(data$pl4b)="How old was your mother when she died"
label(data$pl4c)="Cause of death"
label(data$pl5)="Is your adoptive father alive"
label(data$pl5a)="What is your father's age now"
label(data$pl5b)="How old was your father when he died"
label(data$pl5c)="Cause of death"
label(data$testerid_parlon)="Tester ID"

#Create new variables for factors
data$pl1.factor = factor(data$pl1, levels = c("0","1","7","8"))
levels(data$pl1.factor) = c("No","Yes","Prefer not to answer","Dont know")

data$pl2.factor = factor(data$pl2, levels = c("0","1","8","7"))
levels(data$pl2.factor) = c("No","Yes","Dont know","Prefer not to answer")

data$pl2c.factor = factor(data$pl2c, levels = c("4","13","14","2","1","6","3","10","5","9","8","7","11","12"))
levels(data$pl2c.factor) = c("Cancer","Other (please specify)","Undetermined/unknown","Stroke","Myocardial infarction","Alzheimers disease/other dementia","Other CVD","Complications of fracture","COPD (emphysema chronic bronchitis)","Kidney disease","Influenze or pneumonia","Diabetes","Accident/trauma","Intentional self-harm (suicide)")

data$pl3.factor = factor(data$pl3, levels = c("0","1","8","7"))
levels(data$pl3.factor) = c("No","Yes","Dont know","Prefer not to answer")

data$pl3c.factor = factor(data$pl3c, levels = c("4","1","13","2","14","11","8","6","9","5","3","7","10","12"))
levels(data$pl3c.factor) = c("Cancer","Myocardial infarction","Other (please specify)","Stroke","Undetermined/unknown","Accident/trauma","Influenze or pneumonia","Alzheimers disease/other dementia","Kidney disease","COPD (emphysema chronic bronchitis)","Other CVD","Diabetes","Complications of fracture","Intentional self-harm (suicide)")

data$pl4.factor = factor(data$pl4, levels = c("0","8","7","1"))
levels(data$pl4.factor) = c("No","Dont know","Prefer not to answer","Yes")

data$pl4c.factor = factor(data$pl4c, levels = c("6","14","8","3","7","1","10","11","12","13","2","4","5","9"))
levels(data$pl4c.factor) = c("Alzheimers disease/other dementia","Undetermined/unknown","Influenze or pneumonia","Other CVD","Diabetes","Myocardial infarction","Complications of fracture","Accident/trauma","Intentional self-harm (suicide)","Other (please specify)","Stroke","Cancer","COPD (emphysema chronic bronchitis)","Kidney disease")

data$pl5.factor = factor(data$pl5, levels = c("0","8","7","1"))
levels(data$pl5.factor) = c("No","Dont know","Prefer not to answer","Yes")

data$pl5c.factor = factor(data$pl5c, levels = c("14","8","13","4","3","2","12","1","10","11","5","6","7","9"))
levels(data$pl5c.factor) = c("Undetermined/unknown","Influenze or pneumonia","Other (please specify)","Cancer","Other CVD","Stroke","Intentional self-harm (suicide)","Myocardial infarction","Complications of fracture","Accident/trauma","COPD (emphysema chronic bronchitis)","Alzheimers disease/other dementia","Diabetes","Kidney disease")

