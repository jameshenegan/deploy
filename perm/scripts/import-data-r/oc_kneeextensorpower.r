#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_kneeextensorpower.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_kneextpow)="CRF Version"
label(data$tricom01a_kneextpow)="Able to stand unassisted"
label(data$kep01)="Time from Kin-Com testing"
label(data$kep02)="Did participant complete knee strength testing"
label(data$kep02a)="Eligibility"
label(data$kep02b)="Was range of motion 155 degrees or better"
label(data$kep02c)="Record ROM below 155 degrees"
label(data$kep03)="Which leg was tested at most recent BLSA Kin-Com testing"
label(data$kep03a)="Which leg is to be tested"
label(data$kep03b)="Reason not tested"
label(data$kep04)="Predicted Initial Setting"
label(data$kep05)="1 RM"
label(data$kep40t1)="40% 1 RM Trial 1"
label(data$kep40t2)="40% 1 RM Trial 2"
label(data$kep40t3)="40% 1 RM Trial 3"
label(data$kep40t4)="40% 1 RM Trial 4"
label(data$kep40t5)="40% 1 RM Trial 5"
label(data$kep50t1)="50% 1 RM Trial 1"
label(data$kep50t2)="50% 1 RM Trial 2"
label(data$kep50t3)="50% 1 RM Trial 3"
label(data$kep50t4)="50% 1 RM Trial 4"
label(data$kep50t5)="50% 1 RM Trial 5"
label(data$kep60t1)="60% 1 RM Trial 1"
label(data$kep60t2)="60% 1 RM Trial 2"
label(data$kep60t3)="60% 1 RM Trial 3"
label(data$kep60t4)="60% 1 RM Trial 4"
label(data$kep60t5)="60% 1 RM Trial 5"
label(data$kep70t1)="70% 1 RM Trial 1"
label(data$kep70t2)="70% 1 RM Trial 2"
label(data$kep70t3)="70% 1 RM Trial 3"
label(data$kep70t4)="70% 1 RM Trial 4"
label(data$kep70t5)="70% 1 RM Trial 5"
label(data$auto_id_kneextpow)="Unique Teleform Number"
label(data$testerid_kneextpow)="Tester ID"

#Create new variables for factors
data$kep01.factor = factor(data$kep01, levels = c("1","3","2"))
levels(data$kep01.factor) = c("Kin-Com preceded power testing","Not scheduled for current visit","Kin-Com to follow power testing")

data$kep02.factor = factor(data$kep02, levels = c("1","0","3","2"))
levels(data$kep02.factor) = c("Yes no discomfort test same leg","No excluded do not test","Yes some discomfort test other leg unless contraindications","No technical issues check knee strength eligibility")

data$kep02a.factor = factor(data$kep02a, levels = c("0","1"))
levels(data$kep02a.factor) = c("Not eligible","Eligible")

data$kep02b.factor = factor(data$kep02b, levels = c("1","0"))
levels(data$kep02b.factor) = c("Yes","No")

data$kep03.factor = factor(data$kep03, levels = c("1","2","3","8"))
levels(data$kep03.factor) = c("Right","First time","Left","Dont know")

data$kep03a.factor = factor(data$kep03a, levels = c("1","3","2"))
levels(data$kep03a.factor) = c("Right","Neither (test not performed)","Left")

data$kep03b.factor = factor(data$kep03b, levels = c("999","1","555","888","666","777"))
levels(data$kep03b.factor) = c("technical problems","Not elegible","physical problems","refused","cognitive problems","physical and cognitive")

