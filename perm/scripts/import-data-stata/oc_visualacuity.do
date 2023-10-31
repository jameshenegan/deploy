clear
import delimited "../data-csv/oc_visualacuity.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_visacu "CRF Version"

label variable visacst1 "Stereopsis Line 1"

label variable visacst2 "Stereopsis Line 2"

label variable visacst3 "Stereopsis Line 3"

label variable visacst4 "Stereopsis Line 4"

label variable visacst5 "Stereopsis Line 5"

label variable visacst6 "Stereopsis Line 6"

label variable visacst7 "Stereopsis Line 7"

label variable visacst8 "Stereopsis Line 8"

label variable visacst9 "Stereopsis Line 9"

label variable visacst01 "Stereopsis test completed"
label define _BtKrJqKTpH 1 "Yes" 0 "No"
label values visacst01 _BtKrJqKTpH

label variable visacstrnd "Stereopsis reason not done"
label define _WA0DAVb3Yv 555 "Physical problems" 999 "Technical problems" 888 "Refused*" 666 "Cognitive problems" 777 "Physical and cognitive"
label values visacstrnd _WA0DAVb3Yv

label variable visacst02 "Did participant wear glasses"
label define _n2EsmcmCRw 1 "Yes" 0 "No"
label values visacst02 _n2EsmcmCRw

label variable visacr1 "ETDRS Right eye Row 1"
label define _MWtXm42t3Y 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacr1 _MWtXm42t3Y

label variable visacr2 "ETDRS Right eye Row 2"
label define _MSfzeFiNE7 5 "5" 0 "0" 4 "4" 1 "1" 3 "3" 2 "2"
label values visacr2 _MSfzeFiNE7

label variable visacr3 "ETDRS Right eye Row 3"
label define _jcbptbT8Ps 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacr3 _jcbptbT8Ps

label variable visacr4 "ETDRS Right eye Row 4"
label define _FjtfDv4dVZ 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacr4 _FjtfDv4dVZ

label variable visacr5 "ETDRS Right eye Row 5"
label define _AWQHxWVH8l 5 "5" 4 "4" 0 "0" 3 "3" 1 "1" 2 "2"
label values visacr5 _AWQHxWVH8l

label variable visacr6 "ETDRS Right eye Row 6"
label define _qtBrVCHj2J 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacr6 _qtBrVCHj2J

label variable visacr7 "ETDRS Right eye Row 7"
label define _lxbMPa5IlX 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacr7 _lxbMPa5IlX

label variable visacr8 "ETDRS Right eye Row 8"
label define _iZeQw8ihPt 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacr8 _iZeQw8ihPt

label variable visacr9 "ETDRS Right eye Row 9"
label define _ITx6BKuViu 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacr9 _ITx6BKuViu

label variable visacr10 "ETDRS Right eye Row 10"
label define _dtRHN39yHF 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacr10 _dtRHN39yHF

label variable visacr11 "ETDRS Right eye Row 11"
label define _zYuuJzLVAF 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacr11 _zYuuJzLVAF

label variable visacr12 "ETDRS Right eye Row 12"
label define _RkiZUh5sw2 0 "0" 3 "3" 1 "1" 4 "4" 2 "2" 5 "5"
label values visacr12 _RkiZUh5sw2

label variable visacr13 "ETDRS Right eye Row 13"
label define _FF2uMhNR6V 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values visacr13 _FF2uMhNR6V

label variable visacr14 "ETDRS Right eye Row 14"
label define _MtlvAcwC3m 0 "0" 1 "1" 3 "3" 2 "2" 4 "4" 5 "5"
label values visacr14 _MtlvAcwC3m

label variable visacrt "Chart Total Right eye"

label variable visacryn "Was distance ETDRS visual acuity checked in the right eye"
label define _Sj38mQzcAp 1 "Yes" 0 "No"
label values visacryn _Sj38mQzcAp

label variable visacrrnd "ETDRS right eye reason not done"
label define _Lz3Us8F6v2 999 "Technical problems" 555 "Physical problems" 888 "Refused*" 666 "Cognitive problems" 777 "Physical and cognitive"
label values visacrrnd _Lz3Us8F6v2

label variable visacl1 "ETDRS Left eye Row 1"
label define _JaKDX2cYKq 5 "5" 0 "0" 4 "4" 1 "1" 3 "3" 2 "2"
label values visacl1 _JaKDX2cYKq

label variable visacl2 "ETDRS Left eye Row 2"
label define _bTKCvc33GD 5 "5" 0 "0" 4 "4" 3 "3" 1 "1" 2 "2"
label values visacl2 _bTKCvc33GD

label variable visacl3 "ETDRS Left eye Row 3"
label define _tCTzgkZGtJ 5 "5" 0 "0" 4 "4" 3 "3" 1 "1" 2 "2"
label values visacl3 _tCTzgkZGtJ

label variable visacl4 "ETDRS Left eye Row 4"
label define _qrRgdXWZQz 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacl4 _qrRgdXWZQz

label variable visacl5 "ETDRS Left eye Row 5"
label define _OjNAsaXGPI 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacl5 _OjNAsaXGPI

label variable visacl6 "ETDRS Left eye Row 6"
label define _eeknWNjEmv 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacl6 _eeknWNjEmv

label variable visacl7 "ETDRS Left eye Row 7"
label define _WnmGz7JoYh 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacl7 _WnmGz7JoYh

label variable visacl8 "ETDRS Left eye Row 8"
label define _NmIPxa1AAl 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacl8 _NmIPxa1AAl

label variable visacl9 "ETDRS Left eye Row 9"
label define _dyf6vhMYVi 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacl9 _dyf6vhMYVi

label variable visacl10 "ETDRS Left eye Row 10"
label define _MGgIJcLM25 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacl10 _MGgIJcLM25

label variable visacl11 "ETDRS Left eye Row 11"
label define _IH6pmVa6EU 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacl11 _IH6pmVa6EU

label variable visacl12 "ETDRS Left eye Row 12"
label define _YTbdRpVjb3 0 "0" 4 "4" 2 "2" 5 "5" 3 "3" 1 "1"
label values visacl12 _YTbdRpVjb3

label variable visacl13 "ETDRS Left eye Row 13"
label define _LjZPl2Rtpu 0 "0" 1 "1" 3 "3" 2 "2" 4 "4" 5 "5"
label values visacl13 _LjZPl2Rtpu

label variable visacl14 "ETDRS Left eye Row 14"
label define _Z5ys5qEXf6 0 "0" 1 "1" 4 "4" 3 "3" 2 "2" 5 "5"
label values visacl14 _Z5ys5qEXf6

label variable visaclt "ETDRS Chart Total Left eye"

label variable visacldy "Was distance ETDRS visual acuity checked in the left eye"
label define _FKtxKaEbsk 1 "Yes" 0 "No"
label values visacldy _FKtxKaEbsk

label variable visacldn "ETDRS left eye reason not done"
label define _CgJlNgfrGl 999 "Technical problems" 555 "Physical problems" 888 "Refused*" 666 "Cognitive problems" 777 "Physical and cognitive"
label values visacldn _CgJlNgfrGl

label variable visacar1 "AR Right eye Row 1"
label define _vvdZONjGss 5 "5" 0 "0" 4 "4" 3 "3" 1 "1" 2 "2"
label values visacar1 _vvdZONjGss

label variable visacar2 "AR Right eye Row 2"
label define _uAq76gwyaN 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacar2 _uAq76gwyaN

label variable visacar3 "AR Right eye Row 3"
label define _KpCktntB15 5 "5" 4 "4" 3 "3" 0 "0" 2 "2" 1 "1"
label values visacar3 _KpCktntB15

label variable visacar4 "AR Right eye Row 4"
label define _DYthWI72n6 5 "5" 4 "4" 3 "3" 0 "0" 2 "2" 1 "1"
label values visacar4 _DYthWI72n6

label variable visacar5 "AR Right eye Row 5"
label define _QM7vbMcS7Z 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacar5 _QM7vbMcS7Z

label variable visacar6 "AR Right eye Row 6"
label define _fYnFu6SK1X 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacar6 _fYnFu6SK1X

label variable visacar7 "AR Right eye Row 7"
label define _DxaOHkuzqQ 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacar7 _DxaOHkuzqQ

label variable visacar8 "AR Right eye Row 8"
label define _eNS6786UZK 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacar8 _eNS6786UZK

label variable visacart "AR Chart Total Right eye"

label variable visacardy "Was distance AR visual acuity checked in the right eye"
label define _nDIZNoY0p5 1 "Yes" 0 "No"
label values visacardy _nDIZNoY0p5

label variable visacardn "AR right eye reason not done"
label define _FbeDjp4MYo 999 "Technical problems" 555 "Physical problems" 888 "Refused*" 777 "Physical and cognitive" 666 "Cognitive problems"
label values visacardn _FbeDjp4MYo

label variable visacal1 "AR Left eye Row 1"
label define _GEgRJvNAD6 5 "5" 0 "0" 4 "4" 2 "2" 3 "3" 1 "1"
label values visacal1 _GEgRJvNAD6

label variable visacal2 "AR Left eye Row 2"
label define _wc4La6zJ9A 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacal2 _wc4La6zJ9A

label variable visacal3 "AR Left eye Row 3"
label define _R2IffqQSjI 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacal3 _R2IffqQSjI

label variable visacal4 "AR Left eye Row 4"
label define _yKr4IMVRLo 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacal4 _yKr4IMVRLo

label variable visacal5 "AR Left eye Row 5"
label define _mEVkYGOs0S 5 "5" 4 "4" 0 "0" 3 "3" 2 "2" 1 "1"
label values visacal5 _mEVkYGOs0S

label variable visacal6 "AR Left eye Row 6"
label define _zKoJHzy8OB 5 "5" 0 "0" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacal6 _zKoJHzy8OB

label variable visacal7 "AR Left eye Row 7"
label define _nqFt3XwSkn 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacal7 _nqFt3XwSkn

label variable visacal8 "AR Left eye Row 8"
label define _ujp5b6Z2qE 0 "0" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1"
label values visacal8 _ujp5b6Z2qE

label variable visacalt "AR Chart Total Left eye"

label variable visacaldy "Was distance AR visual acuity checked in the left eye"
label define _Ar4NndOfdv 1 "Yes" 0 "No"
label values visacaldy _Ar4NndOfdv

label variable visacaldn "AR left eye reason not done"
label define _MPD7Z74uxy 999 "Technical problems" 555 "Physical problems" 888 "Refused*" 777 "Physical and cognitive" 666 "Cognitive problems"
label values visacaldn _MPD7Z74uxy

label variable visaccs1 "CS Right eye Row 1"
label define _bfrRwuNTb1 6 "6" 5 "5" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4"
label values visaccs1 _bfrRwuNTb1

label variable visaccs2 "CS Right eye Row 2"
label define _Hs0TV4R517 6 "6" 5 "5" 0 "0" 1 "1" 2 "2" 3 "3" 4 "4"
label values visaccs2 _Hs0TV4R517

label variable visaccs3 "CS Right eye Row 3"
label define _QDlJtvdotz 6 "6" 5 "5" 3 "3" 4 "4" 0 "0" 1 "1" 2 "2"
label values visaccs3 _QDlJtvdotz

label variable visaccs4 "CS Right eye Row 4"
label define _Au6RMABLAj 6 "6" 5 "5" 3 "3" 4 "4" 0 "0" 1 "1" 2 "2"
label values visaccs4 _Au6RMABLAj

label variable visaccs5 "CS Right eye Row 5"
label define _EJNINHK5NI 6 "6" 5 "5" 0 "0" 3 "3" 4 "4" 2 "2" 1 "1"
label values visaccs5 _EJNINHK5NI

label variable visaccs6 "CS Right eye Row 6"
label define _FDg0Ni4WwZ 6 "6" 0 "0" 5 "5" 2 "2" 4 "4" 3 "3" 1 "1"
label values visaccs6 _FDg0Ni4WwZ

label variable visaccs7 "CS Right eye Row 7"
label define _vBpEMIGsfs 0 "0" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 1 "1"
label values visaccs7 _vBpEMIGsfs

label variable visaccs8 "CS Right eye Row 8"
label define _njINyBYOwX 0 "0" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6"
label values visaccs8 _njINyBYOwX

label variable visaccst "CS Chart Total"

label variable visaccsdy "Was contrast sensitivity checked"
label define _rT7Yy7B7NG 1 "Yes" 0 "No"
label values visaccsdy _rT7Yy7B7NG

label variable visaccsdn "Contrast sensitivity reason not done"
label define _Gbs3ReQ5qd 999 "Technical problems" 888 "Refused*" 555 "Physical problems" 666 "Cognitive problems" 777 "Physical and cognitive"
label values visaccsdn _Gbs3ReQ5qd

label variable auto_id_visacu "Unique Teleform Number"

label variable testerid_visacu "Tester ID"

