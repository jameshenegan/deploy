clear
import delimited "../data-csv/oc_purposeinlife.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_purinlif "CRF Version"

label variable q1 "I feel good when I think of what I've done in the past and what I hope to do in the future"
label define _GEc1RHwiUQ 5 "Strongly agree" 4 "Agree" 3 "Neutral" 1 "Strongly disagree" 2 "Disagree"
label values q1 _GEc1RHwiUQ

label variable q2 "I live life one day at a time and don't really think about the future"
label define _pTf4MCNJ0D 4 "Disagree" 3 "Neutral" 5 "Strongly disagree" 2 "Agree" 1 "Strongly agree"
label values q2 _pTf4MCNJ0D

label variable q3 "I tend to focus on the present because the future nearly always brings me problems"
label define _HwCliaspkt 4 "Disagree" 5 "Strongly disagree" 3 "Neutral" 2 "Agree" 1 "Strongly agree"
label values q3 _HwCliaspkt

label variable q4 "I have a sense of direction and purpose in life"
label define _V3jmMkJ18u 4 "Agree" 5 "Strongly agree" 3 "Neutral" 2 "Disagree" 1 "Strongly disagree"
label values q4 _V3jmMkJ18u

label variable q5 "My daily activities often seem trivial and unimportant to me"
label define _a0NfatjlgQ 4 "Disagree" 5 "Strongly disagree" 3 "Neutral" 2 "Agree" 1 "Strongly agree"
label values q5 _a0NfatjlgQ

label variable q6 "I used to set goals for myself but that now seems like a waste of time"
label define _sDiUZZWzzI 4 "Disagree" 5 "Strongly disagree" 3 "Neutral" 2 "Agree" 1 "Strongly agree"
label values q6 _sDiUZZWzzI

label variable q7 "I enjoy making plans for the future and working them to a reality"
label define _KiA1bZxd9p 4 "Agree" 5 "Strongly agree" 3 "Neutral" 2 "Disagree" 1 "Strongly disagree"
label values q7 _KiA1bZxd9p

label variable q8 "I am an active person in carrying out the plans I set for myself"
label define _k1bXPSSU3E 4 "Agree" 5 "Strongly agree" 3 "Neutral" 2 "Disagree" 1 "Strongly disagree"
label values q8 _k1bXPSSU3E

label variable q9 "Some people wander aimlessly through life but I am not one of them"
label define _v9msOeofNk 4 "Agree" 5 "Strongly agree" 3 "Neutral" 2 "Disagree" 1 "Strongly disagree"
label values q9 _v9msOeofNk

label variable q10 "I sometimes feel as if I've done all there is to do in life"
label define _bf2t72ALD8 4 "Disagree" 5 "Strongly disagree" 3 "Neutral" 2 "Agree" 1 "Strongly agree"
label values q10 _bf2t72ALD8

