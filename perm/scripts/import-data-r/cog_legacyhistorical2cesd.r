#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/cog_legacyhistorical2cesd.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit"
label(data$xsource)="XForms source file name"
label(data$cestag)=""
label(data$cesd)="CES Depression score"
label(data$cescut16)="CES Symptoms of depression"
label(data$cescut20)="CES Significant symptoms of depression"
label(data$ces01)="I was bothered by things that usually do"
label(data$ces02)="I did not feel like eating; my appetite"
label(data$ces03)="I felt that I could not shake off the bl"
label(data$ces04)="I felt that I was just as good as other"
label(data$ces05)="I had trouble keeping my mind on what I"
label(data$ces06)="I felt depressed"
label(data$ces07)="I felt that everything I did was an effo"
label(data$ces08)="I felt hopeful about the future"
label(data$ces09)="I thought my life had been a failure"
label(data$ces10)="I felt fearful"
label(data$ces11)="My sleep was restless"
label(data$ces12)="I was happy"
label(data$ces13)="I talked less than usual"
label(data$ces14)="I felt lonely"
label(data$ces15)="People were unfriendly"
label(data$ces16)="I enjoyed life"
label(data$ces17)="I had crying spells"
label(data$ces18)="I felt sad"
label(data$ces19)="I felt people disliked me"
label(data$ces20)="I could not get going"
label(data$dot)="DOT"
label(data$age)="Age"
label(data$ageyrs)="AgeYrs"
label(data$cessource)="CESsource"
label(data$sex)="Sex"
