clear
import delimited "../data-csv/oc_fittstask.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_fittas "CRF Version"

label variable fittsa01 "Dominant Hand"
label define _UxRlHFch7f 2 "Right" 1 "Left"
label values fittsa01 _UxRlHFch7f

label variable fittsa02 "Dominant Hand issues"
label define _NOJFM0bag0 0 "No" 1 "Yes"
label values fittsa02 _NOJFM0bag0

label variable fittst01 "Test 1 complete"
label define _raSqkTJ8Lo 0 "No" 1 "Yes"
label values fittst01 _raSqkTJ8Lo

label variable fittst03 "Tester How easy did the participant perform this test"
label define _DqCj1YWaLJ 2 "Somewhat Easy" 1 "Very Easy" 4 "Somewhat Difficult" 3 "Neutral" 5 "Very Difficult"
label values fittst03 _DqCj1YWaLJ

label variable fittst04 "Tester Did the participant have trouble understanding the instructions"
label define _zqLzDa6bhw 0 "No" 1 "Yes" 2 "Unsure"
label values fittst04 _zqLzDa6bhw

label variable fittst05 "Tester Do you think the instructions help the participant perform the test"
label define _YdyNW2YX5N 1 "Yes" 2 "Unsure" 0 "No"
label values fittst05 _YdyNW2YX5N

label variable fitts0p6 "Participant How easy was this test"
label define _IzKwHXQO1K 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 4 "Somewhat Difficult" 5 "Very Difficult"
label values fitts0p6 _IzKwHXQO1K

label variable auto_id_fittas "Unique Teleform Number"

label variable fittst01rnd2 "Test 1 reason not done"
label define _HCzKLOIbgv 9 "Not Scheduled" 5 "Technical problems" 6 "Other" 1 "Physical/sensory impairment" 2 "Emotional problems" 3 "Cognitive problems" 4 "Refused" 7 "Joint or movement issues" 8 "Vision problems"
label values fittst01rnd2 _HCzKLOIbgv

label variable lines "Tester Did the participant have a very difficult time hitting the little rectangles"
label define _x15XRyygbV 0 "No" 1 "Yes" 2 "Unsure"
label values lines _x15XRyygbV

label variable stylus "Participant Stylus movement"
label define _JF5e7GN30m 2 "Somewhat Natural" 4 "Somewhat Unnatural" 3 "Neutral" 1 "Very Natural" 5 "Very Unnatural"
label values stylus _JF5e7GN30m

label variable linesparticipant "Participant How difficult to touch the lines"
label define _dsTihZ2H1Z 4 "Somewhat Difficult" 1 "Very Easy" 2 "Somewhat Easy" 3 "Neutral" 5 "Very Difficult"
label values linesparticipant _dsTihZ2H1Z

label variable armofftablet "How hard was it to hold your arm off the tablet"
label define _L0W2Um2zkf 1 "Not hard at all" 2 "Somewhat hard" 3 "Very hard"
label values armofftablet _L0W2Um2zkf

label variable cursonspeed "Did you feel the cursor on screen moved at a comparable speed to your movement on the tablet?"
label define _sWBNJnTEyZ 1 "Yes" 0 "No"
label values cursonspeed _sWBNJnTEyZ

label variable fittst01rnd "Test 1 reason not done"
label define _soEQBDyOPc 6 "Other" 1 "Physical/sensory impairment" 2 "Emotional problems" 3 "Cognitive problems" 4 "Refused" 5 "Technical problems"
label values fittst01rnd _soEQBDyOPc

label variable fittst02 "Tester Did the participant have a very difficult time hitting the little rectangles"
label define _dUxFOwJADl 0 "No" 1 "Yes" 2 "Unsure"
label values fittst02 _dUxFOwJADl

label variable fitts0p7 "Participant Finger movement"
label define _tgXv2bSsxR 2 "Somewhat Natural" 1 "Very Natural" 3 "Neutral" 4 "Somewhat Unnatural" 5 "Very Unnatural"
label values fitts0p7 _tgXv2bSsxR

label variable fitts0p8 "Participant How difficult to touch triangles"
label define _AaWPcIOoEf 2 "Somewhat Easy" 4 "Somewhat Difficult" 1 "Very Easy" 3 "Neutral" 5 "Very Difficult"
label values fitts0p8 _AaWPcIOoEf

label variable fittst09 "Tester Compare how easy Test 1 Test 2"
label define _r0SSxT1GQy 3 "About the Same" 2 "Somewhat Easier" 1 "Much Easier" 4 "With More Difficulty" 5 "With Much More Difficulty"
label values fittst09 _r0SSxT1GQy

label variable fittsp10 "Participant Compare how easy Test 1 Test 2"
label define _EnOb37sESm 3 "About the Same" 2 "Somewhat Easier" 1 "Much Easier" 4 "With More Difficulty" 5 "With Much More Difficulty"
label values fittsp10 _EnOb37sESm

label variable testerid_fittas "Tester ID"

