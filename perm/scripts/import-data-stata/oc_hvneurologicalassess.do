clear
import delimited "../data-csv/oc_hvneurologicalassess.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_hvneuass "CRF Version"

label variable neu01 "Recite days of the week"
label define _nw1HIpUvJh 1 "Completed" 0 "Not Completed"
label values neu01 _nw1HIpUvJh

label variable neu01a "days of week reason not done"
label define _Drw9eSx9Xd 666 "666 = mental problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 555 "555 = physical problems" 999 "999 = technical problems"
label values neu01a _Drw9eSx9Xd

label variable neu02 "Smile"
label define _l57iCaPKIE 1 "Completed" 0 "Not Completed"
label values neu02 _l57iCaPKIE

label variable neu02a "Smile reason not done"
label define _T8d8HrnK1J 888 "888 = refused but theoretically could do" 777 "777 = physical and mental problems" 555 "555 = physical problems" 666 "666 = mental problems" 999 "999 = technical problems"
label values neu02a _T8d8HrnK1J

label variable neu03 "Finger to Nose"
label define _Onnk0Om03x 1 "Completed" 0 "Not Completed"
label values neu03 _Onnk0Om03x

label variable neu03a "Finger to nose reason not done"
label define _HXBB6fl1Ls 666 "666 = mental problems" 777 "777 = physical and mental problems" 555 "555 = physical problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu03a _HXBB6fl1Ls

label variable neu04 "Orbit Motion"
label define _HwlN0hUoSr 1 "Completed" 0 "Not Completed"
label values neu04 _HwlN0hUoSr

label variable neu04a "Orbit Motion reason not done"
label define _l5DWzorYEW 777 "777 = physical and mental problems" 555 "555 = physical problems" 888 "888 = refused but theoretically could do" 666 "666 = mental problems" 999 "999 = technical problems"
label values neu04a _l5DWzorYEW

label variable neu05 "Open and Close Motion"
label define _ZxtOoczg5I 1 "Completed" 0 "Not Completed"
label values neu05 _ZxtOoczg5I

label variable neu05a "Open and Close Motion reason not done"
label define _R0VEZGPE6r 555 "555 = physical problems" 777 "777 = physical and mental problems" 666 "666 = mental problems" 888 "888 = refused but theoretically could do" 999 "999 = technical problems"
label values neu05a _R0VEZGPE6r

label variable neu06 "Heel Taps"
label define _AbhCbwGflT 1 "Completed" 0 "Not Completed"
label values neu06 _AbhCbwGflT

label variable neu06a "Heel Taps reason not done"
label define _cTmXyqyu92 555 "555 = physical problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 666 "666 = mental problems" 999 "999 = technical problems"
label values neu06a _cTmXyqyu92

label variable neu07 "Chair Stand and Walk"
label define _jZeJzvy1mS 1 "Completed" 0 "Not Completed"
label values neu07 _jZeJzvy1mS

label variable neu07a "Chair Stand and Walk reason not done"
label define _NupO4iN4fe 555 "555 = physical problems" 777 "777 = physical and mental problems" 888 "888 = refused but theoretically could do" 666 "666 = mental problems" 999 "999 = technical problems"
label values neu07a _NupO4iN4fe

label variable auto_id_hvneuass "Unique Teleform Number"

label variable testerid_hvneuass "Tester ID"

