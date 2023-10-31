#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_physicalactivity.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$hakcal)="calories expended in exercise related activity - Harvard alumni scale"
label(data$totkkwk)="calories per kg expended in all activity"
label(data$totkcal)="calories expended in all activity"
label(data$highxmin)="minutes of vigorous actvity per week including brisk walking"
label(data$walktime)="minutes of any walking per week"
label(data$exercise)="exercise level 0=lt 30 mins and 3=gt 150 mins per week"

#Create new variables for factors
data$exercise.factor = factor(data$exercise, levels = c("0","3","2","1"))
levels(data$exercise.factor) = c("Less than 30 minutes of high intensity exercise in the past two weeks","More than 150 minutes of high intensity exercise in the past two weeks","Between 75 and 150 minutes of high intensitiy exercise in the past two weeks","Between 30 and 75 minutes of high intensity exercise in the past two weeks")

