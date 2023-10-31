#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_lephysicalperformance.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_lephyper)="CRF Version"
label(data$lep1)="Single chair stand"
label(data$lep2)="Repeated chair stand"
label(data$lep2a)="Unable to complete 5 stands number completed"
label(data$lep2b)="Completes 5 but not 10 stands number completed"
label(data$lep2b1)="Time for 5 stands"
label(data$lep2c1)="Time for 10 stands min"
label(data$lep2c2)="Time for 10 stands sec hund"
label(data$lep3)="Side by side stand"
label(data$lep4)="Semi tandem stand"
label(data$lep4b)="Semi tandem stand hold position for less than 10 seconds time"
label(data$lep4a)="Semi tandem stand hold position for 10 but less than 30 seconds time"
label(data$lep5a)="Tandem stand trial 1"
label(data$lep5a2)="Tandem stand hold position for less than 10 seconds time trial 1"
label(data$lep5a1)="Tandem stand hold position for 10 but less than 30 seconds time trial 1"
label(data$lep5b)="Tandem stand trial 2"
label(data$lep5b1)="Tandem stand hold position for less than 10 seconds time trial 2"
label(data$lep5b2)="Tandem stand hold position for 10 but less than 30 seconds time trial 2"
label(data$lep6a)="One leg stand Trial 1"
label(data$lep6a1)="One leg stand 1 but less than 30 seconds time trial 1"
label(data$lep6b)="One leg stand Trial 2"
label(data$lep6b1)="One leg stand 1 but less than 30 seconds time trial 2"
label(data$lep7a)="Uaual pace trial 1"
label(data$lep7a1)="Usual pace complete with walking aid trial 1 time"
label(data$lep7a2)="Usual pace complete without walking aid trial 1 time"
label(data$lep7b)="Uaual pace trial 2"
label(data$lep7b1)="Usual pace complete with walking aid trial 2 time"
label(data$lep7b2)="Usual pace complete without walking aid trial 2 time"
label(data$lep8a)="Fast pace trial 1"
label(data$lep8a1)="Fast pace complete with walking aid trial 1 time"
label(data$lep8a2)="Fast pace complete without walking aid trial 1 time"
label(data$lep8b)="Fast pace trial 2"
label(data$lep8b1)="Fast pace complete with walking aid trial 2 time"
label(data$lep8b2)="Fast pace complete without walking aid trial 2 time"
label(data$lep9a)="Narrow walk trial 1"
label(data$lep9a1)="Narrow walk valid test trial 1 time"
label(data$lep9b)="Narrow walk trial 2"
label(data$lep9b1)="Narrow walk valid test trial 2 time"
label(data$lep9c)="Narrow walk trial 3"
label(data$lep9c1)="Narrow walk valid test trial 3 time"
label(data$auto_id_lephyper)="Unique Teleform Number"
label(data$leptid2)="Standing Balance Tester ID"
label(data$leptid3)="6 meter walks Tester ID"
label(data$lep7)="HV measured meters"
label(data$lep2a_0)="Unable to complete 5 stands number completed : 0 (Checkbox Indicator)"
label(data$lep2a_1)="Unable to complete 5 stands number completed : 1 (Checkbox Indicator)"
label(data$lep2a_2)="Unable to complete 5 stands number completed : 2 (Checkbox Indicator)"
label(data$lep2a_3)="Unable to complete 5 stands number completed : 3 (Checkbox Indicator)"
label(data$lep2a_4)="Unable to complete 5 stands number completed : 4 (Checkbox Indicator)"
label(data$lep2b_5)="Completes 5 but not 10 stands number completed : 5* (Checkbox Indicator)"
label(data$lep2b_6)="Completes 5 but not 10 stands number completed : 6 (Checkbox Indicator)"
label(data$lep2b_7)="Completes 5 but not 10 stands number completed : 7 (Checkbox Indicator)"
label(data$lep2b_8)="Completes 5 but not 10 stands number completed : 8 (Checkbox Indicator)"
label(data$lep2b_9)="Completes 5 but not 10 stands number completed : 9 (Checkbox Indicator)"
label(data$testerid_lephyper)="Tester ID"

#Create new variables for factors
data$lep1.factor = factor(data$lep1, levels = c("1","0","2","3","7"))
levels(data$lep1.factor) = c("Stands without using arms Go to repeated chair stands","Not attempted unable Go to standing balance","Attempted unable to stand Go to standing balance","Rises using arms Go to standing balance","Participant refused (includes no time/no tester) Go to standing balance")

data$lep2.factor = factor(data$lep2, levels = c("1","0","2","3","7"))
levels(data$lep2.factor) = c("Completes 10 stands without using arms Record time","Not attempted unable Go to standing balance","Attempted unable to complete 5 stands Go to Number completed","Completed 5 but not 10 stands Go to Number Completed and Enter time for 5 stands","Participant refused (includes no time/no tester) Go to standing balance")

data$lep3.factor = factor(data$lep3, levels = c("1","0","7","3","2"))
levels(data$lep3.factor) = c("Holds for 10 seconds Go to semi-tandem stand","Not attempted unable Go to 6 meter walks","Participant refused (includes no time/no tester) Go to 6 meter walks","Holds for less than 10 seconds Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks")

data$lep4.factor = factor(data$lep4, levels = c("1","3","4","7","0","2"))
levels(data$lep4.factor) = c("Holds position for 30 seconds Go to tandem stand","Holds position for less than 10 seconds Record time Go to 6 meter walks","Holds position for 10 but less than 30 seconds Record time Go to tandem stand","Participant refused (includes no time/no tester) Go to 6 meter walks","Not attempted unable Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks")

data$lep5a.factor = factor(data$lep5a, levels = c("1","3","4","0","2","7"))
levels(data$lep5a.factor) = c("Holds position for 30 seconds Go to one-leg stand","Holds position for less than 10 seconds Record time Go to Trial 2","Holds position for 10 but less than 30 seconds Record time Go to Trial 2","Not attempted unable Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks","Participant refused (includes no time/no tester) Go to 6 meter walks")

data$lep5b.factor = factor(data$lep5b, levels = c("1","3","4","0","7","2"))
levels(data$lep5b.factor) = c("Holds position for 30 seconds Go to one-leg stand","Hold position for less than 10 seconds Record time Go to 6 meter walks Mark unable One Leg Stand ","Holds position for 10 but less than 30 seconds Record time Go to 6 meter walks Mark unable One Leg Stand","Not attempted unable Go to 6 meter walks","Participant refused (includes no time/no tester) Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks")

data$lep6a.factor = factor(data$lep6a, levels = c("1","3","0","2","7"))
levels(data$lep6a.factor) = c("Holds position for 30 seconds Go to 6 meter walks","Holds position for one but less than 30 seconds Record time Go to Trial 2","Not attempted unable Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks","Participant refused (includes no time/no tester) Go to 6 meter walks")

data$lep6b.factor = factor(data$lep6b, levels = c("3","1","0","7","2"))
levels(data$lep6b.factor) = c("Holds position for one but less than 30 seconds Record time Go to Trial 2","Holds position for 30 seconds Go to 6 meter walks","Not attempted unable Go to 6 meter walks","Participant refused (includes no time/no tester) Go to 6 meter walks","Unable to attain position or hold for one second Go to 6 meter walks")

data$lep7a.factor = factor(data$lep7a, levels = c("1","2","7","0"))
levels(data$lep7a.factor) = c("Completes without walking aid Record Time Go to trial 2","Completes with walking aid Record Time Go to Trial 2","Participant refused (Includes no time/no tester) End performance testing","Not attempted unable to walk End performance testing")

data$lep7b.factor = factor(data$lep7b, levels = c("1","2","7","0"))
levels(data$lep7b.factor) = c("Completes without walking aid Record Time Go to Fast Walk","Completes with walking aid Record Time Go to Fast Walk","Participant refused (Includes no time/no tester) End performance testing","Not attempted unable to walk End performance testing")

data$lep8a.factor = factor(data$lep8a, levels = c("1","2","7","0"))
levels(data$lep8a.factor) = c("Completes without walking aid Record Time Go to trial 2","Completes with walking aid Record Time Go to Trial 2","Participant refused (Includes no time/no tester) End performance testing","Not attempted unable to walk End performance testing")

data$lep8b.factor = factor(data$lep8b, levels = c("1","2","7","0"))
levels(data$lep8b.factor) = c("Completes without walking aid Record Time Go to Narrow Walk","Completes with walking aid Record Time Go to Narrow Walk","Participant refused (Includes no time/no tester) End performance testing","Not attempted unable to walk End performance testing")

data$lep9a.factor = factor(data$lep9a, levels = c("1","2","0","7"))
levels(data$lep9a.factor) = c("Valid test Record Time Go to trial 2","Invalid test stepped on line 3 times Go to Trial 2","Not attempted unable to walk unaided End performance testing","Participant refused (Includes no time/no tester) End performance testing")

data$lep9b.factor = factor(data$lep9b, levels = c("1","2","0","7"))
levels(data$lep9b.factor) = c("Valid test Record Time Go to trial 3 or end","Invalid test stepped on line 3 times Go to Trial 3","Not attempted unable to walk unaided End performance testing","Participant refused (Includes no time/no tester) End performance testing")

data$lep9c.factor = factor(data$lep9c, levels = c("2","1","0","7"))
levels(data$lep9c.factor) = c("Invalid test stepped on line 3 times End testing","Valid test Record Time End","Not attempted unable to walk unaided End performance testing","Participant refused (Includes no time/no tester) End performance testing")

data$lep7.factor = factor(data$lep7, levels = c("1","2","0"))
levels(data$lep7.factor) = c("Four meters","Three meters","No three meter space available")

