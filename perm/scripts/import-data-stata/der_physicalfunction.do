clear
import delimited "../data-csv/der_physicalfunction.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable walkquartermile "Difficulty/ease walking 1/4 mile"
label define _bHYzjQ0a2T40 6 "very easy" 5 "somewhat easy" 0 "unable to do" 4 "not so easy" 3 "a little difficulty" 2 "some difficulty" 1 "a lot of difficulty"
label values walkquartermile _bHYzjQ0a2T40

label variable walkonemile "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label define _pKj63X9U4g18 3 "very easy" 0 "difficult" 2 "somewhat easy" 1 "not so easy"
label values walkonemile _pKj63X9U4g18

label variable wkindex "Walking ability summary score"

label variable stairs10 "Difficulty/ease walking up 10 steps"
label define _eYd9xu67rp24 6 "very easy" 5 "somewhat easy" 4 "not so easy" 2 "some difficulty" 0 "unable to do" 3 "a little difficulty" 1 "a lot of difficulty"
label values stairs10 _eYd9xu67rp24

label variable stairs20 "Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
label define _ZT8NHF9OM9J8 3 "very easy" 2 "somewhat easy" 0 "difficult" 1 "not so easy"
label values stairs20 _ZT8NHF9OM9J8

label variable stindex "Climbing stairs ability summary score"

label variable liftcarry10 "Difficulty/ease lifting/carrying 10 lbs"
label define _Byh541oGlzy8 6 "very easy" 5 "somewhat easy" 3 "a little difficulty" 2 "some difficulty" 0 "unable to do" 4 "not so easy" 1 "a lot of difficulty"
label values liftcarry10 _Byh541oGlzy8

label variable liftcarry20 "Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
label define _CTYVd3Wjrs3Y 3 "very easy" 2 "somewhat easy" 0 "difficult" 1 "not so easy"
label values liftcarry20 _CTYVd3Wjrs3Y

label variable lcindex "Lifting/carrying ability summary score"

label variable handgrip "Maximum hand grip (kg)"

label variable did400m "400 meter walk - completion flag"
label define _iXe3CJ3001XL 1 "complete" 0 "started but stopped" 3 "stopped after 2:30 minute walk" 2 "excluded including incomplete 2:30 minute walk" 4 "not done for technical reasons/refused"
label values did400m _iXe3CJ3001XL

label variable c400secs "400 meter walk - time (seconds)"

label variable c400pace "400 meter walk - pace (m/s)"

label variable c400aid "400 meter walk - walking aid use"
label define _uNS221A6f35w 0 "2:30 minute walk without aid" 1 "Aid used for 2:30 minute walk"
label values c400aid _uNS221A6f35w

label variable uw150 "Usual pace walk - completion flag"
label define _bXpNmW486Mxv 1 "completed" 3 "not done for technical reason/refused" 0 "started but stopped" 2 "excluded"
label values uw150 _bXpNmW486Mxv

label variable uw150meters "Usual pace walk - distance (meters)"

label variable uw150pace "Usual pace walk - pace (m/s)"

label variable uw150aid "Usual pace walk - walking aid use"
label define _UJ648Mr6Uad9 0 "Usual-paced walk without aid" 1 "Aid used for usual-paced walk"
label values uw150aid _UJ648Mr6Uad9

label variable adl_trans "ADL - any difficulty getting in and out of bed or chair"
label define _NwdUrAqCQE1g 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_trans _NwdUrAqCQE1g

label variable adlh_trans "ADL - need special equipment getting in and out of bed or chair"
label define _Brtk37hr78O8 0 "No" 1 "Yes"
label values adlh_trans _Brtk37hr78O8

label variable adl_bathe "ADL - any difficulty bathing or showering"
label define _ajjT349LFj4U 0 "none" 1 "a little" 2 "some" 4 "unable to do" 3 "a lot"
label values adl_bathe _ajjT349LFj4U

label variable adlh_bathe "ADL - need special equipment bathing or showering"
label define _eXFFAnKL1l15 0 "No" 1 "Yes"
label values adlh_bathe _eXFFAnKL1l15

label variable adl_dress "ADL - any difficulty dressing"
label define _enXRf3o78odQ 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values adl_dress _enXRf3o78odQ

label variable adlh_dress "ADL - need special equipment dressing"
label define _T98316V9g1Ew 0 "No" 1 "Yes"
label values adlh_dress _T98316V9g1Ew

label variable adl_eat "ADL - any difficulty eating"
label define _vtF7ZvQL28eI 0 "none" 2 "some" 1 "a little" 3 "a lot" 4 "unable to do"
label values adl_eat _vtF7ZvQL28eI

label variable adlh_eat "ADL - need special equipment eating"
label define _W91442V41YR2 0 "No" 1 "Yes"
label values adlh_eat _W91442V41YR2

label variable adl_toilet "ADL - any difficulty using the toilet"
label define _K2Ci4A7z6XKD 0 "none" 1 "a little" 2 "some" 4 "unable to do" 3 "a lot"
label values adl_toilet _K2Ci4A7z6XKD

label variable adlh_toilet "ADL - need special equipment using the toilet"
label define _o8z9g51SIK62 0 "No" 1 "Yes"
label values adlh_toilet _o8z9g51SIK62

label variable adl_walk "ADL - any difficulty walking across a small room"
label define _E26C5RJI040a 0 "none" 4 "unable to do" 2 "some" 1 "a little" 3 "a lot"
label values adl_walk _E26C5RJI040a

label variable adlh_walk "ADL - need special equipment walking across a small room"
label define _t4W6T33ce9ho 0 "No" 1 "Yes"
label values adlh_walk _t4W6T33ce9ho

label variable adl_total "ADL - total score"

label variable adl_nmiss "ADL - number missing"

label variable adl_number "ADL - number with any difficulty (if all non-missing)"

label variable iadl_lightwork "IADL - any difficulty doing light housework"
label define _JxYgvxg64C8B 0 "none" 2 "some" 1 "a little" 4 "unable to do" 3 "a lot"
label values iadl_lightwork _JxYgvxg64C8B

label variable iadlh_lightwork "IADL - do not do light housework for health-related reasons"
label define _x5gM6OwX0m7X 0 "No" 1 "Yes"
label values iadlh_lightwork _x5gM6OwX0m7X

label variable iadl_heavywork "IADL - any difficulty doing heavy housework"
label define _Ftj7e1g2u04H 0 "none" 2 "some" 1 "a little" 3 "a lot" 4 "unable to do"
label values iadl_heavywork _Ftj7e1g2u04H

label variable iadlh_heavywork "IADL - do not do heavy housework for health-related reasons"
label define _AnYBeQ1eFRYe 0 "No" 1 "Yes"
label values iadlh_heavywork _AnYBeQ1eFRYe

label variable iadl_meal "IADL - any difficulty preparing own meals"
label define _lhut100Oqx6x 0 "none" 4 "unable to do" 1 "a little" 2 "some" 3 "a lot"
label values iadl_meal _lhut100Oqx6x

label variable iadlh_meal "IADL - do not prepare meals for health-related reasons"
label define _sVK1KtAS5Ynt 0 "No" 1 "Yes"
label values iadlh_meal _sVK1KtAS5Ynt

label variable iadl_shop "IADL - any difficulty shopping for personal items"
label define _S1Qo5D2UVZ4g 0 "none" 4 "unable to do" 2 "some" 1 "a little" 3 "a lot"
label values iadl_shop _S1Qo5D2UVZ4g

label variable iadlh_shop "IADL - do not shop for health-related reasons"
label define _RyHErnhw7S77 1 "Yes" 0 "No"
label values iadlh_shop _RyHErnhw7S77

label variable iadl_phone "IADL - any difficulty using the telephone"
label define _VhQoTcyu454q 0 "none" 1 "a little" 2 "some" 3 "a lot" 4 "unable to do"
label values iadl_phone _VhQoTcyu454q

label variable iadlh_phone "IADL - do not use the telephone for health-related reasons"
label define _qv0UPypUIF5A 0 "No" 1 "Yes"
label values iadlh_phone _qv0UPypUIF5A

label variable iadl_meds "IADL - any difficulty taking medication"
label define _Tgx74tLB7IlX 0 "none" 4 "unable to do" 1 "a little" 3 "a lot" 2 "some"
label values iadl_meds _Tgx74tLB7IlX

label variable iadlh_meds "IADL - do not take medication for health-related reasons"
label define _DYKo6P85sk31 0 "No" 1 "Yes"
label values iadlh_meds _DYKo6P85sk31

label variable iadl_money "IADL - any difficulty managing money"
label define _Y5L5moQr946l 0 "none" 4 "unable to do" 1 "a little" 2 "some" 3 "a lot"
label values iadl_money _Y5L5moQr946l

label variable iadlh_money "IADL - do not manage money for health-related reasons"
label define _R8T563MO70AD 0 "No" 1 "Yes"
label values iadlh_money _R8T563MO70AD

label variable iadl_drive "IADL - any difficulty driving"
label define _FLWm13zl777h 0 "none" 1 "a little" 4 "unable to do" 2 "some" 3 "a lot"
label values iadl_drive _FLWm13zl777h

label variable iadlh_drive "IADL - primary reason do not drive"
label define _X8wKcJEH69qS 4 "Health" 3 "Vision" 2 "No car" 1 "Never drove" 5 "Lost license"
label values iadlh_drive _X8wKcJEH69qS

