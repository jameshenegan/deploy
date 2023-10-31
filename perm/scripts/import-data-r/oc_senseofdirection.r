#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_senseofdirection.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_senofdir)="CRF Version"
label(data$judgedistance)="I am very good at judging distances"
label(data$senseofdirection)="My sense of direction is very good"
label(data$losteasily)="I very easily get lost in a new city"
label(data$troubledirections)="I have trouble understanding directions"
label(data$routeswhenriding)="I don't remember routes very well while riding as a passenger in a car"
label(data$rememberroutes)="I can usually remember a new route after I have traveled it only once"
label(data$mentalmap)="I don't have a very good mental map of my environment"

#Create new variables for factors
data$judgedistance.factor = factor(data$judgedistance, levels = c("2","1","3","4","5","6","7"))
levels(data$judgedistance.factor) = c("(2)","(1) strongly agree","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$senseofdirection.factor = factor(data$senseofdirection, levels = c("2","1","3","4","5","6","7"))
levels(data$senseofdirection.factor) = c("(2)","(1) strongly agree","(3)","(4)","(5)","(6)","(7) strongly disagree")

data$losteasily.factor = factor(data$losteasily, levels = c("6","4","5","3","7","2","1"))
levels(data$losteasily.factor) = c("(6)","(4)","(5)","(3)","(7) strongly disagree","(2)","(1) strongly agree")

data$troubledirections.factor = factor(data$troubledirections, levels = c("6","7","5","4","3","2","1"))
levels(data$troubledirections.factor) = c("(6)","(7) strongly disagree","(5)","(4)","(3)","(2)","(1) strongly agree")

data$routeswhenriding.factor = factor(data$routeswhenriding, levels = c("6","4","3","5","7","2","1"))
levels(data$routeswhenriding.factor) = c("(6)","(4)","(3)","(5)","(7) strongly disagree","(2)","(1) strongly agree")

data$rememberroutes.factor = factor(data$rememberroutes, levels = c("2","3","1","5","4","6","7"))
levels(data$rememberroutes.factor) = c("(2)","(3)","(1) strongly agree","(5)","(4)","(6)","(7) strongly disagree")

data$mentalmap.factor = factor(data$mentalmap, levels = c("7","6","5","4","2","3","1"))
levels(data$mentalmap.factor) = c("(7) strongly disagree","(6)","(5)","(4)","(2)","(3)","(1) strongly agree")

