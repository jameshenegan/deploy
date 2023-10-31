clear
import delimited "../data-csv/oc_mri.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_mri "CRF Version"

label variable mri01a "Eligible for Thigh MRI"
label define _qKvSx10ENp 1 "Yes" 0 "No"
label values mri01a _qKvSx10ENp

label variable mri01b "Thigh MRI reason not eligible"
label define _zwzwy5rtr7 3 "Metal in body" 4 " Implanted Medical device" 2 "Claustrophobia" 1 "Physical"
label values mri01b _zwzwy5rtr7

label variable mri01c "Was thigh MRI completed"
label define _MlojJaathP 1 "Complete" 3 "Not Done" 2 "Incomplete"
label values mri01c _MlojJaathP

label variable mri01d1 "Thigh SURVEY"
label define _fQOEG03o55 4 "4 - Refused" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 6 "6 - Equipment problem"
label values mri01d1 _fQOEG03o55

label variable mri01d2 "Thigh WIP SURVEY"
label define _kh6DmBy7sD 4 "4 - Refused" 5 "5 - Unable (Physical/Mental)" 6 "6 - Equipment problem" 3 "3 - No Time"
label values mri01d2 _kh6DmBy7sD

label variable mri01d3 "Thigh Small Fov Flex M survey"
label define _mASqQXZNrX 4 "4 - Refused" 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time"
label values mri01d3 _mASqQXZNrX

label variable mri01d4 "T1 3D 80 SLICE"
label define _UUT2SiGsYI 4 "4 - Refused" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 6 "6 - Equipment problem"
label values mri01d4 _UUT2SiGsYI

label variable mri01d5 "COR SCOUT"
label define _fZOkDW6My4 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 6 "6 - Equipment problem" 3 "3 - No Time"
label values mri01d5 _fZOkDW6My4

label variable mri01d6 "B0map2p3ms"
label define _WJ42Kj4PM5 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 6 "6 - Equipment problem" 3 "3 - No Time"
label values mri01d6 _WJ42Kj4PM5

label variable mri01d7 "WS T1 3D 80 SLICE"
label define _pTUb4HToD9 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time" 6 "6 - Equipment problem"
label values mri01d7 _pTUb4HToD9

label variable mri01d8 "FS T1 3D 30 SLICE"
label define _JjbQTID1TU 5 "5 - Unable (Physical/Mental)" 6 "6 - Equipment problem" 4 "4 - Refused" 3 "3 - No Time"
label values mri01d8 _JjbQTID1TU

label variable mri01d9 "SV PRESS FLEX M"
label define _zSqzIsN1XR 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri01d9 _zSqzIsN1XR

label variable mri01d10 "SV NOH2OSUPP"
label define _bzAlOrUKWk 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri01d10 _bzAlOrUKWk

label variable mri02a "Eligible for 31P Dynamic Exercise"
label define _zfsObRIpy9 1 "Yes" 0 "No"
label values mri02a _zfsObRIpy9

label variable mri02b "Dynamic Exercise MRI reason not eligible"
label define _Gv0ezOyafR 3 "Metal in body" 4 " Implanted Medical device" 2 "Claustrophobia" 1 "Physical"
label values mri02b _Gv0ezOyafR

label variable mri02c "Was Dynamic Exercise MRI completed"
label define _QxRYYOorzZ 1 "Complete" 3 "Not Done" 2 "Incomplete"
label values mri02c _QxRYYOorzZ

label variable mri02d1 "Dynamic Exercise SURVEY"
label define _qbAMsHB6ae 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri02d1 _qbAMsHB6ae

label variable mri02d2 "Dynamic Exercise SURVEY L Leg"
label define _IhlbIxWvVQ 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri02d2 _IhlbIxWvVQ

label variable mri02d3 "Dynamic Exercise T1 3D 80 Slice"
label define _SJ6Karu6mm 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri02d3 _SJ6Karu6mm

label variable mri02d4 "Dynamic Exercise B0map 2p3ms"
label define _VcAEjmbZlb 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri02d4 _VcAEjmbZlb

label variable mri02d5 "Dynamic Exercise T1W_TSE"
label define _tbiP4ABSFp 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri02d5 _tbiP4ABSFp

label variable mri02d6 "Dynamic Exercise 31P LONG TR"
label define _XEGB22JSUX 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused"
label values mri02d6 _XEGB22JSUX

label variable mri02d7 "Dynamic Exercise 31P_DYN_EXERCISE"
label define _wUWC1jqbey 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused"
label values mri02d7 _wUWC1jqbey

label variable mri02d8 "Dynamic Exercise T1W_TSE 2"
label define _SkL1gaChyw 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused"
label values mri02d8 _SkL1gaChyw

label variable mri02d9 "Dynamic Exercise 31P Long TR 2"
label define _kJLnfg8sD1 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused"
label values mri02d9 _kJLnfg8sD1

label variable mri03a "Eligible for Brain MRI"
label define _piMzklm1YS 1 "Yes" 0 "No"
label values mri03a _piMzklm1YS

label variable mri03b "Brain MRI reason not eligible"
label define _uSY1ACK8SI 2 "Claustrophobia" 4 " Implanted Medical device" 3 "Metal in body" 1 "Physical"
label values mri03b _uSY1ACK8SI

label variable mri03c "Was Brain MRI completed"
label define _fkXICKbC7Q 1 "Complete" 3 "Not Done" 2 "Incomplete"
label values mri03c _fkXICKbC7Q

label variable mri03d1 "Smart Brain"
label define _ZVJuhJyzxc 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri03d1 _ZVJuhJyzxc

label variable mri03d3 "MPrageADNIsag"
label define _Ft9rbUDip6 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri03d3 _Ft9rbUDip6

label variable mri03d4 "REST"
label define _YAUgUagDZe 5 "5 - Unable (Physical/Mental)" 6 "6 - Equipment problem" 4 "4 - Refused" 3 "3 - No Time"
label values mri03d4 _YAUgUagDZe

label variable mri03d7 "DE ADNIaxial"
label define _K0wtKvgzSs 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 6 "6 - Equipment problem" 3 "3 - No Time"
label values mri03d7 _K0wtKvgzSs

label variable mri03d8 "FLAIR"
label define _SwPouZuPb1 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 6 "6 - Equipment problem" 3 "3 - No Time"
label values mri03d8 _SwPouZuPb1

label variable mri01d_2 "Thigh MRI reason not done"
label define _WpCyTn3tDP 9 "Not Scheduled" 6 "Equipment Problems" 4 "Refused" 7 "No Tester" 3 "No Time" 8 "Unable COVID-19 Mask"
label values mri01d_2 _WpCyTn3tDP

label variable mri02d_2 "Dynamic Exercise MRI reason not done"
label define _UDJuDd6bBJ 9 "Not Scheduled" 6 "Equipment Problems" 4 "Refused" 7 "No Tester" 3 "No Time" 8 "Unable COVID-19 Mask"
label values mri02d_2 _UDJuDd6bBJ

label variable mri03d_2 "BrainMRI reason not done"
label define _cSpU4WmOLS 9 "Not Scheduled" 6 "Equipment Problems" 4 "Refused" 7 "No Tester" 3 "No Time" 8 "Unable COVID-19 Mask"
label values mri03d_2 _cSpU4WmOLS

label variable mri03d2 "Ref HC8"
label define _KgZLgNMLUx 5 "5 - Unable (Physical/Mental)" 3 "3 - No Time" 4 "4 - Refused" 6 "6 - Equipment problem"
label values mri03d2 _KgZLgNMLUx

label variable mri03d5 "Decision Making"
label define _CQQjVJnuZ2 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri03d5 _CQQjVJnuZ2

label variable mri03d6 "Decision Making 2"
label define _GBLxDEaZks 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri03d6 _GBLxDEaZks

label variable mri03d9 "DT1HR2.2"
label define _okFdcVPR7x 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri03d9 _okFdcVPR7x

label variable mri03d10 "DT1HR2.2 2"
label define _EadSmvPiVU 6 "6 - Equipment problem" 5 "5 - Unable (Physical/Mental)" 4 "4 - Refused" 3 "3 - No Time"
label values mri03d10 _EadSmvPiVU

label variable mri01d "Thigh MRI reason not done"
label define _ka5gdhjJIC 4 "Refused" 9 "Not Scheduled" 3 "No Time" 6 "Equipment Problems" 7 "No Tester"
label values mri01d _ka5gdhjJIC

label variable mri02d "Dynamic Exercise MRI reason not done"
label define _mimHU0BtV0 4 "Refused" 9 "Not Scheduled" 6 "Equipment Problems" 3 "No Time" 7 "No Tester"
label values mri02d _mimHU0BtV0

label variable mri03d "BrainMRI reason not done"
label define _wdcXD6IGsY 4 "Refused" 9 "Not Scheduled" 3 "No Time" 6 "Equipment Problems" 7 "No Tester"
label values mri03d _wdcXD6IGsY

label variable auto_id_mri "Unique Teleform Number"

label variable testerid_mri "Tester ID"

