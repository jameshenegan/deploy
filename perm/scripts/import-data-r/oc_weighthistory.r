#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_weighthistory.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_weihis)="CRF Version"
label(data$whxdone)="Was weight history collected"
label(data$whx1)="Weight 1 year ago"
label(data$whx1nd)="Reason Q1 not answered"
label(data$whx2)="Weight 10 years ago"
label(data$whx2nd)="Reason Q2 not answered"
label(data$whx3)="Weight at age 25"
label(data$whx3nd)="Reason Q3 not answered"
label(data$whx4)="Weight at age 50"
label(data$whx4nd)="Reqson Q4 not answered"
label(data$whx5a)="What is the most you have ever weighed"
label(data$whx5and)="Reason Q5a not answered"
label(data$whx5b)="How old were you then"
label(data$whx5bnd)="Reason Q5b not answered"
label(data$whx6a)="What is the least you have ever weighed"
label(data$whx6and)="Reason Q6a not answered"
label(data$whx6b)="How old were you then"
label(data$whx6bnd)="Reason Q6b not answered"
label(data$whx7)="What would you say about your weight during adult life"
label(data$auto_id_weihis)="Unique Teleform Number"
label(data$testerid_weihis)="Tester ID"

#Create new variables for factors
data$whxdone.factor = factor(data$whxdone, levels = c("1","9","7","5","8","6"))
levels(data$whxdone.factor) = c("Yes","(9) Technical problems (no time/not scheduled)","(7) Refused to answer","(5) Physical (communication problem)","(8) Dont remember any weight","(6) Cannot understand the questions")

data$whx1nd.factor = factor(data$whx1nd, levels = c("8","7"))
levels(data$whx1nd.factor) = c("(8) DK/DR","(7) Refused")

data$whx2nd.factor = factor(data$whx2nd, levels = c("8","7"))
levels(data$whx2nd.factor) = c("(8) DK/DR","(7) Refused")

data$whx3nd.factor = factor(data$whx3nd, levels = c("8","7"))
levels(data$whx3nd.factor) = c("(8) DK/DR","(7) Refused")

data$whx4nd.factor = factor(data$whx4nd, levels = c("8","9","7"))
levels(data$whx4nd.factor) = c("(8) DK/DR","(9) NA","(7) Refused")

data$whx5and.factor = factor(data$whx5and, levels = c("8","7"))
levels(data$whx5and.factor) = c("(8) DK/DR","(7) Refused")

data$whx5bnd.factor = factor(data$whx5bnd, levels = c("8","7"))
levels(data$whx5bnd.factor) = c("(8) DK/DR","(7) Refused")

data$whx6and.factor = factor(data$whx6and, levels = c("8","7"))
levels(data$whx6and.factor) = c("(8) DK/DR","(7) Refused")

data$whx6bnd.factor = factor(data$whx6bnd, levels = c("8","7"))
levels(data$whx6bnd.factor) = c("(8) DK/DR","(7) Refused")

data$whx7.factor = factor(data$whx7, levels = c("2","1","5","3","4","8","7"))
levels(data$whx7.factor) = c("(2) You have had a gradual gain in weight (>10 lbs)","(1) Your weight has stayed about the same +/- 10 lbs","(5) Your weight has repeatedly gone up and down again","(3) You have had a gradual loss in weight","(4) You have had a marked loss in weight and then kept it off","(8) DK/DR","(7) Refused")

