clear
import delimited "../data-csv/oc_weighthistory.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_weihis "CRF Version"

label variable whxdone "Was weight history collected"
label define _AA3PVTi6of 1 "Yes" 9 "(9) Technical problems (no time/not scheduled)" 7 "(7) Refused to answer" 5 "(5) Physical (communication problem)" 8 "(8) Don't remember any weight" 6 "(6) Cannot understand the questions"
label values whxdone _AA3PVTi6of

label variable whx1 "Weight 1 year ago"

label variable whx1nd "Reason Q1 not answered"
label define _EtWTlTSS4P 8 "(8) DK/DR" 7 "(7) Refused"
label values whx1nd _EtWTlTSS4P

label variable whx2 "Weight 10 years ago"

label variable whx2nd "Reason Q2 not answered"
label define _e6aMz7wXKB 8 "(8) DK/DR" 7 "(7) Refused"
label values whx2nd _e6aMz7wXKB

label variable whx3 "Weight at age 25"

label variable whx3nd "Reason Q3 not answered"
label define _P9E5VL1NtD 8 "(8) DK/DR" 7 "(7) Refused"
label values whx3nd _P9E5VL1NtD

label variable whx4 "Weight at age 50"

label variable whx4nd "Reqson Q4 not answered"
label define _vZsXMTNgLM 8 "(8) DK/DR" 9 "(9) NA" 7 "(7) Refused"
label values whx4nd _vZsXMTNgLM

label variable whx5a "What is the most you have ever weighed"

label variable whx5and "Reason Q5a not answered"
label define _xNPedtjcBN 8 "(8) DK/DR" 7 "(7) Refused"
label values whx5and _xNPedtjcBN

label variable whx5b "How old were you then"

label variable whx5bnd "Reason Q5b not answered"
label define _pNjV6RPsM7 8 "(8) DK/DR" 7 "(7) Refused"
label values whx5bnd _pNjV6RPsM7

label variable whx6a "What is the least you have ever weighed"

label variable whx6and "Reason Q6a not answered"
label define _B7m3HeCO2v 8 "(8) DK/DR" 7 "(7) Refused"
label values whx6and _B7m3HeCO2v

label variable whx6b "How old were you then"

label variable whx6bnd "Reason Q6b not answered"
label define _tpJhQDsdZv 8 "(8) DK/DR" 7 "(7) Refused"
label values whx6bnd _tpJhQDsdZv

label variable whx7 "What would you say about your weight during adult life"
label define _meLXV3Ufvd 2 "(2) You have had a gradual gain in weight (>10 lbs)" 1 "(1) Your weight has stayed about the same +/- 10 lbs" 5 "(5) Your weight has repeatedly gone up and down again" 3 "(3) You have had a gradual loss in weight" 4 "(4) You have had a marked loss in weight and then kept it off" 8 "(8) DK/DR" 7 "(7) Refused"
label values whx7 _meLXV3Ufvd

label variable auto_id_weihis "Unique Teleform Number"

label variable testerid_weihis "Tester ID"

