#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/cog_adrcces.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$cesd01)="I was bothered by things that usually do"
label(data$cesd02)="I did not feel like eating; my appetite"
label(data$cesd03)="I felt that I could not shake off the bl"
label(data$cesd04)="I felt that I was just as good as other"
label(data$cesd05)="I had trouble keeping my mind on what I"
label(data$cesd06)="I felt depressed"
label(data$cesd07)="I felt that everything I did was an effo"
label(data$cesd08)="I felt hopeful about the future"
label(data$cesd09)="I thought my life had been a failure"
label(data$cesd10)="I felt fearful"
label(data$cesd11)="My sleep was restless"
label(data$cesd12)="I was happy"
label(data$cesd13)="I talked less than usual"
label(data$cesd14)="I felt lonely"
label(data$cesd15)="People were unfriendly"
label(data$cesd16)="I enjoyed life"
label(data$cesd17)="I had crying spells"
label(data$cesd18)="I felt sad"
label(data$cesd19)="I felt people disliked me"
label(data$cesd20)="I could not get going"
label(data$cestot)="Total Score"
