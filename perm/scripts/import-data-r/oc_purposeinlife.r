#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_purposeinlife.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_purinlif)="CRF Version"
label(data$q1)="I feel good when I think of what I've done in the past and what I hope to do in the future"
label(data$q2)="I live life one day at a time and don't really think about the future"
label(data$q3)="I tend to focus on the present because the future nearly always brings me problems"
label(data$q4)="I have a sense of direction and purpose in life"
label(data$q5)="My daily activities often seem trivial and unimportant to me"
label(data$q6)="I used to set goals for myself but that now seems like a waste of time"
label(data$q7)="I enjoy making plans for the future and working them to a reality"
label(data$q8)="I am an active person in carrying out the plans I set for myself"
label(data$q9)="Some people wander aimlessly through life but I am not one of them"
label(data$q10)="I sometimes feel as if I've done all there is to do in life"

#Create new variables for factors
data$q1.factor = factor(data$q1, levels = c("5","4","3","1","2"))
levels(data$q1.factor) = c("Strongly agree","Agree","Neutral","Strongly disagree","Disagree")

data$q2.factor = factor(data$q2, levels = c("4","3","5","2","1"))
levels(data$q2.factor) = c("Disagree","Neutral","Strongly disagree","Agree","Strongly agree")

data$q3.factor = factor(data$q3, levels = c("4","5","3","2","1"))
levels(data$q3.factor) = c("Disagree","Strongly disagree","Neutral","Agree","Strongly agree")

data$q4.factor = factor(data$q4, levels = c("4","5","3","2","1"))
levels(data$q4.factor) = c("Agree","Strongly agree","Neutral","Disagree","Strongly disagree")

data$q5.factor = factor(data$q5, levels = c("4","5","3","2","1"))
levels(data$q5.factor) = c("Disagree","Strongly disagree","Neutral","Agree","Strongly agree")

data$q6.factor = factor(data$q6, levels = c("4","5","3","2","1"))
levels(data$q6.factor) = c("Disagree","Strongly disagree","Neutral","Agree","Strongly agree")

data$q7.factor = factor(data$q7, levels = c("4","5","3","2","1"))
levels(data$q7.factor) = c("Agree","Strongly agree","Neutral","Disagree","Strongly disagree")

data$q8.factor = factor(data$q8, levels = c("4","5","3","2","1"))
levels(data$q8.factor) = c("Agree","Strongly agree","Neutral","Disagree","Strongly disagree")

data$q9.factor = factor(data$q9, levels = c("4","5","3","2","1"))
levels(data$q9.factor) = c("Agree","Strongly agree","Neutral","Disagree","Strongly disagree")

data$q10.factor = factor(data$q10, levels = c("4","5","3","2","1"))
levels(data$q10.factor) = c("Disagree","Strongly disagree","Neutral","Agree","Strongly agree")

