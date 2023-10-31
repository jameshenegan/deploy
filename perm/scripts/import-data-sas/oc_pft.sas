%let path_to_file = '../data-csv/oc_pft.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pft01a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01g_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01h_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01i_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft01j_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pft03_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE pft03a_
		0 = 'Other (please specify)'
		9 = 'Technical problems'
		8 = 'Refused to perform the test'
		5 = 'Physical problems'
		6 = 'Cognitive'
		1 = 'Contraindication'
		7 = 'Physical and Cognitive'
	;

	VALUE pft04_
		3 = 'Yes (3)'
		2 = 'Two good trials were achieved'
		0 = 'None good trials were achieved'
		1 = 'Only one good trial was achieved'
	;

RUN;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT crf_version_pft $8.;
	FORMAT crf_version_pft $8.;

	INFORMAT pft01a BEST32.;
	FORMAT pft01a BEST12.;

	INFORMAT pft01b BEST32.;
	FORMAT pft01b BEST12.;

	INFORMAT pft01c BEST32.;
	FORMAT pft01c BEST12.;

	INFORMAT pft01d BEST32.;
	FORMAT pft01d BEST12.;

	INFORMAT pft01e BEST32.;
	FORMAT pft01e BEST12.;

	INFORMAT pft01f BEST32.;
	FORMAT pft01f BEST12.;

	INFORMAT pft01g BEST32.;
	FORMAT pft01g BEST12.;

	INFORMAT pft01h BEST32.;
	FORMAT pft01h BEST12.;

	INFORMAT pft01i BEST32.;
	FORMAT pft01i BEST12.;

	INFORMAT pft01j BEST32.;
	FORMAT pft01j BEST12.;

	INFORMAT pft02 BEST32.;
	FORMAT pft02 BEST12.;

	INFORMAT pft02a BEST32.;
	FORMAT pft02a BEST12.;

	INFORMAT pft03 BEST32.;
	FORMAT pft03 BEST12.;

	INFORMAT pft03a BEST32.;
	FORMAT pft03a BEST12.;

	INFORMAT pft04 BEST32.;
	FORMAT pft04 BEST12.;

	INFORMAT auto_id_pft BEST32.;
	FORMAT auto_id_pft BEST12.;

	INFORMAT pft01 $1.;
	FORMAT pft01 $1.;

	INFORMAT pft01_pft01a $6.;
	FORMAT pft01_pft01a $6.;

	INFORMAT pft01_pft01b $1.;
	FORMAT pft01_pft01b $1.;

	INFORMAT pft01_pft01c $1.;
	FORMAT pft01_pft01c $1.;

	INFORMAT pft01_pft01d $6.;
	FORMAT pft01_pft01d $6.;

	INFORMAT pft01_pft01e $1.;
	FORMAT pft01_pft01e $1.;

	INFORMAT pft01_pft01f $6.;
	FORMAT pft01_pft01f $6.;

	INFORMAT pft01_pft01g $1.;
	FORMAT pft01_pft01g $1.;

	INFORMAT pft01_pft01h $1.;
	FORMAT pft01_pft01h $1.;

	INFORMAT pft01_pft01i $6.;
	FORMAT pft01_pft01i $6.;

	INFORMAT pft01_pft01j $6.;
	FORMAT pft01_pft01j $6.;

	INFORMAT testerid_pft BEST32.;
	FORMAT testerid_pft BEST12.;

	INPUT
		id_addi
		visit
		crf_version_pft
		pft01a
		pft01b
		pft01c
		pft01d
		pft01e
		pft01f
		pft01g
		pft01h
		pft01i
		pft01j
		pft02
		pft02a
		pft03
		pft03a
		pft04
		auto_id_pft
		pft01
		pft01_pft01a
		pft01_pft01b
		pft01_pft01c
		pft01_pft01d
		pft01_pft01e
		pft01_pft01f
		pft01_pft01g
		pft01_pft01h
		pft01_pft01i
		pft01_pft01j
		testerid_pft
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_pft = "CRF Version"
		pft01a = "Myocardial infarcaion"
		pft01b = "Unstable Angina"
		pft01c = "Surgery abdomen thorax past 3 months"
		pft01d = "surgery eye past 3 months"
		pft01e = "Syncope with forced exhalation"
		pft01f = "Recent upper respiratory infection"
		pft01g = "Poulmonary embolus within past 3 months"
		pft01h = "Thoratic abdominal or cerebral aneurysm"
		pft01i = "Uncontrolled hypertension"
		pft01j = "Acute disease processes e g nausea vomiting etc"
		pft02 = "Is participant on a bronchodilator"
		pft02a = "How long ago was it taken"
		pft03 = "Was PFT performed"
		pft03a = "Reason test not performed or unsatisfactory"
		pft04 = "All 3 good trials were achieved"
		auto_id_pft = "Unique Teleform Number"
		pft01 = "Contraindications"
		pft01_pft01a = "Contraindications : Myocardial infarction within past 3 months (Checkbox Indicator)"
		pft01_pft01b = "Contraindications : Unstable angina (Checkbox Indicator)"
		pft01_pft01c = "Contraindications : Surgery (abdomen thorax) within past 3 months (Checkbox Indicator)"
		pft01_pft01d = "Contraindications : Surgery (eye) within past 3 months (Checkbox Indicator)"
		pft01_pft01e = "Contraindications : Syncope with forced exhalation (Checkbox Indicator)"
		pft01_pft01f = "Contraindications : Recent URI (upper respiratory infection) (Checkbox Indicator)"
		pft01_pft01g = "Contraindications : Pulmonary Embolus within past 3 mo (Checkbox Indicator)"
		pft01_pft01h = "Contraindications : Thoracic Abdominal or Cerebral aneurysm (Checkbox Indicator)"
		pft01_pft01i = "Contraindications : Uncontrolled Hypertension (Checkbox Indicator)"
		pft01_pft01j = "Contraindications : Acute disease process that might interfere with test performance (Checkbox Indicator)"
		testerid_pft = "Tester ID"
	;
	FORMAT
		pft01a pft01a_.
		pft01b pft01b_.
		pft01c pft01c_.
		pft01d pft01d_.
		pft01e pft01e_.
		pft01f pft01f_.
		pft01g pft01g_.
		pft01h pft01h_.
		pft01i pft01i_.
		pft01j pft01j_.
		pft02 pft02_.
		pft03 pft03_.
		pft03a pft03a_.
		pft04 pft04_.
	;
RUN;


        DATA oc_pft;
            SET WORK.IMPORT;
        RUN;
        