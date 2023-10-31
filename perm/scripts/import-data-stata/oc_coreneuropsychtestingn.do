clear
import delimited "../data-csv/oc_coreneuropsychtestingn.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_corneutesnew "CRF Version"

label variable cogall "Core Neuropsychological Battery"
label define _UKNZlij79W 1 "Complete" 2 "Incomplete" 0 "Not Administered"
label values cogall _UKNZlij79W

label variable cogallm "Core Neuropsychological Battery Reason not done"
label define _oiAQPPMbHD 9 "9-Other" 7 "7-Participant refused" 5 "5-Sensory/physical problem" 3 "3-Other technical problem" 4 "4-Cognitively impared" 1 "1-Not enough time" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 8 "8-Low literacy"
label values cogallm _oiAQPPMbHD

label variable cog01 "Benton Visual Retention Test"
label define _n3dtiVPmO7 1 "Complete" 0 "Not Administered"
label values cog01 _n3dtiVPmO7

label variable cog01m "Benton Visual Retention Test Reason not done"
label define _B3Lfe3lxn3 5 "5-Sensory/physical problem" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available" 1 "1-Not enough time"
label values cog01m _B3Lfe3lxn3

label variable cog02 "PMA Vocabulary"
label define _LJ1zz45CSw 1 "Complete" 0 "Not Administered"
label values cog02 _LJ1zz45CSw

label variable cog02m "PMA_Vocabulary Reason not done"
label define _OF3oNe1bxG 5 "5-Sensory/physical problem" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog02m _OF3oNe1bxG

label variable cog03 "WAIS_R Digit Span"
label define _W1YKygOQxi 1 "Complete" 0 "Not Administered"
label values cog03 _W1YKygOQxi

label variable cog03m "WAIS_R Digit Span Reason not done"
label define _eYS2E4qpWO 9 "9-Other" 7 "7-Participant refused" 1 "1-Not enough time" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 8 "8-Low literacy"
label values cog03m _eYS2E4qpWO

label variable cog04 "California Verbal Learning Part 1"
label define _UjGkAExtch 1 "Complete" 0 "Not Administered"
label values cog04 _UjGkAExtch

label variable cog04m "California Verbal Learning Part 1 Reason not done"
label define _el83XfE3tm 7 "7-Participant refused" 9 "9-Other" 5 "5-Sensory/physical problem" 3 "3-Other technical problem" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 1 "1-Not enough time" 8 "8-Low literacy" 2 "2-No examiner/room available"
label values cog04m _el83XfE3tm

label variable cog05 "Trail making Part A"
label define _M4V5HYW7LU 1 "Complete" 0 "Not Administered"
label values cog05 _M4V5HYW7LU

label variable cog05m "Trail making Part A reason not done"
label define _f5k5Kd8RHZ 5 "5-Sensory/physical problem" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog05m _f5k5Kd8RHZ

label variable cog06 "Trail making Part B"
label define _ZuXWj9JnjC 1 "Complete" 0 "Not Administered"
label values cog06 _ZuXWj9JnjC

label variable cog06m "Trail making Part B reason not done"
label define _AUaKQxT0OM 5 "5-Sensory/physical problem" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog06m _AUaKQxT0OM

label variable cog07 "Purdue Pegboard"
label define _wPXVoQ9ELD 1 "Complete" 0 "Not Administered"
label values cog07 _wPXVoQ9ELD

label variable cog07m "Purdue Pegboard reason not done"
label define _HbgKFsgrcF 9 "9-Other" 5 "5-Sensory/physical problem" 7 "7-Participant refused" 3 "3-Other technical problem" 1 "1-Not enough time" 4 "4-Cognitively impared" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available"
label values cog07m _HbgKFsgrcF

label variable cog08 "Card Rotations"
label define _sVlWBcGkXz 1 "Complete" 0 "Not Administered"
label values cog08 _sVlWBcGkXz

label variable cog08m "Card Rotations reason not done"
label define _cPpImYmAKL 7 "7-Participant refused" 5 "5-Sensory/physical problem" 9 "9-Other" 4 "4-Cognitively impared" 3 "3-Other technical problem" 1 "1-Not enough time" 8 "8-Low literacy" 6 "6-Non-native English speaker" 2 "2-No examiner/room available"
label values cog08m _cPpImYmAKL

label variable cog09 "California Verbal Learning Part 2"
label define _V36gub2Yuw 1 "Complete" 0 "Not Administered"
label values cog09 _V36gub2Yuw

label variable cog09m "California Verbal Learning Part 2 Reason not done"
label define _OtYSJOPoMl 7 "7-Participant refused" 9 "9-Other" 5 "5-Sensory/physical problem" 3 "3-Other technical problem" 4 "4-Cognitively impared" 1 "1-Not enough time" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available"
label values cog09m _OtYSJOPoMl

label variable cog10 "Verbal Fluency Letter F"
label define _k8VlLUSgp0 1 "Complete" 0 "Not Administered"
label values cog10 _k8VlLUSgp0

label variable cog10m "Verbal Fluency Letter F Reason not done"
label define _MYlIAYNFZn 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog10m _MYlIAYNFZn

label variable cog11 "Verbal Fluency Letter A"
label define _u9LjfFRnoj 1 "Complete" 0 "Not Administered"
label values cog11 _u9LjfFRnoj

label variable cog11m "Verbal Fluency Letter A Reason not done"
label define _fJEAsVLqmx 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available" 1 "1-Not enough time"
label values cog11m _fJEAsVLqmx

label variable cog12 "Verbal Fluency Letter S"
label define _DGziq5amX6 1 "Complete" 0 "Not Administered"
label values cog12 _DGziq5amX6

label variable cog12m "Verbal Fluency Letter S Reason not done"
label define _E0T9MouT3z 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog12m _E0T9MouT3z

label variable cog13 "Verbal Fluency Fruit"
label define _MOjlrDJ3mO 1 "Complete" 0 "Not Administered"
label values cog13 _MOjlrDJ3mO

label variable cog13m "Verbal Fluency Fruit Reason not done"
label define _PAdUcE0B4O 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 1 "1-Not enough time" 2 "2-No examiner/room available" 8 "8-Low literacy"
label values cog13m _PAdUcE0B4O

label variable cog14 "Verbal Fluency Animals"
label define _l22hySEP4y 1 "Complete" 0 "Not Administered"
label values cog14 _l22hySEP4y

label variable cog14m "Verbal Fluency Animals Reason not done"
label define _vvMIsIyaRZ 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog14m _vvMIsIyaRZ

label variable cog15 "Verbal Fluency Vegtables"
label define _rzQP4ofNjT 1 "Complete" 0 "Not Administered"
label values cog15 _rzQP4ofNjT

label variable cog15m "Verbal Fluency Vegtables Reason not done"
label define _fEjQ3cobu9 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 1 "1-Not enough time" 8 "8-Low literacy"
label values cog15m _fEjQ3cobu9

label variable cog16 "WAIS Digit Symbol Substitution"
label define _kSV3h9MVCR 1 "Complete" 0 "Not Administered"
label values cog16 _kSV3h9MVCR

label variable cog16m "WAIS Digit Symbol Substitution Reason not done"
label define _vvd7KKQTrO 5 "5-Sensory/physical problem" 1 "1-Not enough time" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 8 "8-Low literacy" 6 "6-Non-native English speaker" 2 "2-No examiner/room available"
label values cog16m _vvd7KKQTrO

label variable cog17 "WRAT"
label define _CnETXVvjQP 1 "Complete" 0 "Not Administered"
label values cog17 _CnETXVvjQP

label variable cog17m "WRAT reason not done"
label define _L942pzvEAH 5 "5-Sensory/physical problem" 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 1 "1-Not enough time" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available"
label values cog17m _L942pzvEAH

label variable cog18 "WAIS R Similarities"
label define _kQKL3lacxa 1 "Complete" 0 "Not Administered"
label values cog18 _kQKL3lacxa

label variable cog18m "WAIS R Similarities Reason not done"
label define _e8mXDLAUqJ 1 "1-Not enough time" 9 "9-Other" 7 "7-Participant refused" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 6 "6-Non-native English speaker" 8 "8-Low literacy" 2 "2-No examiner/room available"
label values cog18m _e8mXDLAUqJ

label variable cog19 "CESD"
label define _U8usQacdpC 1 "Complete" 0 "Not Administered"
label values cog19 _U8usQacdpC

label variable cog19m "CESD reson not done"
label define _WvKrPE3DG2 7 "7-Participant refused" 9 "9-Other" 3 "3-Other technical problem" 4 "4-Cognitively impared" 5 "5-Sensory/physical problem" 1 "1-Not enough time" 6 "6-Non-native English speaker" 2 "2-No examiner/room available" 8 "8-Low literacy"
label values cog19m _WvKrPE3DG2

label variable borgscore "Borg Score"

label variable maskworn_corneutesnew "COVID-19 Pandemic Mask worn"
label define _zEu4Jy4Y3w 1 "Yes" 0 "No"
label values maskworn_corneutesnew _zEu4Jy4Y3w

label variable auto_id_corneutesnew "Unique Teleform Number"

label variable testerid_corneutesnew "Tester ID"

