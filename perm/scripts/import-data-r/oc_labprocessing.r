#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_labprocessing.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_labpro)="CRF Version"
label(data$lab03)="Venipuncture done"
label(data$lab03c)="Venipuncture reason not done"
label(data$lab03a)="Venipuncture require more than 2 sticks"
label(data$lab03b)="Veins quality assessment"
label(data$lab04)="Were all expected samples collected at first day"
label(data$lab04a)="Fasting"
label(data$auto_id_labpro)="Unique Teleform Number"
label(data$lab01)="Have you donated blood within 56 days"
label(data$lab02)="Have history of anemia"
label(data$lab07)="Was 24 hour urine collection obtained"
label(data$lab07a_labpro)="24 hour urine begin time"
label(data$lab07b_labpro)="24 hour urine end time"
label(data$lab06)="Urine specimen collected for UA"
label(data$lab06a)="Urine Fasting or Non Fasting"
label(data$lab07d)="Total time for 24 hr urine"
label(data$testerid_labpro)="Tester ID"

#Create new variables for factors
data$lab03.factor = factor(data$lab03, levels = c("1","0"))
levels(data$lab03.factor) = c("Yes","No")

data$lab03c.factor = factor(data$lab03c, levels = c("0","2","7","9","1","5"))
levels(data$lab03c.factor) = c("Other (please specify)","Insufficient venous access","Refused","Technical problems","Exclusion criteria (includes lower hemoglobin)","Physical problems")

data$lab03a.factor = factor(data$lab03a, levels = c("0","1"))
levels(data$lab03a.factor) = c("No","Yes")

data$lab03b.factor = factor(data$lab03b, levels = c("3","4","2","1"))
levels(data$lab03b.factor) = c("Good (moderate thin veins adequate blood flow)","Excellent (large veins no problems all tubes collected)","Fair (this veins slow blood flow)","Poor (small veins could not thread IV difficult blood blow)")

data$lab04.factor = factor(data$lab04, levels = c("1","0"))
levels(data$lab04.factor) = c("Yes","No")

data$lab04a.factor = factor(data$lab04a, levels = c("1","0"))
levels(data$lab04a.factor) = c("Fasting","Not fasting")

data$lab01.factor = factor(data$lab01, levels = c("0","1"))
levels(data$lab01.factor) = c("No","Yes")

data$lab02.factor = factor(data$lab02, levels = c("0","1"))
levels(data$lab02.factor) = c("No","Yes")

data$lab07.factor = factor(data$lab07, levels = c("1","0"))
levels(data$lab07.factor) = c("Yes","No")

data$lab06.factor = factor(data$lab06, levels = c("1","0"))
levels(data$lab06.factor) = c("Yes","No")

data$lab06a.factor = factor(data$lab06a, levels = c("1","0"))
levels(data$lab06a.factor) = c("Fasting","Not fasting")

