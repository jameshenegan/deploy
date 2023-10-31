clear
import delimited "../data-csv/oc_headinjuryquestionnaire.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_heainjque "CRF Version"

label variable hadconcussion "Have you ever had a head injury or concussion"
label define _Yp7XMztJKI 0 "No" 1 "Yes"
label values hadconcussion _Yp7XMztJKI

label variable howmany "How many head injuries concussions have you had"

label variable c1when "What year did the first head injury or concussion 1 occur"

label variable c1cause "What caused head injury or concussion 1"
label define _01X9wABb2G 1 "Fall" 5 "Sports related injury" 2 "Car accident" 7 "Other" 3 "Bicycle accident" 6 "Assault" 4 "Military injury"
label values c1cause _01X9wABb2G

label variable c1lossconsc "Concussion 1 loss of consciousness"
label define _28RIGmEcOc 0 "No" 1 "Yes"
label values c1lossconsc _28RIGmEcOc

label variable c1medical "Concussion 1 did you seek medical attention"
label define _UCJ4LOqZGR 1 "Yes" 0 "No"
label values c1medical _UCJ4LOqZGR

label variable c1mddx "Concussion 1 If yes did a doctor tell you that you had a concussion"
label define _5KvXUrGbpC 1 "Yes" 0 "No"
label values c1mddx _5KvXUrGbpC

label variable c1headloc "Concussion 1 where on head did blow or hit occur"
label define _L4oItmAvWU 1 "Front of the head" 4 "Back of the head" 2 "Right side of the head" 5 "Top of the head" 3 " Left side of the head" 6 "Blast injury"
label values c1headloc _L4oItmAvWU

label variable c1headache "Concussion 1 headache"

label variable c1headachedur "Concussion 1 headache duration"
label define _CpSBJee30y 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c1headachedur _CpSBJee30y

label variable c1headachedur2 "Concussion 1 duration more than 3 weeks"
label define _0oEtAYNNgo 2 "More than 6 months" 3 "More than 1 year" 1 "More than 1 month"
label values c1headachedur2 _0oEtAYNNgo

label variable c1nausea "Concussion 1 nausea"

label variable c1nauseadur "Concussion 1 nausea duration"
label define _EhX6dxaPL5 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c1nauseadur _EhX6dxaPL5

label variable c1nauseadur2 "Concussion 1 nausea duration more than 3 weeks"

label variable c1vomiting "Concussion 1 vomiting"

label variable c1vomitingdur "Concussion 1 vomiting duration"
label define _LfBEV0Dj3J 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c1vomitingdur _LfBEV0Dj3J

label variable c1vomitdur2 "Concussion 1 vomiting duration more than 3 weeks"

label variable c1balance "Concussion 1 balance"

label variable c1balancedur "Concussion 1 balance duration"
label define _USeHflpxgo 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1balancedur _USeHflpxgo

label variable c1balancedur2 "Concussion 1 balance duration more than 3 weeks"
label define _uSoKWGRj3n 3 "More than 1 year" 2 "More than 6 months" 1 "More than 1 month"
label values c1balancedur2 _uSoKWGRj3n

label variable c1dizziness "Concussion 1 Dizziness"

label variable c1dizzinessdur "Concussion 1 dizziness duration"
label define _GODEi8kVlC 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1dizzinessdur _GODEi8kVlC

label variable c1dizzinessdur2 "Concussion 1 Dizziness duration more than 3 weeks"
label define _kxs0rKJFVa 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c1dizzinessdur2 _kxs0rKJFVa

label variable c1vision "Concussion 1 vision problems"

label variable c1visiondur "Concussion 1 vision duration"
label define _nwMcRD47jT 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1visiondur _nwMcRD47jT

label variable c1visiondur2 "Concussion 1 vision duration more than 3 weeks"
label define _UqodkE6Ohq 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c1visiondur2 _UqodkE6Ohq

label variable c1trbconc "Concussion 1 trouble concentration"

label variable c1trbconcdur "Concussion 1 trouble concentrating duration"
label define _ENN65RPdgb 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1trbconcdur _ENN65RPdgb

label variable c1trbconsdur2 "Concussion 1 trouble concentrating duration more than 3 weeks"
label define _g3eRPUpMzu 1 "More than 1 month" 3 "More than 1 year" 2 "More than 6 months"
label values c1trbconsdur2 _g3eRPUpMzu

label variable c1confusion "Concussion 1 confusion"

label variable c1confusiondur "Concussion 1 confusion duration"
label define _ARyZxis9ch 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1confusiondur _ARyZxis9ch

label variable c1confusiondur2 "Concussion 1 confusion duration more than 3 weeks"
label define _7isCIMFnWj 1 "More than 1 month" 3 "More than 1 year" 2 "More than 6 months"
label values c1confusiondur2 _7isCIMFnWj

label variable c1amnesia "Concussion 1 amnesia"

label variable c1amnesiadur "Concussion 1 amnesia duration"
label define _YNHcT5Mg62 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1amnesiadur _YNHcT5Mg62

label variable c1amnesiadur2 "Concussion 1 amnesia duration more than 3 weeks"
label define _8Z22NWLWQJ 3 "More than 1 year" 2 "More than 6 months" 1 "More than 1 month"
label values c1amnesiadur2 _8Z22NWLWQJ

label variable c1fatigue "Concussion 1 fatigue"

label variable c1fatiguedur "Concussion 1 fatigue duration"
label define _xgzRDiJ8Pm 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1fatiguedur _xgzRDiJ8Pm

label variable c1fatiguedur2 "Concussion 1 fatigue duration more than 3 weeks"
label define _45l1F3nNk3 1 "More than 1 month" 3 "More than 1 year" 2 "More than 6 months"
label values c1fatiguedur2 _45l1F3nNk3

label variable c1sensitivity "Concussion 1 sensitivity to light or noise"

label variable c1sensitivitydur "Concussion 1 light or noise sensitivity duration"
label define _k3ZePlOsG7 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1sensitivitydur _k3ZePlOsG7

label variable c1sensitivitydur2 "Concussion 1 sensitivity to light or noise duration more than 3 weeks"
label define _pNvU3YnY7J 2 "More than 6 months" 1 "More than 1 month" 3 "More than 1 year"
label values c1sensitivitydur2 _pNvU3YnY7J

label variable c1sleepdis "Concussion 1 sleep disturbances"

label variable c1sleepdur "Concussion 1 sleep disturbances duration"
label define _V4iK9SAkpM 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1sleepdur _V4iK9SAkpM

label variable c1sleepdur2 "Concussion 1 sleep disturbances duration more than 3 weeks"
label define _l3THdGoizn 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c1sleepdur2 _l3THdGoizn

label variable c1moodch "Concussion 1 mood changes"

label variable c1moodchdur "Concussion 1 mood changes duration"
label define _VqMLZ9VZHZ 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1moodchdur _VqMLZ9VZHZ

label variable c1moodchdur2 "Concussion 1 mood changes duration more than 3 weeks"
label define _ULubRr1PSY 3 "More than 1 year" 2 "More than 6 months" 1 "More than 1 month"
label values c1moodchdur2 _ULubRr1PSY

label variable c1othersym "Concussion 1 other"

label variable c1noneabove "Concussion 1 none of the above"

label variable c1depression "Concussion 1 depression"

label variable c1depressiondur "Concussion 1 depression duration"
label define _MTvYFDUPgk 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1depressiondur _MTvYFDUPgk

label variable c1depressiondur2 "Concussion 1 depression duration more than 3 weeks"
label define _YJqvloNUsx 2 "More than 6 months" 1 "More than 1 month" 3 "More than 1 year"
label values c1depressiondur2 _YJqvloNUsx

label variable c1anxiety "Concussion 1 Anxiety"

label variable c1anxietydur "Concussion 1 anxiety duration"
label define _4yknwRO35G 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c1anxietydur _4yknwRO35G

label variable c1anxietydur2 "Concussion 1 anxiety duration more than 3 weeks"
label define _yQ9mvhQpNd 2 "More than 6 months" 1 "More than 1 month" 3 "More than 1 year"
label values c1anxietydur2 _yQ9mvhQpNd

label variable c1agitation "Concussion 1 Agitation"

label variable c1agitationdur "Concussion 1 agitation duration"
label define _lAc2UGS3CZ 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c1agitationdur _lAc2UGS3CZ

label variable c1agitationydur2 "Concussion 1 agitation duration more than 3 weeks"

label variable c1anger "Concussion 1 Anger"

label variable c1angerdur "Concussion 1 anger duration"
label define _nuONHmb91F 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1angerdur _nuONHmb91F

label variable c1angerdur2 "Concussion 1 anger duration more than 3 weeks"
label define _ZZv4vkC0jt 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c1angerdur2 _ZZv4vkC0jt

label variable c1aggression "Concussion 1 Aggression"

label variable c1aggressiondur "Concussion 1 aggression duration"
label define _O1OK4XYGHq 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c1aggressiondur _O1OK4XYGHq

label variable c1aggressiondur2 "Concussion 1 aggression duration more than 3 weeks"
label define _iao3IqSQA2 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c1aggressiondur2 _iao3IqSQA2

label variable c1moodothersy "Concussion 1 mood other symptoms"

label variable c1moodnoneabove "Concussion 1 mood none of the above"

label variable concussion2 "Was there a 2nd concussion"
label define _Gf7m73gupZ 0 "No" 1 "Yes"
label values concussion2 _Gf7m73gupZ

label variable c2when "What year did the 2nd head injury or concussion 2 occur"

label variable c2cause "What caused head injury or concussion 2"
label define _26KiOgVfFT 5 "Sports related injury" 1 "Fall" 2 "Car accident" 7 "Other" 6 "Assault" 3 "Bicycle accident" 4 "Military injury"
label values c2cause _26KiOgVfFT

label variable c2lossconsc "Concussion 2 loss of consciousness"
label define _d21OpNINXg 0 "No" 1 "Yes"
label values c2lossconsc _d21OpNINXg

label variable c2medical "Concussion 2 did you seek medical attention"
label define _LBHqHD0b4F 0 "No" 1 "Yes"
label values c2medical _LBHqHD0b4F

label variable c2mddx "Concussion 2 If yes did a doctor tell you that you had a concussion"
label define _HsBJ4sG1vi 1 "Yes" 0 "No"
label values c2mddx _HsBJ4sG1vi

label variable c2headloc "Concussion 2 where on head did blow or hit occur"
label define _irFK4whijS 4 "Back of the head" 1 "Front of the head" 2 "Right side of the head" 3 " Left side of the head" 5 "Top of the head" 6 "Blast injury"
label values c2headloc _irFK4whijS

label variable c2headache "Concussion 2 headache"

label variable c2headachedur "Concussion 2 headache duration"
label define _pR7J4PrGVw 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2headachedur _pR7J4PrGVw

label variable c2headachedur2 "Concussion 2 duration more than 3 weeks"

label variable c2nausea "Concussion 2 nausea"

label variable c2nauseadur "Concussion 2 nausea duration"
label define _aoofq0CqD7 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2nauseadur _aoofq0CqD7

label variable c2nauseadur2 "Concussion 2 nausea duration more than 3 weeks"

label variable c2vomiting "Concussion 2 vomiting"

label variable c2vomitingdur "Concussion 2 vomiting duration"
label define _bKnaQTHhW5 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2vomitingdur _bKnaQTHhW5

label variable c2vomitdur2 "Concussion 2 vomiting duration more than 3 weeks"

label variable c2balance "Concussion 2 balance"

label variable c2balancedur "Concussion 2 balance duration"
label define _cSA8iAL8TR 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2balancedur _cSA8iAL8TR

label variable c2balancedur2 "Concussion 2 balance duration more than 3 weeks"

label variable c2dizziness "Concussion 2 Dizziness"

label variable c2dizzinessdur "Concussion 2 dizziness duration"
label define _Qd4XGPkaIt 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2dizzinessdur _Qd4XGPkaIt

label variable c2dizzinessdur2 "Concussion 2 Dizziness duration more than 3 weeks"

label variable c2vision "Concussion 2 vision problems"

label variable c2visiondur "Concussion 2 vision duration"
label define _ndsCNUh3cJ 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2visiondur _ndsCNUh3cJ

label variable c2visiondur2 "Concussion 2 vision duration more than 3 weeks"

label variable c2trbconc "Concussion 2 trouble concentration"

label variable c2trbconcdur "Concussion 2 trouble concentrating duration"
label define _G32htIQfgW 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2trbconcdur _G32htIQfgW

label variable c2trbconsdur2 "Concussion 2 trouble concentrating duration more than 3 weeks"

label variable c2confusion "Concussion 2 confusion"

label variable c2confusiondur "Concussion 2 confusion duration"
label define _L83B7TVUpq 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2confusiondur _L83B7TVUpq

label variable c2confusiondur2 "Concussion 2 confusion duration more than 3 weeks"

label variable c2amnesia "Concussion 2 amnesia"

label variable c2amnesiadur "Concussion 2 amnesia duration"
label define _OWSNr8FI4a 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c2amnesiadur _OWSNr8FI4a

label variable c2amnesiadur2 "Concussion 2 amnesia duration more than 3 weeks"

label variable c2fatigue "Concussion 2 fatigue"

label variable c2fatiguedur "Concussion 2 fatigue duration"
label define _px9RyVOQQU 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c2fatiguedur _px9RyVOQQU

label variable c2fatiguedur2 "Concussion 2 fatigue duration more than 3 weeks"
label define _8MguCuEE7s 1 "More than 1 month" 2 "More than 6 months" 3 "More than 1 year"
label values c2fatiguedur2 _8MguCuEE7s

label variable c2sensitivity "Concussion 2 sensitivity to light or noise"

label variable c2sensitivitydur "Concussion 2 light or noise sensitivity duration"
label define _cFJi0Dn1bn 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2sensitivitydur _cFJi0Dn1bn

label variable c2sensitivitydur2 "Concussion 2 sensitivity to light or noise duration more than 3 weeks"

label variable c2sleepdis "Concussion 2 sleep disturbances"

label variable c2sleepdur "Concussion 2 sleep disturbances duration"
label define _2BldBhB4t2 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2sleepdur _2BldBhB4t2

label variable c2sleepdur2 "Concussion 2 sleep disturbances duration more than 3 weeks"

label variable c2moodch "Concussion 2 mood changes"

label variable c2moodchdur "Concussion 2 mood changes duration"
label define _BRvNiAibu9 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2moodchdur _BRvNiAibu9

label variable c2moodchdur2 "Concussion 2 mood changes duration more than 3 weeks"

label variable c2othersym "Concussion 2 other"

label variable c2noneabove "Concussion 2 none of the above"

label variable c2depression "Concussion 2 depression"

label variable c2depressiondur "Concussion 2 depression duration"
label define _5z4NhIWvrQ 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2depressiondur _5z4NhIWvrQ

label variable c2depressiondur2 "Concussion 2 depression duration more than 3 weeks"

label variable c2anxiety "Concussion 2 Anxiety"

label variable c2anxietydur "Concussion 2 anxiety duration"
label define _CnomLNnaGX 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2anxietydur _CnomLNnaGX

label variable c2anxietydur2 "Concussion 2 anxiety duration more than 3 weeks"

label variable c2agitation "Concussion 2 Agitation"

label variable c2agitationdur "Concussion 2 agitation duration"
label define _EbT2CuRmIE 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2agitationdur _EbT2CuRmIE

label variable c2agitationydur2 "Concussion 2 agitation duration more than 3 weeks"

label variable c2anger "Concussion 2 Anger"

label variable c2angerdur "Concussion 2 anger duration"
label define _dxvz7NRYrh 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2angerdur _dxvz7NRYrh

label variable c2angerdur2 "Concussion 2 anger duration more than 3 weeks"

label variable c2aggression "Concussion 2 Aggression"

label variable c2aggressiondur "Concussion 2 aggression duration"
label define _7bysCbUHVN 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c2aggressiondur _7bysCbUHVN

label variable c2aggressiondur2 "Concussion 2 aggression duration more than 3 weeks"

label variable c2moodothersy "Concussion 2 mood other symptoms"

label variable c2moodnoneabove "Concussion 2 mood none of the above"

label variable concussion3 "Was there a 3rd concussion"
label define _XBUaHAKjem 0 "No" 1 "Yes"
label values concussion3 _XBUaHAKjem

label variable c3when "What year did the 3rd head injury or concussion 1 occur"

label variable c3cause "What caused head injury or concussion 3"
label define _HiNWwx1c0F 5 "Sports related injury" 1 "Fall" 2 "Car accident" 3 "Bicycle accident" 4 "Military injury" 6 "Assault" 7 "Other"
label values c3cause _HiNWwx1c0F

label variable c3lossconsc "Concussion 3 loss of consciousness"
label define _sAoYj1urCs 0 "No" 1 "Yes"
label values c3lossconsc _sAoYj1urCs

label variable c3medical "Concussion 3 did you seek medical attention"
label define _4l6uzDLgGg 1 "Yes" 0 "No"
label values c3medical _4l6uzDLgGg

label variable c3mddx "Concussion 3 If yes did a doctor tell you that you had a concussion"
label define _ik2xlT6iJv 0 "No" 1 "Yes"
label values c3mddx _ik2xlT6iJv

label variable c3headloc "Concussion 3 where on head did blow or hit occur"
label define _fKpiT10pfX 4 "Back of the head" 1 "Front of the head" 2 "Right side of the head" 3 " Left side of the head" 5 "Top of the head" 6 "Blast injury"
label values c3headloc _fKpiT10pfX

label variable c3headache "Concussion 3 headache"

label variable c3headachedur "Concussion 3 headache duration"
label define _nlKz25nHH6 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c3headachedur _nlKz25nHH6

label variable c3headachedur2 "Concussion 3 duration more than 3 weeks"

label variable c3nausea "Concussion 3 nausea"

label variable c3nauseadur "Concussion 3 nausea duration"
label define _8efo3QIGZt 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c3nauseadur _8efo3QIGZt

label variable c3nauseadur2 "Concussion 3 nausea duration more than 3 weeks"

label variable c3vomiting "Concussion 3 vomiting"

label variable c3vomitingdur "Concussion 3 vomiting duration"
label define _FaBS5Rnkcd 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c3vomitingdur _FaBS5Rnkcd

label variable c3vomitdur2 "Concussion 3 vomiting duration more than 3 weeks"

label variable c3balance "Concussion 3 balance"

label variable c3balancedur "Concussion 3 balance duration"

label variable c3balancedur2 "Concussion 3 balance duration more than 3 weeks"

label variable c3dizziness "Concussion 3 Dizziness"

label variable c3dizzinessdur "Concussion 3 dizziness duration"
label define _ZjvcrOGIjD 1 "Less than 3 days" 3 "More than 3 weeks" 2 "Less than 3 weeks"
label values c3dizzinessdur _ZjvcrOGIjD

label variable c3dizzinessdur2 "Concussion 3 Dizziness duration more than 3 weeks"
label define _tmImAiqVRJ 1 "More than 1 month" 2 "More than 6 months" 3 "More than 1 year"
label values c3dizzinessdur2 _tmImAiqVRJ

label variable c3vision "Concussion 3 vision problems"

label variable c3visiondur "Concussion 3 vision duration"

label variable c3visiondur2 "Concussion 3 vision duration more than 3 weeks"

label variable c3trbconc "Concussion 3 trouble concentration"

label variable c3trbconcdur "Concussion 3 trouble concentrating duration"

label variable c3trbconsdur2 "Concussion 3 trouble concentrating duration more than 3 weeks"

label variable c3confusion "Concussion 3 confusion"

label variable c3confusiondur "Concussion 3 confusion duration"

label variable c3confusiondur2 "Concussion 3 confusion duration more than 3 weeks"

label variable c3amnesia "Concussion 3 amnesia"

label variable c3amnesiadur "Concussion 3 amnesia duration"

label variable c3amnesiadur2 "Concussion 3 amnesia duration more than 3 weeks"

label variable c3fatigue "Concussion 3 fatigue"

label variable c3fatiguedur "Concussion 3 fatigue duration"
label define _YIVLXscLV4 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c3fatiguedur _YIVLXscLV4

label variable c3fatiguedur2 "Concussion 3 fatigue duration more than 3 weeks"
label define _0l9ux1UP1d 1 "More than 1 month" 2 "More than 6 months" 3 "More than 1 year"
label values c3fatiguedur2 _0l9ux1UP1d

label variable c3sensitivity "Concussion 3 sensitivity to light or noise"

label variable c3sensitivitydur "Concussion 3 light or noise sensitivity duration"

label variable c3sensitivitydur2 "Concussion 3 sensitivity to light or noise duration more than 3 weeks"

label variable c3sleepdis "Concussion 3 sleep disturbances"

label variable c3sleepdur "Concussion 3 sleep disturbances duration"

label variable c3sleepdur2 "Concussion 3 sleep disturbances duration more than 3 weeks"

label variable c3moodch "Concussion 3 mood changes"

label variable c3moodchdur "Concussion 3 mood changes duration"

label variable c3moodchdur2 "Concussion 3 mood changes duration more than 3 weeks"

label variable c3othersym "Concussion 3 other"

label variable c3noneabove "Concussion 3 none of the above"

label variable c3depression "Concussion 3 depression"

label variable c3depressiondur "Concussion 3 depression duration"

label variable c3depressiondur2 "Concussion 3 depression duration more than 3 weeks"

label variable c3anxiety "Concussion 3 Anxiety"

label variable c3anxietydur "Concussion 3 anxiety duration"

label variable c3anxietydur2 "Concussion 3 anxiety duration more than 3 weeks"

label variable c3agitation "Concussion 3 Agitation"

label variable c3agitationdur "Concussion 3 agitation duration"

label variable c3agitationydur2 "Concussion 3 agitation duration more than 3 weeks"

label variable c3anger "Concussion 3 Anger"

label variable c3angerdur "Concussion 3 anger duration"

label variable c3angerdur2 "Concussion 3 anger duration more than 3 weeks"

label variable c3aggression "Concussion 3 Aggression"

label variable c3aggressiondur "Concussion 3 aggression duration"

label variable c3aggressiondur2 "Concussion 3 aggression duration more than 3 weeks"

label variable c3moodothersy "Concussion 3 mood other symptoms"

label variable c3moodnoneabove "Concussion 3 mood none of the above"

label variable concussion4 "Was there a 4th concussion"
label define _zSnC0SIh7R 1 "Yes" 0 "No"
label values concussion4 _zSnC0SIh7R

label variable c4when "What year did the 4th head injury or concussion 1 occur"

label variable c4cause "What caused head injury or concussion 4"
label define _xpGTHnKFSn 5 "Sports related injury" 3 "Bicycle accident" 1 "Fall" 2 "Car accident" 4 "Military injury" 6 "Assault" 7 "Other"
label values c4cause _xpGTHnKFSn

label variable c4lossconsc "Concussion 4 loss of consciousness"
label define _Mcamvvg0J4 1 "Yes" 0 "No"
label values c4lossconsc _Mcamvvg0J4

label variable c4medical "Concussion 4 did you seek medical attention"
label define _MA42wKcap3 1 "Yes" 0 "No"
label values c4medical _MA42wKcap3

label variable c4mddx "Concussion 4 If yes did a doctor tell you that you had a concussion"
label define _FWvIr725bk 1 "Yes" 0 "No"
label values c4mddx _FWvIr725bk

label variable c4headloc "Concussion 4 where on head did blow or hit occur"
label define _xq7RPsutRZ 2 "Right side of the head" 1 "Front of the head" 4 "Back of the head" 3 " Left side of the head" 5 "Top of the head" 6 "Blast injury"
label values c4headloc _xq7RPsutRZ

label variable c4headache "Concussion 4 headache"

label variable c4headachedur "Concussion 4 headache duration"
label define _Fi9sOUDxiy 2 "Less than 3 weeks" 1 "Less than 3 days" 3 "More than 3 weeks"
label values c4headachedur _Fi9sOUDxiy

label variable c4headachedur2 "Concussion 4 duration more than 3 weeks"

label variable c4nausea "Concussion 4 nausea"

label variable c4nauseadur "Concussion 4 nausea duration"

label variable c4nauseadur2 "Concussion 4 nausea duration more than 3 weeks"

label variable c4vomiting "Concussion 4 vomiting"

label variable c4vomitingdur "Concussion 4 vomiting duration"

label variable c4vomitdur2 "Concussion 4 vomiting duration more than 3 weeks"

label variable c4balance "Concussion 4 balance"

label variable c4balancedur "Concussion 4 balance duration"
label define _229pAEwvLh 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c4balancedur _229pAEwvLh

label variable c4balancedur2 "Concussion 4 balance duration more than 3 weeks"
label define _qv7DdWwuQ1 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c4balancedur2 _qv7DdWwuQ1

label variable c4dizziness "Concussion 4 Dizziness"

label variable c4dizzinessdur "Concussion 4 dizziness duration"
label define _nTnf3FIdG5 3 "More than 3 weeks" 1 "Less than 3 days" 2 "Less than 3 weeks"
label values c4dizzinessdur _nTnf3FIdG5

label variable c4dizzinessdur2 "Concussion 4 Dizziness duration more than 3 weeks"
label define _BCOzmvyE1f 3 "More than 1 year" 1 "More than 1 month" 2 "More than 6 months"
label values c4dizzinessdur2 _BCOzmvyE1f

label variable c4vision "Concussion 4 vision problems"

label variable c4visiondur "Concussion 4 vision duration"

label variable c4visiondur2 "Concussion 4 vision duration more than 3 weeks"

label variable c4trbconc "Concussion 4 trouble concentration"

label variable c4trbconcdur "Concussion 4 trouble concentrating duration"

label variable c4trbconsdur2 "Concussion 4 trouble concentrating duration more than 3 weeks"

label variable c4confusion "Concussion 4 confusion"

label variable c4confusiondur "Concussion 4 confusion duration"

label variable c4confusiondur2 "Concussion 4 confusion duration more than 3 weeks"

label variable c4amnesia "Concussion 4 amnesia"

label variable c4amnesiadur "Concussion 4 amnesia duration"

label variable c4amnesiadur2 "Concussion 4 amnesia duration more than 3 weeks"

label variable c4fatigue "Concussion 4 fatigue"

label variable c4fatiguedur "Concussion 4 fatigue duration"

label variable c4fatiguedur2 "Concussion 4 fatigue duration more than 3 weeks"

label variable c4sensitivity "Concussion 4 sensitivity to light or noise"

label variable c4sensitivitydur "Concussion 4 light or noise sensitivity duration"

label variable c4sensitivitydur2 "Concussion 4 sensitivity to light or noise duration more than 3 weeks"

label variable c4sleepdis "Concussion 4 sleep disturbances"

label variable c4sleepdur "Concussion 4 sleep disturbances duration"

label variable c4sleepdur2 "Concussion 4 sleep disturbances duration more than 3 weeks"

label variable c4moodch "Concussion 4 mood changes"

label variable c4moodchdur "Concussion 4 mood changes duration"

label variable c4moodchdur2 "Concussion 4 mood changes duration more than 3 weeks"

label variable c4othersym "Concussion 4 other"

label variable c4noneabove "Concussion 4 none of the above"

label variable c4depression "Concussion 4 depression"

label variable c4depressiondur "Concussion 4 depression duration"

label variable c4depressiondur2 "Concussion 4 depression duration more than 3 weeks"

label variable c4anxiety "Concussion 4 Anxiety"

label variable c4anxietydur "Concussion 4 anxiety duration"

label variable c4anxietydur2 "Concussion 4 anxiety duration more than 3 weeks"

label variable c4agitation "Concussion 4 Agitation"

label variable c4agitationdur "Concussion 4 agitation duration"

label variable c4agitationydur2 "Concussion 4 agitation duration more than 3 weeks"

label variable c4anger "Concussion 4 Anger"

label variable c4angerdur "Concussion 4 anger duration"

label variable c4angerdur2 "Concussion 4 anger duration more than 3 weeks"

label variable c4aggression "Concussion 4 Aggression"

label variable c4aggressiondur "Concussion 4 aggression duration"

label variable c4aggressiondur2 "Concussion 4 aggression duration more than 3 weeks"

label variable c4moodothersy "Concussion 4 mood other symptoms"

label variable c4moodnoneabove "Concussion 4 mood none of the above"

label variable concussion5 "Was there a 5th concussion"
label define _47YicJDm0q 0 "No" 1 "Yes"
label values concussion5 _47YicJDm0q

label variable c5when "What year did the 5th head injury or concussion 1 occur"

label variable c5cause "What caused head injury or concussion 5"
label define _R6TiasnPsF 1 "Fall" 2 "Car accident" 3 "Bicycle accident" 4 "Military injury" 5 "Sports related injury" 6 "Assault" 7 "Other"
label values c5cause _R6TiasnPsF

label variable c5lossconsc "Concussion 5 loss of consciousness"
label define _iit25HZp4B 1 "Yes" 0 "No"
label values c5lossconsc _iit25HZp4B

label variable c5medical "Concussion 5 did you seek medical attention"
label define _6tqp1Eb29k 1 "Yes" 0 "No"
label values c5medical _6tqp1Eb29k

label variable c5mddx "Concussion 5 If yes did a doctor tell you that you had a concussion"

label variable c5headloc "Concussion 5 where on head did blow or hit occur"
label define _eyFNA4Q94X 4 "Back of the head" 1 "Front of the head" 2 "Right side of the head" 3 " Left side of the head" 5 "Top of the head" 6 "Blast injury"
label values c5headloc _eyFNA4Q94X

label variable c5headache "Concussion 5 headache"

label variable c5headachedur "Concussion 5 headache duration"

label variable c5headachedur2 "Concussion 5 duration more than 3 weeks"

label variable c5nausea "Concussion 5 nausea"

label variable c5nauseadur "Concussion 5 nausea duration"

label variable c5nauseadur2 "Concussion 5 nausea duration more than 3 weeks"

label variable c5vomiting "Concussion 5 vomiting"

label variable c5vomitingdur "Concussion 5 vomiting duration"
label define _F3WzhE50Yw 1 "Less than 3 days" 2 "Less than 3 weeks" 3 "More than 3 weeks"
label values c5vomitingdur _F3WzhE50Yw

label variable c5vomitdur2 "Concussion 5 vomiting duration more than 3 weeks"

label variable c5balance "Concussion 5 balance"

label variable c5balancedur "Concussion 5 balance duration"

label variable c5balancedur2 "Concussion 5 balance duration more than 3 weeks"

label variable c5dizziness "Concussion 5 Dizziness"

label variable c5dizzinessdur "Concussion 5 dizziness duration"

label variable c5dizzinessdur2 "Concussion 5 Dizziness duration more than 3 weeks"

label variable c5vision "Concussion 5 vision problems"

label variable c5visiondur "Concussion 5 vision duration"

label variable c5visiondur2 "Concussion 5 vision duration more than 3 weeks"

label variable c5trbconc "Concussion 5 trouble concentration"

label variable c5trbconcdur "Concussion 5 trouble concentrating duration"

label variable c5trbconsdur2 "Concussion 5 trouble concentrating duration more than 3 weeks"

label variable c5confusion "Concussion 5 confusion"

label variable c5confusiondur "Concussion 5 confusion duration"

label variable c5confusiondur2 "Concussion 5 confusion duration more than 3 weeks"

label variable c5amnesia "Concussion 5 amnesia"

label variable c5amnesiadur "Concussion 5 amnesia duration"

label variable c5amnesiadur2 "Concussion 5 amnesia duration more than 3 weeks"

label variable c5fatigue "Concussion 5 fatigue"

label variable c5fatiguedur "Concussion 5 fatigue duration"

label variable c5fatiguedur2 "Concussion 5 fatigue duration more than 3 weeks"

label variable c5sensitivity "Concussion 5 sensitivity to light or noise"

label variable c5sensitivitydur "Concussion 5 light or noise sensitivity duration"

label variable c5sensitivitydur2 "Concussion 5 sensitivity to light or noise duration more than 3 weeks"

label variable c5sleepdis "Concussion 5 sleep disturbances"

label variable c5sleepdur "Concussion 5 sleep disturbances duration"

label variable c5sleepdur2 "Concussion 5 sleep disturbances duration more than 3 weeks"

label variable c5moodch "Concussion 5 mood changes"

label variable c5moodchdur "Concussion 5 mood changes duration"

label variable c5moodchdur2 "Concussion 5 mood changes duration more than 3 weeks"

label variable c5othersym "Concussion 5 other"

label variable c5noneabove "Concussion 5 none of the above"

label variable c5depression "Concussion 5 depression"

label variable c5depressiondur "Concussion 5 depression duration"

label variable c5depressiondur2 "Concussion 5 depression duration more than 3 weeks"

label variable c5anxiety "Concussion 5 Anxiety"

label variable c5anxietydur "Concussion 5 anxiety duration"

label variable c5anxietydur2 "Concussion 5 anxiety duration more than 3 weeks"

label variable c5agitation "Concussion 5 Agitation"

label variable c5agitationdur "Concussion 5 agitation duration"

label variable c5agitationydur2 "Concussion 5 agitation duration more than 3 weeks"

label variable c5anger "Concussion 5 Anger"

label variable c5angerdur "Concussion 5 anger duration"

label variable c5angerdur2 "Concussion 5 anger duration more than 3 weeks"

label variable c5aggression "Concussion 5 Aggression"

label variable c5aggressiondur "Concussion 5 aggression duration"

label variable c5aggressiondur2 "Concussion 5 aggression duration more than 3 weeks"

label variable c5moodothersy "Concussion 5 mood other symptoms"

label variable c5moodnoneabove "Concussion 5 mood none of the above"

label variable c1aggression_1 "Concussion 1 Aggression : Yes (Checkbox Indicator)"

label variable c1agitation_1 "Concussion 1 Agitation : Yes (Checkbox Indicator)"

label variable c1amnesia_1 "Concussion 1 amnesia : Yes (Checkbox Indicator)"

label variable c1anger_1 "Concussion 1 Anger : Yes (Checkbox Indicator)"

label variable c1anxiety_1 "Concussion 1 Anxiety : Yes (Checkbox Indicator)"

label variable c1balance_1 "Concussion 1 balance : Yes (Checkbox Indicator)"

label variable c1confusion_1 "Concussion 1 confusion : Yes (Checkbox Indicator)"

label variable c1depression_1 "Concussion 1 depression : Yes (Checkbox Indicator)"

label variable c1dizziness_1 "Concussion 1 Dizziness : Yes (Checkbox Indicator)"

label variable c1fatigue_1 "Concussion 1 fatigue : Yes (Checkbox Indicator)"

label variable c1headache_1 "Concussion 1 headache : Yes (Checkbox Indicator)"

label variable c1moodch_1 "Concussion 1 mood changes : Yes (Checkbox Indicator)"

label variable c1moodnoneabove_1 "Concussion 1 mood none of the above : Yes (Checkbox Indicator)"

label variable c1moodothersy_1 "Concussion 1 mood other symptoms : Yes (Checkbox Indicator)"

label variable c1nausea_1 "Concussion 1 nausea : Yes (Checkbox Indicator)"

label variable c1noneabove_1 "Concussion 1 none of the above : Yes (Checkbox Indicator)"

label variable c1othersym_1 "Concussion 1 other : Yes (Checkbox Indicator)"

label variable c1sensitivity_1 "Concussion 1 sensitivity to light or noise : Yes (Checkbox Indicator)"

label variable c1sleepdis_1 "Concussion 1 sleep disturbances : Yes (Checkbox Indicator)"

label variable c1trbconc_1 "Concussion 1 trouble concentration : Yes (Checkbox Indicator)"

label variable c1vision_1 "Concussion 1 vision problems : Yes (Checkbox Indicator)"

label variable c1vomiting_1 "Concussion 1 vomiting : Yes (Checkbox Indicator)"

label variable c2aggression_1 "Concussion 2 Aggression : Yes (Checkbox Indicator)"

label variable c2agitation_1 "Concussion 2 Agitation : Yes (Checkbox Indicator)"

label variable c2amnesia_1 "Concussion 2 amnesia : Yes (Checkbox Indicator)"

label variable c2anger_1 "Concussion 2 Anger : Yes (Checkbox Indicator)"

label variable c2anxiety_1 "Concussion 2 Anxiety : Yes (Checkbox Indicator)"

label variable c2balance_1 "Concussion 2 balance : Yes (Checkbox Indicator)"

label variable c2confusion_1 "Concussion 2 confusion : Yes (Checkbox Indicator)"

label variable c2depression_1 "Concussion 2 depression : Yes (Checkbox Indicator)"

label variable c2dizziness_1 "Concussion 2 Dizziness : Yes (Checkbox Indicator)"

label variable c2fatigue_1 "Concussion 2 fatigue : Yes (Checkbox Indicator)"

label variable c2headache_1 "Concussion 2 headache : Yes (Checkbox Indicator)"

label variable c2moodch_1 "Concussion 2 mood changes : Yes (Checkbox Indicator)"

label variable c2moodnoneabove_1 "Concussion 2 mood none of the above : Yes (Checkbox Indicator)"

label variable c2moodothersy_1 "Concussion 2 mood other symptoms : Yes (Checkbox Indicator)"

label variable c2nausea_1 "Concussion 2 nausea : Yes (Checkbox Indicator)"

label variable c2noneabove_1 "Concussion 2 none of the above : Yes (Checkbox Indicator)"

label variable c2othersym_1 "Concussion 2 other : Yes (Checkbox Indicator)"

label variable c2sensitivity_1 "Concussion 2 sensitivity to light or noise : Yes (Checkbox Indicator)"

label variable c2sleepdis_1 "Concussion 2 sleep disturbances : Yes (Checkbox Indicator)"

label variable c2trbconc_1 "Concussion 2 trouble concentration : Yes (Checkbox Indicator)"

label variable c2vision_1 "Concussion 2 vision problems : Yes (Checkbox Indicator)"

label variable c2vomiting_1 "Concussion 2 vomiting : Yes (Checkbox Indicator)"

label variable c3aggression_1 "Concussion 3 Aggression : Yes (Checkbox Indicator)"

label variable c3agitation_1 "Concussion 3 Agitation : Yes (Checkbox Indicator)"

label variable c3amnesia_1 "Concussion 3 amnesia : Yes (Checkbox Indicator)"

label variable c3anger_1 "Concussion 3 Anger : Yes (Checkbox Indicator)"

label variable c3anxiety_1 "Concussion 3 Anxiety : Yes (Checkbox Indicator)"

label variable c3balance_1 "Concussion 3 balance : Yes (Checkbox Indicator)"

label variable c3confusion_1 "Concussion 3 confusion : Yes (Checkbox Indicator)"

label variable c3depression_1 "Concussion 3 depression : Yes (Checkbox Indicator)"

label variable c3dizziness_1 "Concussion 3 Dizziness : Yes (Checkbox Indicator)"

label variable c3fatigue_1 "Concussion 3 fatigue : Yes (Checkbox Indicator)"

label variable c3headache_1 "Concussion 3 headache : Yes (Checkbox Indicator)"

label variable c3moodch_1 "Concussion 3 mood changes : Yes (Checkbox Indicator)"

label variable c3moodnoneabove_1 "Concussion 3 mood none of the above : Yes (Checkbox Indicator)"

label variable c3moodothersy_1 "Concussion 3 mood other symptoms : Yes (Checkbox Indicator)"

label variable c3nausea_1 "Concussion 3 nausea : Yes (Checkbox Indicator)"

label variable c3noneabove_1 "Concussion 3 none of the above : Yes (Checkbox Indicator)"

label variable c3othersym_1 "Concussion 3 other : Yes (Checkbox Indicator)"

label variable c3sensitivity_1 "Concussion 3 sensitivity to light or noise : Yes (Checkbox Indicator)"

label variable c3sleepdis_1 "Concussion 3 sleep disturbances : Yes (Checkbox Indicator)"

label variable c3trbconc_1 "Concussion 3 trouble concentration : Yes (Checkbox Indicator)"

label variable c3vision_1 "Concussion 3 vision problems : Yes (Checkbox Indicator)"

label variable c3vomiting_1 "Concussion 3 vomiting : Yes (Checkbox Indicator)"

label variable c4aggression_1 "Concussion 4 Aggression : Yes (Checkbox Indicator)"

label variable c4agitation_1 "Concussion 4 Agitation : Yes (Checkbox Indicator)"

label variable c4amnesia_1 "Concussion 4 amnesia : Yes (Checkbox Indicator)"

label variable c4anger_1 "Concussion 4 Anger : Yes (Checkbox Indicator)"

label variable c4anxiety_1 "Concussion 4 Anxiety : Yes (Checkbox Indicator)"

label variable c4balance_1 "Concussion 4 balance : Yes (Checkbox Indicator)"

label variable c4confusion_1 "Concussion 4 confusion : Yes (Checkbox Indicator)"

label variable c4depression_1 "Concussion 4 depression : Yes (Checkbox Indicator)"

label variable c4dizziness_1 "Concussion 4 Dizziness : Yes (Checkbox Indicator)"

label variable c4fatigue_1 "Concussion 4 fatigue : Yes (Checkbox Indicator)"

label variable c4headache_1 "Concussion 4 headache : Yes (Checkbox Indicator)"

label variable c4moodch_1 "Concussion 4 mood changes : Yes (Checkbox Indicator)"

label variable c4moodnoneabove_1 "Concussion 4 mood none of the above : Yes (Checkbox Indicator)"

label variable c4moodothersy_1 "Concussion 4 mood other symptoms : Yes (Checkbox Indicator)"

label variable c4nausea_1 "Concussion 4 nausea : Yes (Checkbox Indicator)"

label variable c4noneabove_1 "Concussion 4 none of the above : Yes (Checkbox Indicator)"

label variable c4othersym_1 "Concussion 4 other : Yes (Checkbox Indicator)"

label variable c4sensitivity_1 "Concussion 4 sensitivity to light or noise : Yes (Checkbox Indicator)"

label variable c4sleepdis_1 "Concussion 4 sleep disturbances : Yes (Checkbox Indicator)"

label variable c4trbconc_1 "Concussion 4 trouble concentration : Yes (Checkbox Indicator)"

label variable c4vision_1 "Concussion 4 vision problems : Yes (Checkbox Indicator)"

label variable c4vomiting_1 "Concussion 4 vomiting : Yes (Checkbox Indicator)"

label variable c5aggression_1 "Concussion 5 Aggression : Yes (Checkbox Indicator)"

label variable c5agitation_1 "Concussion 5 Agitation : Yes (Checkbox Indicator)"

label variable c5amnesia_1 "Concussion 5 amnesia : Yes (Checkbox Indicator)"

label variable c5anger_1 "Concussion 5 Anger : Yes (Checkbox Indicator)"

label variable c5anxiety_1 "Concussion 5 Anxiety : Yes (Checkbox Indicator)"

label variable c5balance_1 "Concussion 5 balance : Yes (Checkbox Indicator)"

label variable c5confusion_1 "Concussion 5 confusion : Yes (Checkbox Indicator)"

label variable c5depression_1 "Concussion 5 depression : Yes (Checkbox Indicator)"

label variable c5dizziness_1 "Concussion 5 Dizziness : Yes (Checkbox Indicator)"

label variable c5fatigue_1 "Concussion 5 fatigue : Yes (Checkbox Indicator)"

label variable c5headache_1 "Concussion 5 headache : Yes (Checkbox Indicator)"

label variable c5moodch_1 "Concussion 5 mood changes : Yes (Checkbox Indicator)"

label variable c5moodnoneabove_1 "Concussion 5 mood none of the above : Yes (Checkbox Indicator)"

label variable c5moodothersy_1 "Concussion 5 mood other symptoms : Yes (Checkbox Indicator)"

label variable c5nausea_1 "Concussion 5 nausea : Yes (Checkbox Indicator)"

label variable c5noneabove_1 "Concussion 5 none of the above : Yes (Checkbox Indicator)"

label variable c5othersym_1 "Concussion 5 other : Yes (Checkbox Indicator)"

label variable c5sensitivity_1 "Concussion 5 sensitivity to light or noise : Yes (Checkbox Indicator)"

label variable c5sleepdis_1 "Concussion 5 sleep disturbances : Yes (Checkbox Indicator)"

label variable c5trbconc_1 "Concussion 5 trouble concentration : Yes (Checkbox Indicator)"

label variable c5vision_1 "Concussion 5 vision problems : Yes (Checkbox Indicator)"

label variable c5vomiting_1 "Concussion 5 vomiting : Yes (Checkbox Indicator)"

