clear
import delimited "../data-csv/der_abi.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable abi "Ankle-Brachial Index"

label variable abi2cat "Peripheral Artery Disease ABI Classification"
label define _Q6nObG61XsxK 0 "PAD Absent: ABI greater than or equal to 0.9" 1 "PAD Present: ABI < 0.9"
label values abi2cat _Q6nObG61XsxK

label variable pad "Peripheral Artery Disease"
label define _SMZCX0DsUp9q 0 "PAD Absent" 1 "PAD Present"
label values pad _SMZCX0DsUp9q

