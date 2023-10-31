#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_cohort.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$visitmonth)="Month of Visit"
label(data$visityear)="Year of Visit"
label(data$daysfromv1)="Days Since Visit 1 Baseline"
label(data$yearsfromv1)="Years Since Visit 1 Baseline"
label(data$yearsfromprevvisit)="Years Since Previous Visit"
label(data$visitseq)="Sequential Visit Number"
label(data$numvisits)="Number of Visits"
label(data$visittype)="Type of Visit"
label(data$homevisit)="Home Visit Indicator"
label(data$visitduration)="Visit Encounter Duration"
label(data$laststatus)="Last Known Status"
label(data$v1tostatusdays)="Days from Visit 1 to Last Identified Study Status Date"

#Create new variables for factors
data$visitmonth.factor = factor(data$visitmonth, levels = c("6","8","3","5","7","10","4","9","11","1","2","12"))
levels(data$visitmonth.factor) = c("June","August","March","May","July","October","April","September","November","January","February","December")

data$visittype.factor = factor(data$visittype, levels = c("1","2","3"))
levels(data$visittype.factor) = c("Clinical","Home","Clinical + Home Split Visit")

data$homevisit.factor = factor(data$homevisit, levels = c("0","1"))
levels(data$homevisit.factor) = c("Clinic Visit","Home Visit")

data$laststatus.factor = factor(data$laststatus, levels = c("2","1","3","4"))
levels(data$laststatus.factor) = c("Deceased","On Study","Withdrawn","Terminated")

