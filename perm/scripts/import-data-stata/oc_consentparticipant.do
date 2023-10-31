clear
import delimited "../data-csv/oc_consentparticipant.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_conpar "CRF Version"

label variable dna "MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
label define _L3fJ1UHENv 1 "YES - I consent to the DNA collection." 0 "NO - I do NOT consent to the DNA collection."
label values dna _L3fJ1UHENv

label variable entered_by "Staffmember entering this Consent"

label variable future_studies1 "Samples my be used in future studies."
label define _Ify4OXY0n6 2 "YES - these samples may be used for other research projects without contacting me even if the identification code is left on the samples" 1 "YES - these samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine" 3 "MAYBE - I wish to be re-contacted if further studies with my samples are considered" 4 "NO - under no circumstances shall my samples be used for any future studies."
label values future_studies1 _Ify4OXY0n6

label variable future_studies2 "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label define _fMTwW7MJXr 1 "YES - Specimens and data may be stored and used for future research studies." 0 "NO - Specimens and data may NOT be stored and used for future research studies."
label values future_studies2 _fMTwW7MJXr

label variable future_studies_shared "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
label define _F19igaXFGq 1 "YES - Specimens and data may be shared with other researchers and used by these researchers for future research." 0 "NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research."
label values future_studies_shared _F19igaXFGq

label variable systemrecordid "ID from MySql Consents Table"

