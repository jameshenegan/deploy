#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_headinjuryquestionnaire.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_heainjque)="CRF Version"
label(data$hadconcussion)="Have you ever had a head injury or concussion"
label(data$howmany)="How many head injuries concussions have you had"
label(data$c1when)="What year did the first head injury or concussion 1 occur"
label(data$c1cause)="What caused head injury or concussion 1"
label(data$c1lossconsc)="Concussion 1 loss of consciousness"
label(data$c1medical)="Concussion 1 did you seek medical attention"
label(data$c1mddx)="Concussion 1 If yes did a doctor tell you that you had a concussion"
label(data$c1headloc)="Concussion 1 where on head did blow or hit occur"
label(data$c1headache)="Concussion 1 headache"
label(data$c1headachedur)="Concussion 1 headache duration"
label(data$c1headachedur2)="Concussion 1 duration more than 3 weeks"
label(data$c1nausea)="Concussion 1 nausea"
label(data$c1nauseadur)="Concussion 1 nausea duration"
label(data$c1nauseadur2)="Concussion 1 nausea duration more than 3 weeks"
label(data$c1vomiting)="Concussion 1 vomiting"
label(data$c1vomitingdur)="Concussion 1 vomiting duration"
label(data$c1vomitdur2)="Concussion 1 vomiting duration more than 3 weeks"
label(data$c1balance)="Concussion 1 balance"
label(data$c1balancedur)="Concussion 1 balance duration"
label(data$c1balancedur2)="Concussion 1 balance duration more than 3 weeks"
label(data$c1dizziness)="Concussion 1 Dizziness"
label(data$c1dizzinessdur)="Concussion 1 dizziness duration"
label(data$c1dizzinessdur2)="Concussion 1 Dizziness duration more than 3 weeks"
label(data$c1vision)="Concussion 1 vision problems"
label(data$c1visiondur)="Concussion 1 vision duration"
label(data$c1visiondur2)="Concussion 1 vision duration more than 3 weeks"
label(data$c1trbconc)="Concussion 1 trouble concentration"
label(data$c1trbconcdur)="Concussion 1 trouble concentrating duration"
label(data$c1trbconsdur2)="Concussion 1 trouble concentrating duration more than 3 weeks"
label(data$c1confusion)="Concussion 1 confusion"
label(data$c1confusiondur)="Concussion 1 confusion duration"
label(data$c1confusiondur2)="Concussion 1 confusion duration more than 3 weeks"
label(data$c1amnesia)="Concussion 1 amnesia"
label(data$c1amnesiadur)="Concussion 1 amnesia duration"
label(data$c1amnesiadur2)="Concussion 1 amnesia duration more than 3 weeks"
label(data$c1fatigue)="Concussion 1 fatigue"
label(data$c1fatiguedur)="Concussion 1 fatigue duration"
label(data$c1fatiguedur2)="Concussion 1 fatigue duration more than 3 weeks"
label(data$c1sensitivity)="Concussion 1 sensitivity to light or noise"
label(data$c1sensitivitydur)="Concussion 1 light or noise sensitivity duration"
label(data$c1sensitivitydur2)="Concussion 1 sensitivity to light or noise duration more than 3 weeks"
label(data$c1sleepdis)="Concussion 1 sleep disturbances"
label(data$c1sleepdur)="Concussion 1 sleep disturbances duration"
label(data$c1sleepdur2)="Concussion 1 sleep disturbances duration more than 3 weeks"
label(data$c1moodch)="Concussion 1 mood changes"
label(data$c1moodchdur)="Concussion 1 mood changes duration"
label(data$c1moodchdur2)="Concussion 1 mood changes duration more than 3 weeks"
label(data$c1othersym)="Concussion 1 other"
label(data$c1noneabove)="Concussion 1 none of the above"
label(data$c1depression)="Concussion 1 depression"
label(data$c1depressiondur)="Concussion 1 depression duration"
label(data$c1depressiondur2)="Concussion 1 depression duration more than 3 weeks"
label(data$c1anxiety)="Concussion 1 Anxiety"
label(data$c1anxietydur)="Concussion 1 anxiety duration"
label(data$c1anxietydur2)="Concussion 1 anxiety duration more than 3 weeks"
label(data$c1agitation)="Concussion 1 Agitation"
label(data$c1agitationdur)="Concussion 1 agitation duration"
label(data$c1agitationydur2)="Concussion 1 agitation duration more than 3 weeks"
label(data$c1anger)="Concussion 1 Anger"
label(data$c1angerdur)="Concussion 1 anger duration"
label(data$c1angerdur2)="Concussion 1 anger duration more than 3 weeks"
label(data$c1aggression)="Concussion 1 Aggression"
label(data$c1aggressiondur)="Concussion 1 aggression duration"
label(data$c1aggressiondur2)="Concussion 1 aggression duration more than 3 weeks"
label(data$c1moodothersy)="Concussion 1 mood other symptoms"
label(data$c1moodnoneabove)="Concussion 1 mood none of the above"
label(data$concussion2)="Was there a 2nd concussion"
label(data$c2when)="What year did the 2nd head injury or concussion 2 occur"
label(data$c2cause)="What caused head injury or concussion 2"
label(data$c2lossconsc)="Concussion 2 loss of consciousness"
label(data$c2medical)="Concussion 2 did you seek medical attention"
label(data$c2mddx)="Concussion 2 If yes did a doctor tell you that you had a concussion"
label(data$c2headloc)="Concussion 2 where on head did blow or hit occur"
label(data$c2headache)="Concussion 2 headache"
label(data$c2headachedur)="Concussion 2 headache duration"
label(data$c2headachedur2)="Concussion 2 duration more than 3 weeks"
label(data$c2nausea)="Concussion 2 nausea"
label(data$c2nauseadur)="Concussion 2 nausea duration"
label(data$c2nauseadur2)="Concussion 2 nausea duration more than 3 weeks"
label(data$c2vomiting)="Concussion 2 vomiting"
label(data$c2vomitingdur)="Concussion 2 vomiting duration"
label(data$c2vomitdur2)="Concussion 2 vomiting duration more than 3 weeks"
label(data$c2balance)="Concussion 2 balance"
label(data$c2balancedur)="Concussion 2 balance duration"
label(data$c2balancedur2)="Concussion 2 balance duration more than 3 weeks"
label(data$c2dizziness)="Concussion 2 Dizziness"
label(data$c2dizzinessdur)="Concussion 2 dizziness duration"
label(data$c2dizzinessdur2)="Concussion 2 Dizziness duration more than 3 weeks"
label(data$c2vision)="Concussion 2 vision problems"
label(data$c2visiondur)="Concussion 2 vision duration"
label(data$c2visiondur2)="Concussion 2 vision duration more than 3 weeks"
label(data$c2trbconc)="Concussion 2 trouble concentration"
label(data$c2trbconcdur)="Concussion 2 trouble concentrating duration"
label(data$c2trbconsdur2)="Concussion 2 trouble concentrating duration more than 3 weeks"
label(data$c2confusion)="Concussion 2 confusion"
label(data$c2confusiondur)="Concussion 2 confusion duration"
label(data$c2confusiondur2)="Concussion 2 confusion duration more than 3 weeks"
label(data$c2amnesia)="Concussion 2 amnesia"
label(data$c2amnesiadur)="Concussion 2 amnesia duration"
label(data$c2amnesiadur2)="Concussion 2 amnesia duration more than 3 weeks"
label(data$c2fatigue)="Concussion 2 fatigue"
label(data$c2fatiguedur)="Concussion 2 fatigue duration"
label(data$c2fatiguedur2)="Concussion 2 fatigue duration more than 3 weeks"
label(data$c2sensitivity)="Concussion 2 sensitivity to light or noise"
label(data$c2sensitivitydur)="Concussion 2 light or noise sensitivity duration"
label(data$c2sensitivitydur2)="Concussion 2 sensitivity to light or noise duration more than 3 weeks"
label(data$c2sleepdis)="Concussion 2 sleep disturbances"
label(data$c2sleepdur)="Concussion 2 sleep disturbances duration"
label(data$c2sleepdur2)="Concussion 2 sleep disturbances duration more than 3 weeks"
label(data$c2moodch)="Concussion 2 mood changes"
label(data$c2moodchdur)="Concussion 2 mood changes duration"
label(data$c2moodchdur2)="Concussion 2 mood changes duration more than 3 weeks"
label(data$c2othersym)="Concussion 2 other"
label(data$c2noneabove)="Concussion 2 none of the above"
label(data$c2depression)="Concussion 2 depression"
label(data$c2depressiondur)="Concussion 2 depression duration"
label(data$c2depressiondur2)="Concussion 2 depression duration more than 3 weeks"
label(data$c2anxiety)="Concussion 2 Anxiety"
label(data$c2anxietydur)="Concussion 2 anxiety duration"
label(data$c2anxietydur2)="Concussion 2 anxiety duration more than 3 weeks"
label(data$c2agitation)="Concussion 2 Agitation"
label(data$c2agitationdur)="Concussion 2 agitation duration"
label(data$c2agitationydur2)="Concussion 2 agitation duration more than 3 weeks"
label(data$c2anger)="Concussion 2 Anger"
label(data$c2angerdur)="Concussion 2 anger duration"
label(data$c2angerdur2)="Concussion 2 anger duration more than 3 weeks"
label(data$c2aggression)="Concussion 2 Aggression"
label(data$c2aggressiondur)="Concussion 2 aggression duration"
label(data$c2aggressiondur2)="Concussion 2 aggression duration more than 3 weeks"
label(data$c2moodothersy)="Concussion 2 mood other symptoms"
label(data$c2moodnoneabove)="Concussion 2 mood none of the above"
label(data$concussion3)="Was there a 3rd concussion"
label(data$c3when)="What year did the 3rd head injury or concussion 1 occur"
label(data$c3cause)="What caused head injury or concussion 3"
label(data$c3lossconsc)="Concussion 3 loss of consciousness"
label(data$c3medical)="Concussion 3 did you seek medical attention"
label(data$c3mddx)="Concussion 3 If yes did a doctor tell you that you had a concussion"
label(data$c3headloc)="Concussion 3 where on head did blow or hit occur"
label(data$c3headache)="Concussion 3 headache"
label(data$c3headachedur)="Concussion 3 headache duration"
label(data$c3headachedur2)="Concussion 3 duration more than 3 weeks"
label(data$c3nausea)="Concussion 3 nausea"
label(data$c3nauseadur)="Concussion 3 nausea duration"
label(data$c3nauseadur2)="Concussion 3 nausea duration more than 3 weeks"
label(data$c3vomiting)="Concussion 3 vomiting"
label(data$c3vomitingdur)="Concussion 3 vomiting duration"
label(data$c3vomitdur2)="Concussion 3 vomiting duration more than 3 weeks"
label(data$c3balance)="Concussion 3 balance"
label(data$c3balancedur)="Concussion 3 balance duration"
label(data$c3balancedur2)="Concussion 3 balance duration more than 3 weeks"
label(data$c3dizziness)="Concussion 3 Dizziness"
label(data$c3dizzinessdur)="Concussion 3 dizziness duration"
label(data$c3dizzinessdur2)="Concussion 3 Dizziness duration more than 3 weeks"
label(data$c3vision)="Concussion 3 vision problems"
label(data$c3visiondur)="Concussion 3 vision duration"
label(data$c3visiondur2)="Concussion 3 vision duration more than 3 weeks"
label(data$c3trbconc)="Concussion 3 trouble concentration"
label(data$c3trbconcdur)="Concussion 3 trouble concentrating duration"
label(data$c3trbconsdur2)="Concussion 3 trouble concentrating duration more than 3 weeks"
label(data$c3confusion)="Concussion 3 confusion"
label(data$c3confusiondur)="Concussion 3 confusion duration"
label(data$c3confusiondur2)="Concussion 3 confusion duration more than 3 weeks"
label(data$c3amnesia)="Concussion 3 amnesia"
label(data$c3amnesiadur)="Concussion 3 amnesia duration"
label(data$c3amnesiadur2)="Concussion 3 amnesia duration more than 3 weeks"
label(data$c3fatigue)="Concussion 3 fatigue"
label(data$c3fatiguedur)="Concussion 3 fatigue duration"
label(data$c3fatiguedur2)="Concussion 3 fatigue duration more than 3 weeks"
label(data$c3sensitivity)="Concussion 3 sensitivity to light or noise"
label(data$c3sensitivitydur)="Concussion 3 light or noise sensitivity duration"
label(data$c3sensitivitydur2)="Concussion 3 sensitivity to light or noise duration more than 3 weeks"
label(data$c3sleepdis)="Concussion 3 sleep disturbances"
label(data$c3sleepdur)="Concussion 3 sleep disturbances duration"
label(data$c3sleepdur2)="Concussion 3 sleep disturbances duration more than 3 weeks"
label(data$c3moodch)="Concussion 3 mood changes"
label(data$c3moodchdur)="Concussion 3 mood changes duration"
label(data$c3moodchdur2)="Concussion 3 mood changes duration more than 3 weeks"
label(data$c3othersym)="Concussion 3 other"
label(data$c3noneabove)="Concussion 3 none of the above"
label(data$c3depression)="Concussion 3 depression"
label(data$c3depressiondur)="Concussion 3 depression duration"
label(data$c3depressiondur2)="Concussion 3 depression duration more than 3 weeks"
label(data$c3anxiety)="Concussion 3 Anxiety"
label(data$c3anxietydur)="Concussion 3 anxiety duration"
label(data$c3anxietydur2)="Concussion 3 anxiety duration more than 3 weeks"
label(data$c3agitation)="Concussion 3 Agitation"
label(data$c3agitationdur)="Concussion 3 agitation duration"
label(data$c3agitationydur2)="Concussion 3 agitation duration more than 3 weeks"
label(data$c3anger)="Concussion 3 Anger"
label(data$c3angerdur)="Concussion 3 anger duration"
label(data$c3angerdur2)="Concussion 3 anger duration more than 3 weeks"
label(data$c3aggression)="Concussion 3 Aggression"
label(data$c3aggressiondur)="Concussion 3 aggression duration"
label(data$c3aggressiondur2)="Concussion 3 aggression duration more than 3 weeks"
label(data$c3moodothersy)="Concussion 3 mood other symptoms"
label(data$c3moodnoneabove)="Concussion 3 mood none of the above"
label(data$concussion4)="Was there a 4th concussion"
label(data$c4when)="What year did the 4th head injury or concussion 1 occur"
label(data$c4cause)="What caused head injury or concussion 4"
label(data$c4lossconsc)="Concussion 4 loss of consciousness"
label(data$c4medical)="Concussion 4 did you seek medical attention"
label(data$c4mddx)="Concussion 4 If yes did a doctor tell you that you had a concussion"
label(data$c4headloc)="Concussion 4 where on head did blow or hit occur"
label(data$c4headache)="Concussion 4 headache"
label(data$c4headachedur)="Concussion 4 headache duration"
label(data$c4headachedur2)="Concussion 4 duration more than 3 weeks"
label(data$c4nausea)="Concussion 4 nausea"
label(data$c4nauseadur)="Concussion 4 nausea duration"
label(data$c4nauseadur2)="Concussion 4 nausea duration more than 3 weeks"
label(data$c4vomiting)="Concussion 4 vomiting"
label(data$c4vomitingdur)="Concussion 4 vomiting duration"
label(data$c4vomitdur2)="Concussion 4 vomiting duration more than 3 weeks"
label(data$c4balance)="Concussion 4 balance"
label(data$c4balancedur)="Concussion 4 balance duration"
label(data$c4balancedur2)="Concussion 4 balance duration more than 3 weeks"
label(data$c4dizziness)="Concussion 4 Dizziness"
label(data$c4dizzinessdur)="Concussion 4 dizziness duration"
label(data$c4dizzinessdur2)="Concussion 4 Dizziness duration more than 3 weeks"
label(data$c4vision)="Concussion 4 vision problems"
label(data$c4visiondur)="Concussion 4 vision duration"
label(data$c4visiondur2)="Concussion 4 vision duration more than 3 weeks"
label(data$c4trbconc)="Concussion 4 trouble concentration"
label(data$c4trbconcdur)="Concussion 4 trouble concentrating duration"
label(data$c4trbconsdur2)="Concussion 4 trouble concentrating duration more than 3 weeks"
label(data$c4confusion)="Concussion 4 confusion"
label(data$c4confusiondur)="Concussion 4 confusion duration"
label(data$c4confusiondur2)="Concussion 4 confusion duration more than 3 weeks"
label(data$c4amnesia)="Concussion 4 amnesia"
label(data$c4amnesiadur)="Concussion 4 amnesia duration"
label(data$c4amnesiadur2)="Concussion 4 amnesia duration more than 3 weeks"
label(data$c4fatigue)="Concussion 4 fatigue"
label(data$c4fatiguedur)="Concussion 4 fatigue duration"
label(data$c4fatiguedur2)="Concussion 4 fatigue duration more than 3 weeks"
label(data$c4sensitivity)="Concussion 4 sensitivity to light or noise"
label(data$c4sensitivitydur)="Concussion 4 light or noise sensitivity duration"
label(data$c4sensitivitydur2)="Concussion 4 sensitivity to light or noise duration more than 3 weeks"
label(data$c4sleepdis)="Concussion 4 sleep disturbances"
label(data$c4sleepdur)="Concussion 4 sleep disturbances duration"
label(data$c4sleepdur2)="Concussion 4 sleep disturbances duration more than 3 weeks"
label(data$c4moodch)="Concussion 4 mood changes"
label(data$c4moodchdur)="Concussion 4 mood changes duration"
label(data$c4moodchdur2)="Concussion 4 mood changes duration more than 3 weeks"
label(data$c4othersym)="Concussion 4 other"
label(data$c4noneabove)="Concussion 4 none of the above"
label(data$c4depression)="Concussion 4 depression"
label(data$c4depressiondur)="Concussion 4 depression duration"
label(data$c4depressiondur2)="Concussion 4 depression duration more than 3 weeks"
label(data$c4anxiety)="Concussion 4 Anxiety"
label(data$c4anxietydur)="Concussion 4 anxiety duration"
label(data$c4anxietydur2)="Concussion 4 anxiety duration more than 3 weeks"
label(data$c4agitation)="Concussion 4 Agitation"
label(data$c4agitationdur)="Concussion 4 agitation duration"
label(data$c4agitationydur2)="Concussion 4 agitation duration more than 3 weeks"
label(data$c4anger)="Concussion 4 Anger"
label(data$c4angerdur)="Concussion 4 anger duration"
label(data$c4angerdur2)="Concussion 4 anger duration more than 3 weeks"
label(data$c4aggression)="Concussion 4 Aggression"
label(data$c4aggressiondur)="Concussion 4 aggression duration"
label(data$c4aggressiondur2)="Concussion 4 aggression duration more than 3 weeks"
label(data$c4moodothersy)="Concussion 4 mood other symptoms"
label(data$c4moodnoneabove)="Concussion 4 mood none of the above"
label(data$concussion5)="Was there a 5th concussion"
label(data$c5when)="What year did the 5th head injury or concussion 1 occur"
label(data$c5cause)="What caused head injury or concussion 5"
label(data$c5lossconsc)="Concussion 5 loss of consciousness"
label(data$c5medical)="Concussion 5 did you seek medical attention"
label(data$c5mddx)="Concussion 5 If yes did a doctor tell you that you had a concussion"
label(data$c5headloc)="Concussion 5 where on head did blow or hit occur"
label(data$c5headache)="Concussion 5 headache"
label(data$c5headachedur)="Concussion 5 headache duration"
label(data$c5headachedur2)="Concussion 5 duration more than 3 weeks"
label(data$c5nausea)="Concussion 5 nausea"
label(data$c5nauseadur)="Concussion 5 nausea duration"
label(data$c5nauseadur2)="Concussion 5 nausea duration more than 3 weeks"
label(data$c5vomiting)="Concussion 5 vomiting"
label(data$c5vomitingdur)="Concussion 5 vomiting duration"
label(data$c5vomitdur2)="Concussion 5 vomiting duration more than 3 weeks"
label(data$c5balance)="Concussion 5 balance"
label(data$c5balancedur)="Concussion 5 balance duration"
label(data$c5balancedur2)="Concussion 5 balance duration more than 3 weeks"
label(data$c5dizziness)="Concussion 5 Dizziness"
label(data$c5dizzinessdur)="Concussion 5 dizziness duration"
label(data$c5dizzinessdur2)="Concussion 5 Dizziness duration more than 3 weeks"
label(data$c5vision)="Concussion 5 vision problems"
label(data$c5visiondur)="Concussion 5 vision duration"
label(data$c5visiondur2)="Concussion 5 vision duration more than 3 weeks"
label(data$c5trbconc)="Concussion 5 trouble concentration"
label(data$c5trbconcdur)="Concussion 5 trouble concentrating duration"
label(data$c5trbconsdur2)="Concussion 5 trouble concentrating duration more than 3 weeks"
label(data$c5confusion)="Concussion 5 confusion"
label(data$c5confusiondur)="Concussion 5 confusion duration"
label(data$c5confusiondur2)="Concussion 5 confusion duration more than 3 weeks"
label(data$c5amnesia)="Concussion 5 amnesia"
label(data$c5amnesiadur)="Concussion 5 amnesia duration"
label(data$c5amnesiadur2)="Concussion 5 amnesia duration more than 3 weeks"
label(data$c5fatigue)="Concussion 5 fatigue"
label(data$c5fatiguedur)="Concussion 5 fatigue duration"
label(data$c5fatiguedur2)="Concussion 5 fatigue duration more than 3 weeks"
label(data$c5sensitivity)="Concussion 5 sensitivity to light or noise"
label(data$c5sensitivitydur)="Concussion 5 light or noise sensitivity duration"
label(data$c5sensitivitydur2)="Concussion 5 sensitivity to light or noise duration more than 3 weeks"
label(data$c5sleepdis)="Concussion 5 sleep disturbances"
label(data$c5sleepdur)="Concussion 5 sleep disturbances duration"
label(data$c5sleepdur2)="Concussion 5 sleep disturbances duration more than 3 weeks"
label(data$c5moodch)="Concussion 5 mood changes"
label(data$c5moodchdur)="Concussion 5 mood changes duration"
label(data$c5moodchdur2)="Concussion 5 mood changes duration more than 3 weeks"
label(data$c5othersym)="Concussion 5 other"
label(data$c5noneabove)="Concussion 5 none of the above"
label(data$c5depression)="Concussion 5 depression"
label(data$c5depressiondur)="Concussion 5 depression duration"
label(data$c5depressiondur2)="Concussion 5 depression duration more than 3 weeks"
label(data$c5anxiety)="Concussion 5 Anxiety"
label(data$c5anxietydur)="Concussion 5 anxiety duration"
label(data$c5anxietydur2)="Concussion 5 anxiety duration more than 3 weeks"
label(data$c5agitation)="Concussion 5 Agitation"
label(data$c5agitationdur)="Concussion 5 agitation duration"
label(data$c5agitationydur2)="Concussion 5 agitation duration more than 3 weeks"
label(data$c5anger)="Concussion 5 Anger"
label(data$c5angerdur)="Concussion 5 anger duration"
label(data$c5angerdur2)="Concussion 5 anger duration more than 3 weeks"
label(data$c5aggression)="Concussion 5 Aggression"
label(data$c5aggressiondur)="Concussion 5 aggression duration"
label(data$c5aggressiondur2)="Concussion 5 aggression duration more than 3 weeks"
label(data$c5moodothersy)="Concussion 5 mood other symptoms"
label(data$c5moodnoneabove)="Concussion 5 mood none of the above"
label(data$c1aggression_1)="Concussion 1 Aggression : Yes (Checkbox Indicator)"
label(data$c1agitation_1)="Concussion 1 Agitation : Yes (Checkbox Indicator)"
label(data$c1amnesia_1)="Concussion 1 amnesia : Yes (Checkbox Indicator)"
label(data$c1anger_1)="Concussion 1 Anger : Yes (Checkbox Indicator)"
label(data$c1anxiety_1)="Concussion 1 Anxiety : Yes (Checkbox Indicator)"
label(data$c1balance_1)="Concussion 1 balance : Yes (Checkbox Indicator)"
label(data$c1confusion_1)="Concussion 1 confusion : Yes (Checkbox Indicator)"
label(data$c1depression_1)="Concussion 1 depression : Yes (Checkbox Indicator)"
label(data$c1dizziness_1)="Concussion 1 Dizziness : Yes (Checkbox Indicator)"
label(data$c1fatigue_1)="Concussion 1 fatigue : Yes (Checkbox Indicator)"
label(data$c1headache_1)="Concussion 1 headache : Yes (Checkbox Indicator)"
label(data$c1moodch_1)="Concussion 1 mood changes : Yes (Checkbox Indicator)"
label(data$c1moodnoneabove_1)="Concussion 1 mood none of the above : Yes (Checkbox Indicator)"
label(data$c1moodothersy_1)="Concussion 1 mood other symptoms : Yes (Checkbox Indicator)"
label(data$c1nausea_1)="Concussion 1 nausea : Yes (Checkbox Indicator)"
label(data$c1noneabove_1)="Concussion 1 none of the above : Yes (Checkbox Indicator)"
label(data$c1othersym_1)="Concussion 1 other : Yes (Checkbox Indicator)"
label(data$c1sensitivity_1)="Concussion 1 sensitivity to light or noise : Yes (Checkbox Indicator)"
label(data$c1sleepdis_1)="Concussion 1 sleep disturbances : Yes (Checkbox Indicator)"
label(data$c1trbconc_1)="Concussion 1 trouble concentration : Yes (Checkbox Indicator)"
label(data$c1vision_1)="Concussion 1 vision problems : Yes (Checkbox Indicator)"
label(data$c1vomiting_1)="Concussion 1 vomiting : Yes (Checkbox Indicator)"
label(data$c2aggression_1)="Concussion 2 Aggression : Yes (Checkbox Indicator)"
label(data$c2agitation_1)="Concussion 2 Agitation : Yes (Checkbox Indicator)"
label(data$c2amnesia_1)="Concussion 2 amnesia : Yes (Checkbox Indicator)"
label(data$c2anger_1)="Concussion 2 Anger : Yes (Checkbox Indicator)"
label(data$c2anxiety_1)="Concussion 2 Anxiety : Yes (Checkbox Indicator)"
label(data$c2balance_1)="Concussion 2 balance : Yes (Checkbox Indicator)"
label(data$c2confusion_1)="Concussion 2 confusion : Yes (Checkbox Indicator)"
label(data$c2depression_1)="Concussion 2 depression : Yes (Checkbox Indicator)"
label(data$c2dizziness_1)="Concussion 2 Dizziness : Yes (Checkbox Indicator)"
label(data$c2fatigue_1)="Concussion 2 fatigue : Yes (Checkbox Indicator)"
label(data$c2headache_1)="Concussion 2 headache : Yes (Checkbox Indicator)"
label(data$c2moodch_1)="Concussion 2 mood changes : Yes (Checkbox Indicator)"
label(data$c2moodnoneabove_1)="Concussion 2 mood none of the above : Yes (Checkbox Indicator)"
label(data$c2moodothersy_1)="Concussion 2 mood other symptoms : Yes (Checkbox Indicator)"
label(data$c2nausea_1)="Concussion 2 nausea : Yes (Checkbox Indicator)"
label(data$c2noneabove_1)="Concussion 2 none of the above : Yes (Checkbox Indicator)"
label(data$c2othersym_1)="Concussion 2 other : Yes (Checkbox Indicator)"
label(data$c2sensitivity_1)="Concussion 2 sensitivity to light or noise : Yes (Checkbox Indicator)"
label(data$c2sleepdis_1)="Concussion 2 sleep disturbances : Yes (Checkbox Indicator)"
label(data$c2trbconc_1)="Concussion 2 trouble concentration : Yes (Checkbox Indicator)"
label(data$c2vision_1)="Concussion 2 vision problems : Yes (Checkbox Indicator)"
label(data$c2vomiting_1)="Concussion 2 vomiting : Yes (Checkbox Indicator)"
label(data$c3aggression_1)="Concussion 3 Aggression : Yes (Checkbox Indicator)"
label(data$c3agitation_1)="Concussion 3 Agitation : Yes (Checkbox Indicator)"
label(data$c3amnesia_1)="Concussion 3 amnesia : Yes (Checkbox Indicator)"
label(data$c3anger_1)="Concussion 3 Anger : Yes (Checkbox Indicator)"
label(data$c3anxiety_1)="Concussion 3 Anxiety : Yes (Checkbox Indicator)"
label(data$c3balance_1)="Concussion 3 balance : Yes (Checkbox Indicator)"
label(data$c3confusion_1)="Concussion 3 confusion : Yes (Checkbox Indicator)"
label(data$c3depression_1)="Concussion 3 depression : Yes (Checkbox Indicator)"
label(data$c3dizziness_1)="Concussion 3 Dizziness : Yes (Checkbox Indicator)"
label(data$c3fatigue_1)="Concussion 3 fatigue : Yes (Checkbox Indicator)"
label(data$c3headache_1)="Concussion 3 headache : Yes (Checkbox Indicator)"
label(data$c3moodch_1)="Concussion 3 mood changes : Yes (Checkbox Indicator)"
label(data$c3moodnoneabove_1)="Concussion 3 mood none of the above : Yes (Checkbox Indicator)"
label(data$c3moodothersy_1)="Concussion 3 mood other symptoms : Yes (Checkbox Indicator)"
label(data$c3nausea_1)="Concussion 3 nausea : Yes (Checkbox Indicator)"
label(data$c3noneabove_1)="Concussion 3 none of the above : Yes (Checkbox Indicator)"
label(data$c3othersym_1)="Concussion 3 other : Yes (Checkbox Indicator)"
label(data$c3sensitivity_1)="Concussion 3 sensitivity to light or noise : Yes (Checkbox Indicator)"
label(data$c3sleepdis_1)="Concussion 3 sleep disturbances : Yes (Checkbox Indicator)"
label(data$c3trbconc_1)="Concussion 3 trouble concentration : Yes (Checkbox Indicator)"
label(data$c3vision_1)="Concussion 3 vision problems : Yes (Checkbox Indicator)"
label(data$c3vomiting_1)="Concussion 3 vomiting : Yes (Checkbox Indicator)"
label(data$c4aggression_1)="Concussion 4 Aggression : Yes (Checkbox Indicator)"
label(data$c4agitation_1)="Concussion 4 Agitation : Yes (Checkbox Indicator)"
label(data$c4amnesia_1)="Concussion 4 amnesia : Yes (Checkbox Indicator)"
label(data$c4anger_1)="Concussion 4 Anger : Yes (Checkbox Indicator)"
label(data$c4anxiety_1)="Concussion 4 Anxiety : Yes (Checkbox Indicator)"
label(data$c4balance_1)="Concussion 4 balance : Yes (Checkbox Indicator)"
label(data$c4confusion_1)="Concussion 4 confusion : Yes (Checkbox Indicator)"
label(data$c4depression_1)="Concussion 4 depression : Yes (Checkbox Indicator)"
label(data$c4dizziness_1)="Concussion 4 Dizziness : Yes (Checkbox Indicator)"
label(data$c4fatigue_1)="Concussion 4 fatigue : Yes (Checkbox Indicator)"
label(data$c4headache_1)="Concussion 4 headache : Yes (Checkbox Indicator)"
label(data$c4moodch_1)="Concussion 4 mood changes : Yes (Checkbox Indicator)"
label(data$c4moodnoneabove_1)="Concussion 4 mood none of the above : Yes (Checkbox Indicator)"
label(data$c4moodothersy_1)="Concussion 4 mood other symptoms : Yes (Checkbox Indicator)"
label(data$c4nausea_1)="Concussion 4 nausea : Yes (Checkbox Indicator)"
label(data$c4noneabove_1)="Concussion 4 none of the above : Yes (Checkbox Indicator)"
label(data$c4othersym_1)="Concussion 4 other : Yes (Checkbox Indicator)"
label(data$c4sensitivity_1)="Concussion 4 sensitivity to light or noise : Yes (Checkbox Indicator)"
label(data$c4sleepdis_1)="Concussion 4 sleep disturbances : Yes (Checkbox Indicator)"
label(data$c4trbconc_1)="Concussion 4 trouble concentration : Yes (Checkbox Indicator)"
label(data$c4vision_1)="Concussion 4 vision problems : Yes (Checkbox Indicator)"
label(data$c4vomiting_1)="Concussion 4 vomiting : Yes (Checkbox Indicator)"
label(data$c5aggression_1)="Concussion 5 Aggression : Yes (Checkbox Indicator)"
label(data$c5agitation_1)="Concussion 5 Agitation : Yes (Checkbox Indicator)"
label(data$c5amnesia_1)="Concussion 5 amnesia : Yes (Checkbox Indicator)"
label(data$c5anger_1)="Concussion 5 Anger : Yes (Checkbox Indicator)"
label(data$c5anxiety_1)="Concussion 5 Anxiety : Yes (Checkbox Indicator)"
label(data$c5balance_1)="Concussion 5 balance : Yes (Checkbox Indicator)"
label(data$c5confusion_1)="Concussion 5 confusion : Yes (Checkbox Indicator)"
label(data$c5depression_1)="Concussion 5 depression : Yes (Checkbox Indicator)"
label(data$c5dizziness_1)="Concussion 5 Dizziness : Yes (Checkbox Indicator)"
label(data$c5fatigue_1)="Concussion 5 fatigue : Yes (Checkbox Indicator)"
label(data$c5headache_1)="Concussion 5 headache : Yes (Checkbox Indicator)"
label(data$c5moodch_1)="Concussion 5 mood changes : Yes (Checkbox Indicator)"
label(data$c5moodnoneabove_1)="Concussion 5 mood none of the above : Yes (Checkbox Indicator)"
label(data$c5moodothersy_1)="Concussion 5 mood other symptoms : Yes (Checkbox Indicator)"
label(data$c5nausea_1)="Concussion 5 nausea : Yes (Checkbox Indicator)"
label(data$c5noneabove_1)="Concussion 5 none of the above : Yes (Checkbox Indicator)"
label(data$c5othersym_1)="Concussion 5 other : Yes (Checkbox Indicator)"
label(data$c5sensitivity_1)="Concussion 5 sensitivity to light or noise : Yes (Checkbox Indicator)"
label(data$c5sleepdis_1)="Concussion 5 sleep disturbances : Yes (Checkbox Indicator)"
label(data$c5trbconc_1)="Concussion 5 trouble concentration : Yes (Checkbox Indicator)"
label(data$c5vision_1)="Concussion 5 vision problems : Yes (Checkbox Indicator)"
label(data$c5vomiting_1)="Concussion 5 vomiting : Yes (Checkbox Indicator)"

#Create new variables for factors
data$hadconcussion.factor = factor(data$hadconcussion, levels = c("0","1"))
levels(data$hadconcussion.factor) = c("No","Yes")

data$c1cause.factor = factor(data$c1cause, levels = c("1","5","2","7","3","6","4"))
levels(data$c1cause.factor) = c("Fall","Sports related injury","Car accident","Other","Bicycle accident","Assault","Military injury")

data$c1lossconsc.factor = factor(data$c1lossconsc, levels = c("0","1"))
levels(data$c1lossconsc.factor) = c("No","Yes")

data$c1medical.factor = factor(data$c1medical, levels = c("1","0"))
levels(data$c1medical.factor) = c("Yes","No")

data$c1mddx.factor = factor(data$c1mddx, levels = c("1","0"))
levels(data$c1mddx.factor) = c("Yes","No")

data$c1headloc.factor = factor(data$c1headloc, levels = c("1","4","2","5","3","6"))
levels(data$c1headloc.factor) = c("Front of the head","Back of the head","Right side of the head","Top of the head"," Left side of the head","Blast injury")

data$c1headachedur.factor = factor(data$c1headachedur, levels = c("1","2","3"))
levels(data$c1headachedur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c1headachedur2.factor = factor(data$c1headachedur2, levels = c("2","3","1"))
levels(data$c1headachedur2.factor) = c("More than 6 months","More than 1 year","More than 1 month")

data$c1nauseadur.factor = factor(data$c1nauseadur, levels = c("1","2","3"))
levels(data$c1nauseadur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c1vomitingdur.factor = factor(data$c1vomitingdur, levels = c("1","2","3"))
levels(data$c1vomitingdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c1balancedur.factor = factor(data$c1balancedur, levels = c("3","1","2"))
levels(data$c1balancedur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1balancedur2.factor = factor(data$c1balancedur2, levels = c("3","2","1"))
levels(data$c1balancedur2.factor) = c("More than 1 year","More than 6 months","More than 1 month")

data$c1dizzinessdur.factor = factor(data$c1dizzinessdur, levels = c("1","3","2"))
levels(data$c1dizzinessdur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1dizzinessdur2.factor = factor(data$c1dizzinessdur2, levels = c("3","1","2"))
levels(data$c1dizzinessdur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$c1visiondur.factor = factor(data$c1visiondur, levels = c("1","3","2"))
levels(data$c1visiondur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1visiondur2.factor = factor(data$c1visiondur2, levels = c("3","1","2"))
levels(data$c1visiondur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$c1trbconcdur.factor = factor(data$c1trbconcdur, levels = c("3","1","2"))
levels(data$c1trbconcdur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1trbconsdur2.factor = factor(data$c1trbconsdur2, levels = c("1","3","2"))
levels(data$c1trbconsdur2.factor) = c("More than 1 month","More than 1 year","More than 6 months")

data$c1confusiondur.factor = factor(data$c1confusiondur, levels = c("1","3","2"))
levels(data$c1confusiondur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1confusiondur2.factor = factor(data$c1confusiondur2, levels = c("1","3","2"))
levels(data$c1confusiondur2.factor) = c("More than 1 month","More than 1 year","More than 6 months")

data$c1amnesiadur.factor = factor(data$c1amnesiadur, levels = c("3","1","2"))
levels(data$c1amnesiadur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1amnesiadur2.factor = factor(data$c1amnesiadur2, levels = c("3","2","1"))
levels(data$c1amnesiadur2.factor) = c("More than 1 year","More than 6 months","More than 1 month")

data$c1fatiguedur.factor = factor(data$c1fatiguedur, levels = c("1","3","2"))
levels(data$c1fatiguedur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1fatiguedur2.factor = factor(data$c1fatiguedur2, levels = c("1","3","2"))
levels(data$c1fatiguedur2.factor) = c("More than 1 month","More than 1 year","More than 6 months")

data$c1sensitivitydur.factor = factor(data$c1sensitivitydur, levels = c("1","3","2"))
levels(data$c1sensitivitydur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1sensitivitydur2.factor = factor(data$c1sensitivitydur2, levels = c("2","1","3"))
levels(data$c1sensitivitydur2.factor) = c("More than 6 months","More than 1 month","More than 1 year")

data$c1sleepdur.factor = factor(data$c1sleepdur, levels = c("3","1","2"))
levels(data$c1sleepdur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1sleepdur2.factor = factor(data$c1sleepdur2, levels = c("3","1","2"))
levels(data$c1sleepdur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$c1moodchdur.factor = factor(data$c1moodchdur, levels = c("3","1","2"))
levels(data$c1moodchdur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1moodchdur2.factor = factor(data$c1moodchdur2, levels = c("3","2","1"))
levels(data$c1moodchdur2.factor) = c("More than 1 year","More than 6 months","More than 1 month")

data$c1depressiondur.factor = factor(data$c1depressiondur, levels = c("3","1","2"))
levels(data$c1depressiondur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1depressiondur2.factor = factor(data$c1depressiondur2, levels = c("2","1","3"))
levels(data$c1depressiondur2.factor) = c("More than 6 months","More than 1 month","More than 1 year")

data$c1anxietydur.factor = factor(data$c1anxietydur, levels = c("1","3","2"))
levels(data$c1anxietydur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c1anxietydur2.factor = factor(data$c1anxietydur2, levels = c("2","1","3"))
levels(data$c1anxietydur2.factor) = c("More than 6 months","More than 1 month","More than 1 year")

data$c1agitationdur.factor = factor(data$c1agitationdur, levels = c("1","2","3"))
levels(data$c1agitationdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c1angerdur.factor = factor(data$c1angerdur, levels = c("3","1","2"))
levels(data$c1angerdur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1angerdur2.factor = factor(data$c1angerdur2, levels = c("3","1","2"))
levels(data$c1angerdur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$c1aggressiondur.factor = factor(data$c1aggressiondur, levels = c("3","1","2"))
levels(data$c1aggressiondur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c1aggressiondur2.factor = factor(data$c1aggressiondur2, levels = c("3","1","2"))
levels(data$c1aggressiondur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$concussion2.factor = factor(data$concussion2, levels = c("0","1"))
levels(data$concussion2.factor) = c("No","Yes")

data$c2cause.factor = factor(data$c2cause, levels = c("5","1","2","7","6","3","4"))
levels(data$c2cause.factor) = c("Sports related injury","Fall","Car accident","Other","Assault","Bicycle accident","Military injury")

data$c2lossconsc.factor = factor(data$c2lossconsc, levels = c("0","1"))
levels(data$c2lossconsc.factor) = c("No","Yes")

data$c2medical.factor = factor(data$c2medical, levels = c("0","1"))
levels(data$c2medical.factor) = c("No","Yes")

data$c2mddx.factor = factor(data$c2mddx, levels = c("1","0"))
levels(data$c2mddx.factor) = c("Yes","No")

data$c2headloc.factor = factor(data$c2headloc, levels = c("4","1","2","3","5","6"))
levels(data$c2headloc.factor) = c("Back of the head","Front of the head","Right side of the head"," Left side of the head","Top of the head","Blast injury")

data$c2headachedur.factor = factor(data$c2headachedur, levels = c("1","2","3"))
levels(data$c2headachedur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2nauseadur.factor = factor(data$c2nauseadur, levels = c("1","2","3"))
levels(data$c2nauseadur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2vomitingdur.factor = factor(data$c2vomitingdur, levels = c("1","2","3"))
levels(data$c2vomitingdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2balancedur.factor = factor(data$c2balancedur, levels = c("1","2","3"))
levels(data$c2balancedur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2dizzinessdur.factor = factor(data$c2dizzinessdur, levels = c("1","2","3"))
levels(data$c2dizzinessdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2visiondur.factor = factor(data$c2visiondur, levels = c("1","2","3"))
levels(data$c2visiondur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2trbconcdur.factor = factor(data$c2trbconcdur, levels = c("1","2","3"))
levels(data$c2trbconcdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2confusiondur.factor = factor(data$c2confusiondur, levels = c("1","2","3"))
levels(data$c2confusiondur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2amnesiadur.factor = factor(data$c2amnesiadur, levels = c("1","3","2"))
levels(data$c2amnesiadur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c2fatiguedur.factor = factor(data$c2fatiguedur, levels = c("1","3","2"))
levels(data$c2fatiguedur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c2fatiguedur2.factor = factor(data$c2fatiguedur2, levels = c("1","2","3"))
levels(data$c2fatiguedur2.factor) = c("More than 1 month","More than 6 months","More than 1 year")

data$c2sensitivitydur.factor = factor(data$c2sensitivitydur, levels = c("1","2","3"))
levels(data$c2sensitivitydur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2sleepdur.factor = factor(data$c2sleepdur, levels = c("1","2","3"))
levels(data$c2sleepdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2moodchdur.factor = factor(data$c2moodchdur, levels = c("1","2","3"))
levels(data$c2moodchdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2depressiondur.factor = factor(data$c2depressiondur, levels = c("1","2","3"))
levels(data$c2depressiondur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2anxietydur.factor = factor(data$c2anxietydur, levels = c("1","2","3"))
levels(data$c2anxietydur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2agitationdur.factor = factor(data$c2agitationdur, levels = c("1","2","3"))
levels(data$c2agitationdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2angerdur.factor = factor(data$c2angerdur, levels = c("1","2","3"))
levels(data$c2angerdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c2aggressiondur.factor = factor(data$c2aggressiondur, levels = c("1","2","3"))
levels(data$c2aggressiondur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$concussion3.factor = factor(data$concussion3, levels = c("0","1"))
levels(data$concussion3.factor) = c("No","Yes")

data$c3cause.factor = factor(data$c3cause, levels = c("5","1","2","3","4","6","7"))
levels(data$c3cause.factor) = c("Sports related injury","Fall","Car accident","Bicycle accident","Military injury","Assault","Other")

data$c3lossconsc.factor = factor(data$c3lossconsc, levels = c("0","1"))
levels(data$c3lossconsc.factor) = c("No","Yes")

data$c3medical.factor = factor(data$c3medical, levels = c("1","0"))
levels(data$c3medical.factor) = c("Yes","No")

data$c3mddx.factor = factor(data$c3mddx, levels = c("0","1"))
levels(data$c3mddx.factor) = c("No","Yes")

data$c3headloc.factor = factor(data$c3headloc, levels = c("4","1","2","3","5","6"))
levels(data$c3headloc.factor) = c("Back of the head","Front of the head","Right side of the head"," Left side of the head","Top of the head","Blast injury")

data$c3headachedur.factor = factor(data$c3headachedur, levels = c("1","2","3"))
levels(data$c3headachedur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c3nauseadur.factor = factor(data$c3nauseadur, levels = c("1","2","3"))
levels(data$c3nauseadur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c3vomitingdur.factor = factor(data$c3vomitingdur, levels = c("1","2","3"))
levels(data$c3vomitingdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

data$c3dizzinessdur.factor = factor(data$c3dizzinessdur, levels = c("1","3","2"))
levels(data$c3dizzinessdur.factor) = c("Less than 3 days","More than 3 weeks","Less than 3 weeks")

data$c3dizzinessdur2.factor = factor(data$c3dizzinessdur2, levels = c("1","2","3"))
levels(data$c3dizzinessdur2.factor) = c("More than 1 month","More than 6 months","More than 1 year")

data$c3fatiguedur.factor = factor(data$c3fatiguedur, levels = c("3","1","2"))
levels(data$c3fatiguedur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c3fatiguedur2.factor = factor(data$c3fatiguedur2, levels = c("1","2","3"))
levels(data$c3fatiguedur2.factor) = c("More than 1 month","More than 6 months","More than 1 year")

data$concussion4.factor = factor(data$concussion4, levels = c("1","0"))
levels(data$concussion4.factor) = c("Yes","No")

data$c4cause.factor = factor(data$c4cause, levels = c("5","3","1","2","4","6","7"))
levels(data$c4cause.factor) = c("Sports related injury","Bicycle accident","Fall","Car accident","Military injury","Assault","Other")

data$c4lossconsc.factor = factor(data$c4lossconsc, levels = c("1","0"))
levels(data$c4lossconsc.factor) = c("Yes","No")

data$c4medical.factor = factor(data$c4medical, levels = c("1","0"))
levels(data$c4medical.factor) = c("Yes","No")

data$c4mddx.factor = factor(data$c4mddx, levels = c("1","0"))
levels(data$c4mddx.factor) = c("Yes","No")

data$c4headloc.factor = factor(data$c4headloc, levels = c("2","1","4","3","5","6"))
levels(data$c4headloc.factor) = c("Right side of the head","Front of the head","Back of the head"," Left side of the head","Top of the head","Blast injury")

data$c4headachedur.factor = factor(data$c4headachedur, levels = c("2","1","3"))
levels(data$c4headachedur.factor) = c("Less than 3 weeks","Less than 3 days","More than 3 weeks")

data$c4balancedur.factor = factor(data$c4balancedur, levels = c("3","1","2"))
levels(data$c4balancedur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c4balancedur2.factor = factor(data$c4balancedur2, levels = c("3","1","2"))
levels(data$c4balancedur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$c4dizzinessdur.factor = factor(data$c4dizzinessdur, levels = c("3","1","2"))
levels(data$c4dizzinessdur.factor) = c("More than 3 weeks","Less than 3 days","Less than 3 weeks")

data$c4dizzinessdur2.factor = factor(data$c4dizzinessdur2, levels = c("3","1","2"))
levels(data$c4dizzinessdur2.factor) = c("More than 1 year","More than 1 month","More than 6 months")

data$concussion5.factor = factor(data$concussion5, levels = c("0","1"))
levels(data$concussion5.factor) = c("No","Yes")

data$c5cause.factor = factor(data$c5cause, levels = c("1","2","3","4","5","6","7"))
levels(data$c5cause.factor) = c("Fall","Car accident","Bicycle accident","Military injury","Sports related injury","Assault","Other")

data$c5lossconsc.factor = factor(data$c5lossconsc, levels = c("1","0"))
levels(data$c5lossconsc.factor) = c("Yes","No")

data$c5medical.factor = factor(data$c5medical, levels = c("1","0"))
levels(data$c5medical.factor) = c("Yes","No")

data$c5headloc.factor = factor(data$c5headloc, levels = c("4","1","2","3","5","6"))
levels(data$c5headloc.factor) = c("Back of the head","Front of the head","Right side of the head"," Left side of the head","Top of the head","Blast injury")

data$c5vomitingdur.factor = factor(data$c5vomitingdur, levels = c("1","2","3"))
levels(data$c5vomitingdur.factor) = c("Less than 3 days","Less than 3 weeks","More than 3 weeks")

