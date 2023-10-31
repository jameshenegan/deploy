#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_ideomotorapraxia.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_ideapr)="CRF Version"
label(data$ima01)="Gesture 1"
label(data$ima01_rnd)="Gesture 1 reason unknown"
label(data$ima02)="Gesture 2"
label(data$ima02_rnd)="Gesture 2 reason unknown"
label(data$ima03)="Gesture 3"
label(data$ima03_rnd)="Gesture 3 reason unknown"
label(data$ima04)="Gesture 4"
label(data$ima04_rnd)="Gesture 4 reason unknown"
label(data$ima05)="Gesture 5"
label(data$ima05_rnd)="Gesture 5 reason unknown"
label(data$ima06)="Gesture6"
label(data$ima06_rnd)="Gesture 6 reason unknown"
label(data$ima07)="Gesture 7"
label(data$ima07_rnd)="Gesture 7 reason unknown"
label(data$imalmt)="Left arm muscle tone"
label(data$imalmtuk)="Left arm muscle tone unknown"
label(data$imarmt)="Right arm muscle tone"
label(data$imarmtuk)="Right arm muscle tone unknown"
label(data$imartl1)="Tremor on the left hand at rest without counting"
label(data$imartl2)="Tremor on the left hand at rest with counting"
label(data$imartl3)="Tremor on the left hand unknown"
label(data$imartl4)="Tremor on the left hand reason unknown"
label(data$imartr1)="Tremor on the right hand at rest without counting"
label(data$imartr2)="Tremor on the right hand at rest with counting"
label(data$imartr3)="Tremor on the right hand unknown"
label(data$imartr4)="Tremor on the right hand reason unknown"
label(data$imafml1)="Left finger motion"
label(data$imafmluk)="Left finger motion reason unknown"
label(data$imafmr1)="Right finger motion"
label(data$imafmruk)="Right finger motion reason unknown"
label(data$imaacl1)="Left ankle motion"
label(data$imaacl1uk)="Left ankle motion reason unknown"
label(data$imaacr1)="Right ankle motion"
label(data$imaacruk)="Right ankle motion reason unknown"
label(data$imaftnl1)="Left finger to nose"
label(data$imaftnl3)="Left finger to nose reason unknown"
label(data$imaftnl2)="Left finger to nose if clumsy"
label(data$imaftnr1)="Right finger to nose"
label(data$imaftnr3)="Right finger to nose reason unknown"
label(data$imaftnr2)="Right finger to nose if clumsy"
label(data$auto_id_ideapr)="Unique Teleform Number"
label(data$testerid_ideapr)="Tester ID"

#Create new variables for factors
data$ima01.factor = factor(data$ima01, levels = c("3","2","1","8","0"))
levels(data$ima01.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Unknown","Failure")

data$ima01_rnd.factor = factor(data$ima01_rnd, levels = c("5","9","7","6","8"))
levels(data$ima01_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","7=Cound not do due to both physical and mental problems","6=Could not do due to mental problems","8=Refused but theoretically could do")

data$ima02.factor = factor(data$ima02, levels = c("3","2","1","0","8"))
levels(data$ima02.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima02_rnd.factor = factor(data$ima02_rnd, levels = c("5","9","6","7","8"))
levels(data$ima02_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$ima03.factor = factor(data$ima03, levels = c("3","2","1","0","8"))
levels(data$ima03.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima03_rnd.factor = factor(data$ima03_rnd, levels = c("5","9","6","7","8"))
levels(data$ima03_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$ima04.factor = factor(data$ima04, levels = c("3","2","1","0","8"))
levels(data$ima04.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima04_rnd.factor = factor(data$ima04_rnd, levels = c("5","9","6","7","8"))
levels(data$ima04_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$ima05.factor = factor(data$ima05, levels = c("3","2","1","0","8"))
levels(data$ima05.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima05_rnd.factor = factor(data$ima05_rnd, levels = c("5","9","6","7","8"))
levels(data$ima05_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$ima06.factor = factor(data$ima06, levels = c("3","2","1","0","8"))
levels(data$ima06.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima06_rnd.factor = factor(data$ima06_rnd, levels = c("5","9","6","7","8"))
levels(data$ima06_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$ima07.factor = factor(data$ima07, levels = c("3","2","1","0","8"))
levels(data$ima07.factor) = c("Immediate success","Spontaneous correction","Correction after explanation","Failure","Unknown")

data$ima07_rnd.factor = factor(data$ima07_rnd, levels = c("5","9","6","7","8"))
levels(data$ima07_rnd.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imalmt.factor = factor(data$imalmt, levels = c("1","2","8","3","4"))
levels(data$imalmt.factor) = c("Normal","Spastic","Unknown","Lead pipe","Cogwheeling")

data$imalmtuk.factor = factor(data$imalmtuk, levels = c("5","9","6","7","8"))
levels(data$imalmtuk.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imarmt.factor = factor(data$imarmt, levels = c("1","8","2","3","4"))
levels(data$imarmt.factor) = c("Normal","Unknown","Spastic","Lead pipe","Cogwheeling")

data$imarmtuk.factor = factor(data$imarmtuk, levels = c("9","5","6","7","8"))
levels(data$imarmtuk.factor) = c("9=Did not do due to technical problems","5=Could not do due to physical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imartl1.factor = factor(data$imartl1, levels = c("0","1"))
levels(data$imartl1.factor) = c("No","Yes")

data$imartl2.factor = factor(data$imartl2, levels = c("0","1"))
levels(data$imartl2.factor) = c("No","Yes")

data$imartl3.factor = factor(data$imartl3, levels = c("8"))
levels(data$imartl3.factor) = c("Unknown")

data$imartl4.factor = factor(data$imartl4, levels = c("7","9","5","6","8"))
levels(data$imartl4.factor) = c("7=Cound not do due to both physical and mental problems","9=Did not do due to technical problems","5=Could not do due to physical problems","6=Could not do due to mental problems","8=Refused but theoretically could do")

data$imartr1.factor = factor(data$imartr1, levels = c("0","1"))
levels(data$imartr1.factor) = c("No","Yes")

data$imartr2.factor = factor(data$imartr2, levels = c("0","1"))
levels(data$imartr2.factor) = c("No","Yes")

data$imartr3.factor = factor(data$imartr3, levels = c("8"))
levels(data$imartr3.factor) = c("Unknown")

data$imartr4.factor = factor(data$imartr4, levels = c("9","5","7","6","8"))
levels(data$imartr4.factor) = c("9=Did not do due to technical problems","5=Could not do due to physical problems","7=Cound not do due to both physical and mental problems","6=Could not do due to mental problems","8=Refused but theoretically could do")

data$imafml1.factor = factor(data$imafml1, levels = c("1","0","8"))
levels(data$imafml1.factor) = c("Normal","Abnormal","Unknown")

data$imafmluk.factor = factor(data$imafmluk, levels = c("5","9","6","7","8"))
levels(data$imafmluk.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imafmr1.factor = factor(data$imafmr1, levels = c("1","0","8"))
levels(data$imafmr1.factor) = c("Normal","Abnormal","Unknown")

data$imafmruk.factor = factor(data$imafmruk, levels = c("5","9","6","7","8"))
levels(data$imafmruk.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imaacl1.factor = factor(data$imaacl1, levels = c("3","1","2","8"))
levels(data$imaacl1.factor) = c("No provoked movement","Rhythmical continuous muscle contractions","Rapidly Exhaustible movement","Unknown")

data$imaacl1uk.factor = factor(data$imaacl1uk, levels = c("5","9","6","7","8"))
levels(data$imaacl1uk.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imaacr1.factor = factor(data$imaacr1, levels = c("3","1","2","8"))
levels(data$imaacr1.factor) = c("No provoked movement","Rhythmical continuous muscle contractions","Rapidly Exhaustible movement","Unknown")

data$imaacruk.factor = factor(data$imaacruk, levels = c("5","9","6","7","8"))
levels(data$imaacruk.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imaftnl1.factor = factor(data$imaftnl1, levels = c("1","2","8"))
levels(data$imaftnl1.factor) = c("Normal","Clumsy","Unknown")

data$imaftnl3.factor = factor(data$imaftnl3, levels = c("5","9","6","7","8"))
levels(data$imaftnl3.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imaftnl2.factor = factor(data$imaftnl2, levels = c("2","3","1"))
levels(data$imaftnl2.factor) = c("Dysmetria","Both action tremor and dysmetria","Action tremor")

data$imaftnr1.factor = factor(data$imaftnr1, levels = c("1","2","8"))
levels(data$imaftnr1.factor) = c("Normal","Clumsy","Unknown")

data$imaftnr3.factor = factor(data$imaftnr3, levels = c("5","9","6","7","8"))
levels(data$imaftnr3.factor) = c("5=Could not do due to physical problems","9=Did not do due to technical problems","6=Could not do due to mental problems","7=Cound not do due to both physical and mental problems","8=Refused but theoretically could do")

data$imaftnr2.factor = factor(data$imaftnr2, levels = c("2","3","1"))
levels(data$imaftnr2.factor) = c("Dysmetria","Both action tremor and dysmetria","Action tremor")

