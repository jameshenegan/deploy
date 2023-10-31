#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_holter.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_hol)="CRF Version"
label(data$holdone)="Was holter done"
label(data$hol2001)="Does participant have pacemaker"
label(data$hol02a)="Holter hook up begin time"
label(data$hol02ap)="Holter hook up begin time AmPm"
label(data$hol02b)="Holter hook up end time"
label(data$hol02bp)="Holter hook up end time AmPm"
label(data$hol02c)="Holter end event"
label(data$ogtt01_hol)="OGTT not done or forgot to press holter button"
label(data$ogtt01a)="OGTT day"
label(data$hol03a)="OGTT begin time"
label(data$hol03b)="OGTT begin event number"
label(data$hol03c)="OGTT end time"
label(data$hol03d)="OGTT end event number"
label(data$pe04_hol)="Physical Exam not done or forgot to press holter button"
label(data$petid)="Physical Exam tester ID"
label(data$pe04a)="Physical Exam day"
label(data$hol04a)="Physical Exam begin time"
label(data$hol04ap)="Physical Exam begin time AmPm"
label(data$hol04b)="Physical Exam begin event number"
label(data$hol04c)="Physical Exam end time"
label(data$hol04cp)="Physical Exam end time AmPm"
label(data$hol04d)="Physical Exam end event number"
label(data$hol05a)="Sleep time begin time"
label(data$hol05c)="Sleep time end time"
label(data$hol05b)="Sleep time begin event number"
label(data$hol05d)="Sleep time end event number"
label(data$hol06a)="Nap time begin time"
label(data$hol06c)="Nap time end time"
label(data$hol06b)="Nap time begin event number"
label(data$hol06d)="Nap time end event number"
label(data$hol07a)="GAIT begin time"
label(data$hol07c)="GAIT end time"
label(data$hol07b)="GAIT begin event number"
label(data$hol07d)="GAIT end event number"
label(data$hol08a)="Finger tapping begin time"
label(data$hol08c)="Finger tapping end time"
label(data$hol08b)="Finger tapping begin event number"
label(data$hol08d)="Finger tapping end event number"
label(data$hol09a)="DEXA scan begin time"
label(data$hol09c)="DEXA scan end time"
label(data$hol09b)="DEXA scan begin event number"
label(data$hol09d)="DEXA scan end event number"
label(data$tm10)="Treadmill not done or forgot to press holter button"
label(data$tmtid)="Treadmill tester ID"
label(data$tm10a)="Treadmill day"
label(data$hol10a)="Treadmill begin time"
label(data$hol10ap)="Treadmill begin time AmPm"
label(data$hol10c)="Treadmill end time"
label(data$hol10cp)="Treadmill end time AmPm"
label(data$hol10b)="Treadmill begin event number"
label(data$hol10d)="Treadmill end event number"
label(data$hol11a)="PFT begin time"
label(data$hol11c)="PFT end time"
label(data$hol11b)="PFT begin event number"
label(data$hol11d)="PFT end event number"
label(data$holt1d1)="Tester ID comment 1"
label(data$holaqid)="Acquired Tester ID"
label(data$holinid)="Interpreter Tester ID"
label(data$hol1001)="Rhythm"
label(data$hol2002)="Detected pacer"
label(data$hol2003)="Percent paced"
label(data$hol3001)="AV Blocks"
label(data$hol4001)="Distribution of pauses"
label(data$hol5001)="Intraventricular blocks"
label(data$hol5002)="IV Block type"
label(data$hol6001)="Supraventricular arrhythmias"
label(data$hol6002)="Distribution of SV arrhythmias"
label(data$hol6003)="SV symptom:"
label(data$hol6012)="SVT type"
label(data$hol7001)="Ventricular arrhythmias"
label(data$hol7002)="Distribution of Ventricular arrhythmias"
label(data$hol7003)="Ventricular arrhythmias symptom"
label(data$hol8001)="Recording quality"
label(data$offsite_id)="Offsite tester ID"
label(data$holquality)="Holter Quality"
label(data$auto_id_hol)="Unique Teleform Number"
label(data$testerid_hol)="Tester ID"
label(data$testerid_1_hol)="Tester ID 1"

#Create new variables for factors
data$holdone.factor = factor(data$holdone, levels = c("1","4","9","8","5","6","7"))
levels(data$holdone.factor) = c("Yes","4-Pacemaker","9-Technical problems","8-Refused Holter but could do","5-Physical problems","6-Mental problems","7-Physical & Mental problems")

data$hol2001.factor = factor(data$hol2001, levels = c("0","1"))
levels(data$hol2001.factor) = c("No","Yes")

data$hol02ap.factor = factor(data$hol02ap, levels = c("1","2"))
levels(data$hol02ap.factor) = c("Am","Pm")

data$hol02bp.factor = factor(data$hol02bp, levels = c("1","2"))
levels(data$hol02bp.factor) = c("Am","Pm")

data$ogtt01_hol.factor = factor(data$ogtt01_hol, levels = c("0","1"))
levels(data$ogtt01_hol.factor) = c("Not Done","Forgot to Press Holter Button")

data$ogtt01a.factor = factor(data$ogtt01a, levels = c("1","2"))
levels(data$ogtt01a.factor) = c("Day 1","Day 2")

data$pe04_hol.factor = factor(data$pe04_hol, levels = c("0","1"))
levels(data$pe04_hol.factor) = c("Not Done","Forgot to Press Holter Button")

data$pe04a.factor = factor(data$pe04a, levels = c("1","2"))
levels(data$pe04a.factor) = c("Day 1","Day 2")

data$hol04ap.factor = factor(data$hol04ap, levels = c("1","2"))
levels(data$hol04ap.factor) = c("Am","Pm")

data$hol04cp.factor = factor(data$hol04cp, levels = c("1","2"))
levels(data$hol04cp.factor) = c("Am","Pm")

data$tm10.factor = factor(data$tm10, levels = c("1","0"))
levels(data$tm10.factor) = c("Forgot to Press Holter Button","Not Done")

data$tm10a.factor = factor(data$tm10a, levels = c("1","2"))
levels(data$tm10a.factor) = c("Day 1","Day 2")

data$hol10ap.factor = factor(data$hol10ap, levels = c("2","1"))
levels(data$hol10ap.factor) = c("Pm","Am")

data$hol10cp.factor = factor(data$hol10cp, levels = c("1","2"))
levels(data$hol10cp.factor) = c("Am","Pm")

data$hol1001.factor = factor(data$hol1001, levels = c("2","0","4","1","3"))
levels(data$hol1001.factor) = c("Sinus with atrial ectopic beats","Sinus rhythm","Sinus with wandering atrial pacemaker","Sinus with sinus arrhythmia","Rhythm other than sinus")

data$hol2002.factor = factor(data$hol2002, levels = c("0","1"))
levels(data$hol2002.factor) = c("Absent","Present")

data$hol3001.factor = factor(data$hol3001, levels = c("0","1","3","2","4"))
levels(data$hol3001.factor) = c("Absent","1st degree AV block","2nd degree AV (Mobitz Type II)","2nd degree AV block (Wenckebach Mobitz Type I)","3rd degree AV block")

data$hol4001.factor = factor(data$hol4001, levels = c("0","2","1","3"))
levels(data$hol4001.factor) = c("Absent","Mostly Day","Mostly Night","Equally Night and Day")

data$hol5001.factor = factor(data$hol5001, levels = c("0","1"))
levels(data$hol5001.factor) = c("Absent","Present")

data$hol5002.factor = factor(data$hol5002, levels = c("1","3","2","4"))
levels(data$hol5002.factor) = c("QRS 0.12","LBBB (QRS > 0.12)","RBBB (QRS > 0.12)","Other IVCD")

data$hol6001.factor = factor(data$hol6001, levels = c("0","1"))
levels(data$hol6001.factor) = c("Absent","Present")

data$hol6002.factor = factor(data$hol6002, levels = c("2","1","3"))
levels(data$hol6002.factor) = c("Mostly day","Mostly night","Equally night and day")

data$hol6003.factor = factor(data$hol6003, levels = c("0","1"))
levels(data$hol6003.factor) = c("Absent","Present")

data$hol6012.factor = factor(data$hol6012, levels = c("5","1","6","3","2","4"))
levels(data$hol6012.factor) = c("Other","A. Fib. Continuous","Combination","A. Fib. more than one episode","A. Fib. single episode","A. Flutter")

data$hol7001.factor = factor(data$hol7001, levels = c("0","1"))
levels(data$hol7001.factor) = c("Absent","Present")

data$hol7002.factor = factor(data$hol7002, levels = c("2","1","3"))
levels(data$hol7002.factor) = c("Mostly day","Mostly night","Equally night and day")

data$hol7003.factor = factor(data$hol7003, levels = c("0","1"))
levels(data$hol7003.factor) = c("Absent","Present")

data$hol8001.factor = factor(data$hol8001, levels = c("2","3","0","1"))
levels(data$hol8001.factor) = c("Good","Excellent","Very poor","Poor but probably usable")

