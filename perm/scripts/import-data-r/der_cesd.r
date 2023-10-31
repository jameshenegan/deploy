#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_cesd.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$cesd01)="I was bothered by things that usually do not bother me"
label(data$cesd02)="I did not feel like eating; my appetite was poor"
label(data$cesd03)="I felt that I could not shake off the blues even with the help from my family and friends"
label(data$cesd04)="I felt that I was just as good as other people"
label(data$cesd05)="I had trouble keeping my mind on what I was doing"
label(data$cesd06)="I felt depressed"
label(data$cesd07)="I felt that everything I did was an effort"
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
label(data$cesd_der)="CESD Depressive Symptoms (CESD) Score"
label(data$cesd_der16)="CESD Symptoms of Depression (CESD 16+)"
label(data$cesd_der20)="CESD Significant Symptoms of Depression (CESD 20+)"
label(data$depression)="Depression (Depressive Symptoms or Treatment/Counseling)"

#Create new variables for factors
data$cesd01.factor = factor(data$cesd01, levels = c("0","1","2","3"))
levels(data$cesd01.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd02.factor = factor(data$cesd02, levels = c("0","1","2","3"))
levels(data$cesd02.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd03.factor = factor(data$cesd03, levels = c("0","1","2","3"))
levels(data$cesd03.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd04.factor = factor(data$cesd04, levels = c("0","3","1","2"))
levels(data$cesd04.factor) = c("Most or Almost All the Time","Rarely or None of the Time","Moderately or Much of the time","Some or Little of the Time")

data$cesd05.factor = factor(data$cesd05, levels = c("0","1","2","3"))
levels(data$cesd05.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd06.factor = factor(data$cesd06, levels = c("0","1","2","3"))
levels(data$cesd06.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd07.factor = factor(data$cesd07, levels = c("0","1","2","3"))
levels(data$cesd07.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd08.factor = factor(data$cesd08, levels = c("0","1","3","2"))
levels(data$cesd08.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Rarely or None of the Time","Some or Little of the Time")

data$cesd09.factor = factor(data$cesd09, levels = c("0","1","2","3"))
levels(data$cesd09.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd10.factor = factor(data$cesd10, levels = c("0","1","2","3"))
levels(data$cesd10.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd11.factor = factor(data$cesd11, levels = c("0","1","2","3"))
levels(data$cesd11.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd12.factor = factor(data$cesd12, levels = c("0","1","2","3"))
levels(data$cesd12.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Some or Little of the Time","Rarely or None of the Time")

data$cesd13.factor = factor(data$cesd13, levels = c("0","1","2","3"))
levels(data$cesd13.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd14.factor = factor(data$cesd14, levels = c("0","1","2","3"))
levels(data$cesd14.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd15.factor = factor(data$cesd15, levels = c("0","1","2","3"))
levels(data$cesd15.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd16.factor = factor(data$cesd16, levels = c("0","1","3","2"))
levels(data$cesd16.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Rarely or None of the Time","Some or Little of the Time")

data$cesd17.factor = factor(data$cesd17, levels = c("0","1","2","3"))
levels(data$cesd17.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd18.factor = factor(data$cesd18, levels = c("0","1","2","3"))
levels(data$cesd18.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd19.factor = factor(data$cesd19, levels = c("0","1","2","3"))
levels(data$cesd19.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd20.factor = factor(data$cesd20, levels = c("0","1","2","3"))
levels(data$cesd20.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time")

data$cesd_der16.factor = factor(data$cesd_der16, levels = c("0","1"))
levels(data$cesd_der16.factor) = c("Symptoms Absent","Symptoms Present")

data$cesd_der20.factor = factor(data$cesd_der20, levels = c("0","1"))
levels(data$cesd_der20.factor) = c("Significant Symptoms Absent","Significant Symptoms Present")

data$depression.factor = factor(data$depression, levels = c("0","1"))
levels(data$depression.factor) = c("Depression Absent","Depression Present")

