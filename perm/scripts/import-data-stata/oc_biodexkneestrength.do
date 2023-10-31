clear
import delimited "../data-csv/oc_biodexkneestrength.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_bioknestr "CRF Version"

label variable bks001 "Does BP during PE exceed 220/115"
label define _Z6Ou1escx7 0 "No" 1 "Yes" 8 "Don't know"
label values bks001 _Z6Ou1escx7

label variable bks002 "From DXA testing is bone mineral density T score of either hip more than four standard deviations below the population meal or less than 0.5g/cm-squared"
label define _MPNwUFzTNr 0 "No" 8 "Don't know" 1 "Yes"
label values bks002 _MPNwUFzTNr

label variable bks003 "Ever been told you had aneurysm in the brain"
label define _dQShJBpT96 0 "No" 1 "Yes" 8 "Don't know"
label values bks003 _dQShJBpT96

label variable bks004 "Told you had a cerebral hemmorage in the last 6 months"
label define _wjRqHnez4G 0 "No" 1 "Yes" 8 "Don't know"
label values bks004 _wjRqHnez4G

label variable bks004a "Past year had low back pain that limited activity for 10 days"
label define _O9kTQ9rQzt 0 "No" 1 "Yes" 8 "Don't know"
label values bks004a _O9kTQ9rQzt

label variable bks005 "Have had knee surgery"
label define _nch0Oyspp4 0 "No" 1 "Yes" 8 "Don't know"
label values bks005 _nch0Oyspp4

label variable bks005a "Surgery on right left or both"
label define _r8VbR4Zcdh 2 "Left" 3 "Both" 1 "Right" 8 "Don't know"
label values bks005a _r8VbR4Zcdh

label variable bks006 "Had an injury that made one leg weaker than the other"
label define _NK8gC6H7IM 0 "No" 1 "Yes" 8 "Don't know"
label values bks006 _NK8gC6H7IM

label variable bks006a "Which leg is stronger"
label define _YKrVEVlDzu 2 "Left" 1 "Right" 8 "Don't know"
label values bks006a _YKrVEVlDzu

label variable bks007 "Difficult to bend or straighten knee"
label define _CX7ZCgXZVU 0 "No" 1 "Yes" 8 "Don't know"
label values bks007 _CX7ZCgXZVU

label variable bks007a "Which knee difficult to bend or straighten"
label define _DRZyYB4fUK 3 "Both" 1 "Right" 2 "Left" 8 "Don't know"
label values bks007a _DRZyYB4fUK

label variable bks008 "Prior year which leg tested"
label define _qoEZDXRmJz 4 "Both" 1 "Right" 3 "First time" 8 "Don't know" 2 "Left"
label values bks008 _qoEZDXRmJz

label variable bks009 "Pain that stopped you from pushing hard"
label define _pV0F6pcltC 0 "No test both sides" 1 "Right test Left only" 2 "Left test Right only" 3 "Both Do not test" 8 "Don't know Go to Biodex exam"
label values bks009 _pV0F6pcltC

label variable bks024 "Randomization list"
label define _KQzj9MuDG6 3 "Kin-com Right Kin-com Left Biodex Right" 1 "Biodex Right Kin-com Left Kin-com right" 4 "Kin--com Left Kin-com Right Biodex Left" 2 "Biodex Left Kin-com Right Kin-com Left"
label values bks024 _KQzj9MuDG6

label variable bks010a "Right seat bottom depth"

label variable bks010b "Right lever arm"

label variable bks010c "Right limb weight"

label variable bks011a "Right leg concentric test YN"
label define _JWASuLMQSf 0 "No" 1 "Yes"
label values bks011a _JWASuLMQSf

label variable bks011b "Right leg concentric trials at 30 degree"
label define _Ii09AoDe9T 3 "3" 2 "2" 1 "1" 0 "0" 4 "4+"
label values bks011b _Ii09AoDe9T

label variable bks011c "Right leg concentric trials at 180 degree"
label define _dhtnocWsw3 3 "3" 0 "0" 1 "1" 2 "2" 4 "4+"
label values bks011c _dhtnocWsw3

label variable bks011d "Right leg concentric RND"
label define _Jikmk7YVws 1 "Ineligible" 3 "No Tester" 7 "Refused" 4 "Time" 2 "Technical" 8 "Don't know"
label values bks011d _Jikmk7YVws

label variable bks012a "Right leg eccentric test YN"
label define _qTp0VeXomi 0 "No" 1 "Yes"
label values bks012a _qTp0VeXomi

label variable bks012b "Right leg eccentric trials at 30 degree"
label define _X3RvbQBkVC 3 "3" 2 "2" 1 "1" 0 "0" 4 "4+"
label values bks012b _X3RvbQBkVC

label variable bks012c "Right leg eccentric trials at 180 degree"
label define _DJndAEtQzG 3 "3" 0 "0" 2 "2" 1 "1" 4 "4+"
label values bks012c _DJndAEtQzG

label variable bks012d "Right leg eccentric RND"
label define _AoArZz3uPt 1 "Ineligible" 3 "No Tester" 7 "Refused" 4 "Time" 2 "Technical" 8 "Don't know"
label values bks012d _AoArZz3uPt

label variable bks013a "Right leg Isometric test YN"
label define _MGbsuXyath 0 "No" 1 "Yes"
label values bks013a _MGbsuXyath

label variable bks013b "Right leg Isometric trials at 120 degree"
label define _A1ldxBYL6L 3 "3" 0 "0" 2 "2" 1 "1" 4 "4+"
label values bks013b _A1ldxBYL6L

label variable bks013c "Right leg Isometric trials at 140 degree"
label define _O9gGhLugM5 3 "3" 0 "0" 2 "2" 1 "1" 4 "4+"
label values bks013c _O9gGhLugM5

label variable bks013d "Right leg Isometric RND"
label define _Ssvb0cPLD1 1 "Ineligible" 7 "Refused" 3 "No Tester" 4 "Time" 2 "Technical" 8 "Don't know"
label values bks013d _Ssvb0cPLD1

label variable bks020a "Left seat bottom depth"

label variable bks020b "Left lever arm"

label variable bks020c "Left limb weight"

label variable bks021a "Left leg concentric test YN"
label define _MqL8fHChmx 0 "No" 1 "Yes"
label values bks021a _MqL8fHChmx

label variable bks021b "Left leg concentric trials at 30 degree"
label define _YUyCErcVQO 3 "3" 0 "0" 1 "1" 2 "2" 4 "4+"
label values bks021b _YUyCErcVQO

label variable bks021c "Left leg concentric trials at 180 degree"
label define _uPIX7aSSqO 3 "3" 2 "2" 4 "4+" 0 "0" 1 "1"
label values bks021c _uPIX7aSSqO

label variable bks021d "Left leg concentric RND"
label define _HYVBuRmXQE 1 "Ineligible" 7 "Refused" 3 "No Tester" 4 "Time" 2 "Technical" 8 "Don't know"
label values bks021d _HYVBuRmXQE

label variable bks022a "Left leg eccentric test YN"
label define _CYvuSTurib 0 "No" 1 "Yes"
label values bks022a _CYvuSTurib

label variable bks022b "Left leg eccentric trials at 30 degree"
label define _Q6PUCojvt2 3 "3" 1 "1" 2 "2" 0 "0" 4 "4+"
label values bks022b _Q6PUCojvt2

label variable bks022c "Left leg eccentric trials at 180 degree"
label define _VINSwbISOB 3 "3" 0 "0" 1 "1" 2 "2" 4 "4+"
label values bks022c _VINSwbISOB

label variable bks022d "Left leg eccentric RND"
label define _cG3D2t9qya 1 "Ineligible" 3 "No Tester" 7 "Refused" 4 "Time" 2 "Technical" 8 "Don't know"
label values bks022d _cG3D2t9qya

label variable bks023a "Left leg Isometric test YN"
label define _dQhIDtxDeT 0 "No" 1 "Yes"
label values bks023a _dQhIDtxDeT

label variable bks023b "Left leg Isometric trials at 120 degree"
label define _HqDqUxJ9W5 3 "3" 0 "0" 1 "1" 2 "2" 4 "4+"
label values bks023b _HqDqUxJ9W5

label variable bks023c "Left leg Isometric trials at 140 degree"
label define _xRjznqJAzs 3 "3" 0 "0" 1 "1" 2 "2" 4 "4+"
label values bks023c _xRjznqJAzs

label variable bks023d "Left leg Isometric RND"
label define _LCqkDTvDBQ 1 "Ineligible" 3 "No Tester" 7 "Refused" 2 "Technical" 4 "Time" 8 "Don't know"
label values bks023d _LCqkDTvDBQ

label variable auto_id_bioknestr "Unique Teleform Number"

label variable testerid_bioknestr "Tester ID"

label variable testerid_1_bioknestr "Tester ID 1"

label variable testerid_2_bioknestr "Tester ID 2"

