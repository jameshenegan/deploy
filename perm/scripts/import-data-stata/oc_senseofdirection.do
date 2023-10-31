clear
import delimited "../data-csv/oc_senseofdirection.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_senofdir "CRF Version"

label variable judgedistance "I am very good at judging distances"
label define _iIuEKiCwli 2 "(2)" 1 "(1) strongly agree" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values judgedistance _iIuEKiCwli

label variable senseofdirection "My sense of direction is very good"
label define _WD2OYYlLQ3 2 "(2)" 1 "(1) strongly agree" 3 "(3)" 4 "(4)" 5 "(5)" 6 "(6)" 7 "(7) strongly disagree"
label values senseofdirection _WD2OYYlLQ3

label variable losteasily "I very easily get lost in a new city"
label define _pIzZVT2fF4 6 "(6)" 4 "(4)" 5 "(5)" 3 "(3)" 7 "(7) strongly disagree" 2 "(2)" 1 "(1) strongly agree"
label values losteasily _pIzZVT2fF4

label variable troubledirections "I have trouble understanding directions"
label define _pfsg8zk39B 6 "(6)" 7 "(7) strongly disagree" 5 "(5)" 4 "(4)" 3 "(3)" 2 "(2)" 1 "(1) strongly agree"
label values troubledirections _pfsg8zk39B

label variable routeswhenriding "I don't remember routes very well while riding as a passenger in a car"
label define _eVW0NKUcb8 6 "(6)" 4 "(4)" 3 "(3)" 5 "(5)" 7 "(7) strongly disagree" 2 "(2)" 1 "(1) strongly agree"
label values routeswhenriding _eVW0NKUcb8

label variable rememberroutes "I can usually remember a new route after I have traveled it only once"
label define _J8ReIuFpAE 2 "(2)" 3 "(3)" 1 "(1) strongly agree" 5 "(5)" 4 "(4)" 6 "(6)" 7 "(7) strongly disagree"
label values rememberroutes _J8ReIuFpAE

label variable mentalmap "I don't have a very good mental map of my environment"
label define _AmXASo4bEZ 7 "(7) strongly disagree" 6 "(6)" 5 "(5)" 4 "(4)" 2 "(2)" 3 "(3)" 1 "(1) strongly agree"
label values mentalmap _AmXASo4bEZ

