#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/meds_blsa_rx.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$drug)="Drug Name"
label(data$dose)="Amount per tablet or other unit"
label(data$dose_units)="Units for the amount"
label(data$route)="How medication is taken"
label(data$freq_day)="Doses per day"
label(data$freq_week)="Doses per week"
label(data$use)="Use"
label(data$length_of_use)="Length of use"
label(data$length_of_stopped)="If stopped, how long ago"
label(data$reason_stopped)="If stopped, reason for stopping"
label(data$taken_last_48_hrs)="Taken in last 48 hours"
label(data$irregular)="Irregular Dosage"
label(data$dosenote)="Dosage Note"
label(data$who)="ATC Code(s) found in WHO file"
label(data$atc1)="ATC Code 1"
label(data$atc2)="ATC Code 2"
label(data$atc3)="ATC Code 3"
label(data$atc4)="ATC Code 4"
label(data$atc5)="ATC Code 5"
label(data$atc6)="ATC Code 6"
label(data$atc7)="ATC Code 7"
label(data$atc8)="ATC Code 8"
label(data$atc9)="ATC Code 9"
label(data$atc10)="ATC Code 10"
label(data$atc11)="ATC Code 11"
label(data$atc12)="ATC Code 12"
label(data$atc13)="ATC Code 13"
label(data$atc14)="ATC Code 14"
label(data$atc15)="ATC Code 15"

#Create new variables for factors
data$dose_units.factor = factor(data$dose_units, levels = c("1","3","4","2","0","5","23"))
levels(data$dose_units.factor) = c("mg","Other than mg or cc","Unspecified","cc or mL",".",".",".")

data$route.factor = factor(data$route, levels = c("1","4","5","3","7","6","2","9","8","0","14"))
levels(data$route.factor) = c("All p.o. except sublingual","Eye/nose topicals/sprays","Other topicals","Inhaler","Parenteral","Suppositories","Sublingual","Other/unknown","Intra-articular",".",".")

data$use.factor = factor(data$use, levels = c("1","2","3","5","4","7","0"))
levels(data$use.factor) = c("Regularly","Occasionally","Stopped","Multiple Courses","Current short term use",".",".")

data$length_of_use.factor = factor(data$length_of_use, levels = c("4","5","1","2","3","9","7","6","8"))
levels(data$length_of_use.factor) = c("One to five years","More than five years","Less than one month","One to five months","Six to eleven months",".",".",".",".")

data$length_of_stopped.factor = factor(data$length_of_stopped, levels = c("4","2","3","1","5","6","14","0","13"))
levels(data$length_of_stopped.factor) = c("One to five years","One to five months","Six to eleven months","Less than one month","More than five years",".",".",".",".")

data$reason_stopped.factor = factor(data$reason_stopped, levels = c("2","1","3","4","6","7","5","0"))
levels(data$reason_stopped.factor) = c("Not needed","Completed course","Side effects","Lacked efficacy","Unknown","Convenience","Rx expired",".")

data$taken_last_48_hrs.factor = factor(data$taken_last_48_hrs, levels = c("1","0","2","4","5","3","11"))
levels(data$taken_last_48_hrs.factor) = c("Yes","No","Unsure",".",".",".",".")

