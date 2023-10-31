clear
import delimited "../data-csv/oc_tonguephoto.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_tonpho "CRF Version"

label variable tph01 "Were Tongue photos taken"
label define _Btdij8k0hf 1 "Yes" 9 "Not scheduled" 6 "Technical" 0 "Other" 7 "No tester" 4 "Refused"
label values tph01 _Btdij8k0hf

label variable tph02a "Photo taken without food coloring Left"
label define _g5xSlWWL4X 1 "Yes" 0 "No"
label values tph02a _g5xSlWWL4X

label variable tph02b "Photo taken without food coloring Right"
label define _DnFEj3uPMs 1 "Yes" 0 "No"
label values tph02b _DnFEj3uPMs

label variable tph02c "Photo taken with food coloring Left"
label define _vaxeHIw9Uk 1 "Yes" 0 "No"
label values tph02c _vaxeHIw9Uk

label variable tph02d "Photo taken with food coloring Right"
label define _chvcRJpXXu 1 "Yes" 0 "No"
label values tph02d _chvcRJpXXu

label variable tph03a "Reason all photos not collected"
label define _VmWM31SR73 6 "Technical" 0 "Other" 4 "Refused"
label values tph03a _VmWM31SR73

label variable auto_id_tonpho "Unique Teleform Number"

label variable testerid_tonpho "Tester ID"

