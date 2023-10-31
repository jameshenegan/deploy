#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_activitymonitor.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_actmon)="CRF Version"
label(data$achq01)="Actiwatch or Actigraph done"
label(data$achq02a)="Hook up begin time"
label(data$achq02ap)="Hook up begin time am pm"
label(data$achq02c)="Hook up end time"
label(data$achq02cp)="Hook up end time am pm"
label(data$achq03)="Was Actiheart data completed upon return of the monitor"
label(data$achq04)="Diary completed upon return"
label(data$achq05)="Post Questionnaire completed upon return"
label(data$achq11)="Was the amount and intensity of your physical activity in the past seven days typical"
label(data$achq11a)="If not were you more or less active than usual"
label(data$achq12)="Was your physical activity limited by any temporary illness or injury?"
label(data$achq13)="Did you swim or engage in any other physical exercise without wearing the Activity"
label(data$achq13a)="Number of times without device"
label(data$achq13b)="Hours without device"
label(data$achq13c)="Intensity of activity without device"
label(data$achq14)="How much of the time during the past seven days did you feel you had a lot of energy"
label(data$achq15)="Past seven days how often have you felt unusually tired during the day"
label(data$achq16)="Rate how weak did you feel during the past seven days"
label(data$achq17)="Rate energy level during past seven days"
label(data$achq18)="In the past seven days did you ever exercise to the point of exhaustion"
label(data$achq18b)="Activity 1 begin time"
label(data$achq18bp)="Activity 1 begin time am pm"
label(data$achq18c)="Activity 1 end time"
label(data$achq18cp)="Activity 1 end time am pm"
label(data$achq18e)="Activity 2 begin time"
label(data$achq18ep)="Activity 2 begin time am pm"
label(data$achq18f)="Activity 2 end time"
label(data$achq18fp)="Activity 2 end time am pm"
label(data$achq18h)="Activity 3 begin time"
label(data$achq18hp)="Activity 3 begin time am pm"
label(data$achq18i)="Activity 3 end time"
label(data$achq18ip)="Activity 3 end time am pm"
label(data$achq01a1a_2)="Which device"
label(data$achq01a1a)="Which device"
label(data$achq01a1b)="DLW Done"
label(data$auto_id_actmon)="Unique Teleform Number"
label(data$testerid_actmon)="Tester ID"

#Create new variables for factors
data$achq01.factor = factor(data$achq01, levels = c("1","8","0","9","5","6","3","7","4"))
levels(data$achq01.factor) = c("Yes","Refused (but could do)","Other reason not done","Technical problems (no time or equipment problems)","Physical Problems","Cognitive Problems","Technical Problem (Bad Data)","Physical and Cognitive Problems","Not Completed (Less than 2 days)")

data$achq02ap.factor = factor(data$achq02ap, levels = c("2","1"))
levels(data$achq02ap.factor) = c("PM","AM")

data$achq02cp.factor = factor(data$achq02cp, levels = c("2","1"))
levels(data$achq02cp.factor) = c("Pm","Am")

data$achq03.factor = factor(data$achq03, levels = c("1","0","5","2","4","6","3"))
levels(data$achq03.factor) = c("Yes","Other please specify","Mechanical problems with the monitor","Participant refused","Severe skin irritation occurred","Improper attachment of monitor and/or electrodes","Participant forgot")

data$achq04.factor = factor(data$achq04, levels = c("1","0","3","2"))
levels(data$achq04.factor) = c("Yes","Other please specify","Participant forgot","Participant refused")

data$achq05.factor = factor(data$achq05, levels = c("1","0","3","2"))
levels(data$achq05.factor) = c("Yes","Other please specify","Participant forgot","Participant refused")

data$achq11.factor = factor(data$achq11, levels = c("1","0"))
levels(data$achq11.factor) = c("Yes","No")

data$achq11a.factor = factor(data$achq11a, levels = c("0","1"))
levels(data$achq11a.factor) = c("Less","More")

data$achq12.factor = factor(data$achq12, levels = c("0","1"))
levels(data$achq12.factor) = c("No","Yes")

data$achq13.factor = factor(data$achq13, levels = c("0","1"))
levels(data$achq13.factor) = c("No","Yes")

data$achq13c.factor = factor(data$achq13c, levels = c("1","0","2"))
levels(data$achq13c.factor) = c("Moderate","Light","Vigorous")

data$achq14.factor = factor(data$achq14, levels = c("4","3","2","5","1"))
levels(data$achq14.factor) = c("Most","A good bit","Some","All","A little")

data$achq15.factor = factor(data$achq15, levels = c("1","2","3"))
levels(data$achq15.factor) = c("Some","Most","All")

data$achq16.factor = factor(data$achq16, levels = c("0","1","2","3","5","4","7","6","8","10","9"))
levels(data$achq16.factor) = c("0","1","2","3","5","4","7","6","8","10","9")

data$achq17.factor = factor(data$achq17, levels = c("8","7","5","9","6","4","3","10","2","1","0"))
levels(data$achq17.factor) = c("8","7","5","9","6","4","3","10","2","1","0")

data$achq18.factor = factor(data$achq18, levels = c("0","1"))
levels(data$achq18.factor) = c("No","Yes")

data$achq18bp.factor = factor(data$achq18bp, levels = c("1","2"))
levels(data$achq18bp.factor) = c("Am","Pm")

data$achq18cp.factor = factor(data$achq18cp, levels = c("2","1"))
levels(data$achq18cp.factor) = c("Pm","Am")

data$achq18ep.factor = factor(data$achq18ep, levels = c("1","2"))
levels(data$achq18ep.factor) = c("Am","Pm")

data$achq18fp.factor = factor(data$achq18fp, levels = c("2","1"))
levels(data$achq18fp.factor) = c("Pm","Am")

data$achq18hp.factor = factor(data$achq18hp, levels = c("2","1"))
levels(data$achq18hp.factor) = c("Pm","Am")

data$achq18ip.factor = factor(data$achq18ip, levels = c("2","1"))
levels(data$achq18ip.factor) = c("Pm","Am")

data$achq01a1a_2.factor = factor(data$achq01a1a_2, levels = c("2","3","4"))
levels(data$achq01a1a_2.factor) = c("Actigraph ","Both","Actiwatch")

data$achq01a1a.factor = factor(data$achq01a1a, levels = c("3","2","1","4"))
levels(data$achq01a1a.factor) = c("Both","Actigraph ","Actiheart","Actiwatch")

data$achq01a1b.factor = factor(data$achq01a1b, levels = c("0","1"))
levels(data$achq01a1b.factor) = c("No","Yes")

