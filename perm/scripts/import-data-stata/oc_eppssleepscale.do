clear
import delimited "../data-csv/oc_eppssleepscale.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_eppslesca "CRF Version"

label variable epss01 "Sitting and reading"
label define _YVAGKmtzUb 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 0 "0-would never doze" 3 "3-high chance of dozing"
label values epss01 _YVAGKmtzUb

label variable epss02 "Watching tv"
label define _SUNQBuF5TD 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 0 "0-would never doze" 3 "3-high chance of dozing"
label values epss02 _SUNQBuF5TD

label variable epss03 "Sitting, inactive in a public place"
label define _xjtXwHG4ci 0 "0-would never doze" 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 3 "3-high chance of dozing"
label values epss03 _xjtXwHG4ci

label variable epss04 "Passenger in a car for an hr without a break"
label define _Sshrf3DYnq 0 "0-would never doze" 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 3 "3-high chance of dozing"
label values epss04 _Sshrf3DYnq

label variable epss05 "Lying down to rest in the afternoon"
label define _WoFhQDa894 3 "3-high chance of dozing" 2 "2-moderate chance of dozing" 1 "1-slight chance of dozing" 0 "0-would never doze"
label values epss05 _WoFhQDa894

label variable epss06 "Sitting and talking to someone"
label define _m9F3zHij3U 0 "0-would never doze" 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 3 "3-high chance of dozing"
label values epss06 _m9F3zHij3U

label variable epss07 "Sitting quitely after a lunch without alcohol"
label define _ufovQGbdff 0 "0-would never doze" 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 3 "3-high chance of dozing"
label values epss07 _ufovQGbdff

label variable epss08 "In a car while stopped for a few minutes in traffic"
label define _WSV3tnkXjk 0 "0-would never doze" 1 "1-slight chance of dozing" 2 "2-moderate chance of dozing" 3 "3-high chance of dozing"
label values epss08 _WSV3tnkXjk

label variable auto_id_eppslesca "Unique Teleform Number"

label variable testerid_eppslesca "Tester ID"

