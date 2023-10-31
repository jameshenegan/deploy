clear
import delimited "../data-csv/oc_stripmeniscometry.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_strmen "CRF Version"

label variable sm01 "Use eye drops"
label define _boqo2JSD7i 0 "No" 1 "Yes"
label values sm01 _boqo2JSD7i

label variable sm01a "If yes which eye"
label define _trWLxMxmkM 1 "Both eyes" 2 "Right eye only" 3 "Left eye only" 8 "Unknown"
label values sm01a _trWLxMxmkM

label variable sm02 "If yes how long ago were drops administered"
label define _nCH5xpLrir 0 "Do not use eye drops" 4 "More than 24 hours ago" 2 "More than 1 hour ago but less than 12 hours ago" 3 "More than 12 hours ago but less than 24 hours ago" 1 "Less than 1 hour ago" 8 "Unknown"
label values sm02 _nCH5xpLrir

label variable sm03 "Why do you use eye drops"
label define _RKzRM73IQb 4 "Comfort (non prescription" 1 "Chronic eye condition eg Glaucoma" 3 "Dry eye (prescription)" 5 "Other please specify" 2 "Pre/Post Operative"
label values sm03 _RKzRM73IQb

label variable sm04 "Do you use makeup routinely"
label define _dJp27f4SIg 0 "No" 1 "Yes" 8 "Unknown"
label values sm04 _dJp27f4SIg

label variable sm05 "Was strip meniscometry test performed"
label define _XDMhZDr1Fe 1 "Yes" 0 "No"
label values sm05 _XDMhZDr1Fe

label variable sm05a "If yes which eye"
label define _pnpifeL4H6 3 "Left eye only" 1 "Both eyes" 2 "Right eye only" 8 "Unknown"
label values sm05a _pnpifeL4H6

label variable sm05b "Reson not done"
label define _dzE1lHMDKo 555 "555 = Could not do due to physical problems" 666 "666 = Could not do due to mental problems" 777 "777 = Could not do due to both physical and mental problems" 888 "888 = Refused but theoretically could do" 999 "999 = Did not do due to technical problems"
label values sm05b _dzE1lHMDKo

label variable sm06a "R eye strip meniscometry blue dye distance"

label variable sm06b "L eye strip meniscometry blue dye distance"

label variable sm06c "Room temperature"

label variable sm06d "Room humidity"

label variable sm06e "Test time"

label variable sm07a "T2 If yes how long ago were drops administered"
label define _gnpLK2HFnV 0 "Do not use eye drops" 2 "More than 1 hour ago but less than 12 hours ago" 4 "More than 24 hours ago" 3 "More than 12 hours ago but less than 24 hours ago" 8 "Unknown" 1 "Less than 1 hour ago"
label values sm07a _gnpLK2HFnV

label variable sm07b "Was strip meniscometry test 2 performed"
label define _jsLoauclb2 1 "Yes" 0 "No"
label values sm07b _jsLoauclb2

label variable sm07c "If yes which eye T2"
label define _UiWSZaLI6L 1 "Both eyes" 2 "Right eye only" 3 "Left eye only" 8 "Unknown"
label values sm07c _UiWSZaLI6L

label variable sm07d "T2 Reson not done"
label define _F2XePfJ0nk 555 "555 = Could not do due to physical problems" 666 "666 = Could not do due to mental problems" 777 "777 = Could not do due to both physical and mental problems" 888 "888 = Refused but theoretically could do" 999 "999 = Did not do due to technical problems"
label values sm07d _F2XePfJ0nk

label variable sm08a "T2 R eye strip meniscometry blue dye distance"

label variable sm08b "T2 L eye strip meniscometry blue dye distance"

label variable sm08c "T2 Room temperature"

label variable sm08d "T2 Room humidity"

label variable sm08e "T2 Test time"

label variable auto_id_strmen "Unique Teleform Number"

label variable testerid_strmen "Tester ID"

label variable testerid_1_strmen "Tester ID 1"

