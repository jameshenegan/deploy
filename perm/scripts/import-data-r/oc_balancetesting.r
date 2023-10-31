#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_balancetesting.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_baltes)="CRF Version"
label(data$balt01a)="Is the participant able to stand unassisted?"
label(data$balt01b)="Does the participant need to use an assistive devide for standing or walking"
label(data$baltmls1)="Floor eyes open ML sway"
label(data$baltaps1)="Floor eyes open AP sway"
label(data$baltcoms1)="Floor eyes open COM sway"
label(data$balthq1)="Floor eyes open how stable"
label(data$balttrial1)="Floor eyes open trial successful stance achieved"
label(data$baltrnd1)="Floor eyes open RND"
label(data$baltmls2)="Floor eyes closed ML sway"
label(data$baltaps2)="Floor eyes closed AP sway"
label(data$baltcoms2)="Floor eyes closed COM sway"
label(data$balthq2)="Floor eyes closed how stable"
label(data$balttrial2)="Floor eyes closed trial successful stance achieved"
label(data$baltrnd2)="Floor eyes closed RND"
label(data$baltmls3)="Floor dynamic vision ML sway"
label(data$baltaps3)="Floor dynamic vision AP sway"
label(data$baltcoms3)="Floor dynamic vision COM sway"
label(data$balthq3)="Floor dynamic vision how stable"
label(data$balttrial3)="Floor dynamic vision trial successful stance achieved"
label(data$baltrnd3)="Floor dynamic vision RND"
label(data$baltmls4)="Foam eyes open ML sway"
label(data$baltaps4)="Foam eyes open AP sway"
label(data$baltcoms4)="Foam eyes open COM sway"
label(data$balthq4)="Foam eyes open how stable"
label(data$balttrial4)="Foam eyes open trial successful stance achieved"
label(data$baltrnd4)="Foam eyes open RND"
label(data$baltmls5)="Foam eyes closed ML sway"
label(data$baltaps5)="Foam eyes closed AP sway"
label(data$baltcoms5)="Foam eyes closed COM sway"
label(data$balthq5)="Foam eyes closed how stable"
label(data$balttrial5)="Foam eyes closed trial successful stance achieved"
label(data$baltrnd5)="Foam eyes closed RND"
label(data$baltmls6)="Foam dynamic vision ML sway"
label(data$baltaps6)="Foam dynamic vision AP sway"
label(data$baltcoms6)="Foam dynamic vision COM sway"
label(data$balthq6)="Foam dynamic vision how stable"
label(data$balttrial6)="Foam dynamic vision trial successful stance achieved"
label(data$baltrnd6)="Foam dynamic vision RND"
label(data$auto_id_baltes)="Unique Teleform Number"
label(data$testerid_baltes)="Tester ID"

#Create new variables for factors
data$balt01a.factor = factor(data$balt01a, levels = c("1","0"))
levels(data$balt01a.factor) = c("Yes","No")

data$balt01b.factor = factor(data$balt01b, levels = c("0","1"))
levels(data$balt01b.factor) = c("No","Yes")

data$balttrial1.factor = factor(data$balttrial1, levels = c("1","2","3"))
levels(data$balttrial1.factor) = c("1","2","3")

data$baltrnd1.factor = factor(data$baltrnd1, levels = c("9","2","3","8","1","4","5"))
levels(data$baltrnd1.factor) = c("9-Did not do due to technical problems","2-Equipment malfunction","3-Could not do due to physical problems","8-Refused but theoretically could do","1-Loss of balance/fall before reaching 30 seconds","4-Cound not do due to mental problems","5-Could not do due to both physical and mental problems")

data$balttrial2.factor = factor(data$balttrial2, levels = c("1","2","3"))
levels(data$balttrial2.factor) = c("1","2","3")

data$baltrnd2.factor = factor(data$baltrnd2, levels = c("9","2","3","1","8","4","5"))
levels(data$baltrnd2.factor) = c("9-Did not do due to technical problems","2-Equipment malfunction","3-Could not do due to physical problems","1-Loss of balance/fall before reaching 30 seconds","8-Refused but theoretically could do","4-Cound not do due to mental problems","5-Could not do due to both physical and mental problems")

data$balttrial3.factor = factor(data$balttrial3, levels = c("1","2","3"))
levels(data$balttrial3.factor) = c("1","2","3")

data$baltrnd3.factor = factor(data$baltrnd3, levels = c("9","3","2","8","4","1","5"))
levels(data$baltrnd3.factor) = c("9-Did not do due to technical problems","3-Could not do due to physical problems","2-Equipment malfunction","8-Refused but theoretically could do","4-Cound not do due to mental problems","1-Loss of balance/fall before reaching 30 seconds","5-Could not do due to both physical and mental problems")

data$balttrial4.factor = factor(data$balttrial4, levels = c("1","2","3"))
levels(data$balttrial4.factor) = c("1","2","3")

data$baltrnd4.factor = factor(data$baltrnd4, levels = c("9","2","3","8","1","5","4"))
levels(data$baltrnd4.factor) = c("9-Did not do due to technical problems","2-Equipment malfunction","3-Could not do due to physical problems","8-Refused but theoretically could do","1-Loss of balance/fall before reaching 30 seconds","5-Could not do due to both physical and mental problems","4-Cound not do due to mental problems")

data$balttrial5.factor = factor(data$balttrial5, levels = c("1","2","3"))
levels(data$balttrial5.factor) = c("1","2","3")

data$baltrnd5.factor = factor(data$baltrnd5, levels = c("9","1","2","3","8","5","4"))
levels(data$baltrnd5.factor) = c("9-Did not do due to technical problems","1-Loss of balance/fall before reaching 30 seconds","2-Equipment malfunction","3-Could not do due to physical problems","8-Refused but theoretically could do","5-Could not do due to both physical and mental problems","4-Cound not do due to mental problems")

data$baltrnd6.factor = factor(data$baltrnd6, levels = c("9","3","2","4","8","1","5"))
levels(data$baltrnd6.factor) = c("9-Did not do due to technical problems","3-Could not do due to physical problems","2-Equipment malfunction","4-Cound not do due to mental problems","8-Refused but theoretically could do","1-Loss of balance/fall before reaching 30 seconds","5-Could not do due to both physical and mental problems")

