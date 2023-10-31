%let path_to_file = '../data-csv/oc_treadmill.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE trm01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE trm01a_
		1 = 'Contraindication'
		999 = 'Technical problems'
		888 = 'Refused'
		555 = 'Physical problems'
		0 = 'Other'
		777 = 'Physical and cognitive'
		666 = 'Cognitive'
	;

	VALUE trm01b_
		0 = 'Other medical'
		5 = 'Factors that would preclude subject from being able to walk on a treadmill (unsteady gait difficulty with ambulation etc)'
		1 = 'Aortic stenosis of at least moderate severity'
		4 = 'Uncontrolled hypertension (SBP >180 or DBP >110)'
		10 = 'Poor health status'
		2 = 'Symptoms suspicious for unstable angina'
		9 = 'Resting heart rate >120'
		6 = 'High grade AV block on resting EKG (Mobitz Type II 2nd or 3rd degree heart block)'
		8 = 'LBBB with Hx of previous MI or coronary revascularization'
		3 = 'Recent (<6 months) myocardial infaction or revascularization'
		7 = 'Ate full meal within the past 2 hours'
	;

	VALUE trm02_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE trm02a_
		555 = 'Physical problems'
		999 = 'Technical problems'
		888 = 'Refused mouthpiece (or could not tolerate)'
		1 = 'Other (please specify)'
		777 = 'Physical and cognitive'
		666 = 'Cognitive'
	;

	VALUE trm03_
		6 = 'Fatigue'
		3 = 'Dyspena'
		0 = 'Other'
		2 = 'Musculoskeletal pain'
		1 = 'Tester request'
		11 = 'Mouthpiece discomfort'
		5 = 'Ischemia'
		9 = 'Arrhythmia'
		8 = 'Dizziness'
		10 = 'Claudication'
		4 = 'Chest pain'
		7 = 'Nausea'
	;

	VALUE trm04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE trmf1_
		1 = 'Yes'
		8 = 'Not Eligible'
		4 = 'Refused'
		5 = 'Unable'
		6 = 'Technical'
		7 = 'No Tester'
		9 = 'Not Scheduled'
	;

	VALUE trmf2_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE trmf3_
		3 = 'Max Treadmill speed 2.5 mph'
		4 = 'Max Treadmill speed 3.0 mph'
		2 = 'Max Treadmill speed 2.0 mph'
		1 = 'Max Treadmill speed 1.5 mph'
	;

	VALUE trmf7_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE trmf7a_
		3 = 'Dyspena'
		6 = 'Fatigue'
		0 = 'Other'
		2 = 'Musculoskeletal pain'
		1 = 'Tester request'
		10 = 'Claudication'
		4 = 'Chest pain'
		9 = 'Arrhythmia'
		11 = 'Mouthpiece discomfort'
		5 = 'Ischemia'
		7 = 'Nausea'
		8 = 'Dizziness'
	;

	VALUE trmss1_
		1 = 'Yes'
		9 = 'Not Scheduled'
		5 = 'Unable'
		8 = 'Not Eligible'
		4 = 'Refused'
		6 = 'Technical'
		7 = 'No Tester'
	;

	VALUE trmss2_
		1 = 'Yes'
		0 = 'No'
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

	INFORMAT crf_version_tre $8.;
	FORMAT crf_version_tre $8.;

	INFORMAT trm01 BEST32.;
	FORMAT trm01 BEST12.;

	INFORMAT trm01a BEST32.;
	FORMAT trm01a BEST12.;

	INFORMAT trm01b BEST32.;
	FORMAT trm01b BEST12.;

	INFORMAT trm02 BEST32.;
	FORMAT trm02 BEST12.;

	INFORMAT trm02a BEST32.;
	FORMAT trm02a BEST12.;

	INFORMAT trm03 BEST32.;
	FORMAT trm03 BEST12.;

	INFORMAT trm04 BEST32.;
	FORMAT trm04 BEST12.;

	INFORMAT trmborg BEST32.;
	FORMAT trmborg BEST12.;

	INFORMAT trmf1 BEST32.;
	FORMAT trmf1 BEST12.;

	INFORMAT trmf2 BEST32.;
	FORMAT trmf2 BEST12.;

	INFORMAT trmf3 BEST32.;
	FORMAT trmf3 BEST12.;

	INFORMAT tssborg5 BEST32.;
	FORMAT tssborg5 BEST12.;

	INFORMAT tssborg10 BEST32.;
	FORMAT tssborg10 BEST12.;

	INFORMAT tssborg15 BEST32.;
	FORMAT tssborg15 BEST12.;

	INFORMAT trmf7 BEST32.;
	FORMAT trmf7 BEST12.;

	INFORMAT trmf7a BEST32.;
	FORMAT trmf7a BEST12.;

	INFORMAT trmss1 BEST32.;
	FORMAT trmss1 BEST12.;

	INFORMAT trmss2 BEST32.;
	FORMAT trmss2 BEST12.;

	INFORMAT tssborg BEST32.;
	FORMAT tssborg BEST12.;

	INFORMAT auto_id_tre BEST32.;
	FORMAT auto_id_tre BEST12.;

	INFORMAT testerid_tre BEST32.;
	FORMAT testerid_tre BEST12.;

	INPUT
		id_addi
		visit
		crf_version_tre
		trm01
		trm01a
		trm01b
		trm02
		trm02a
		trm03
		trm04
		trmborg
		trmf1
		trmf2
		trmf3
		tssborg5
		tssborg10
		tssborg15
		trmf7
		trmf7a
		trmss1
		trmss2
		tssborg
		auto_id_tre
		testerid_tre
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_tre = "CRF Version"
		trm01 = "Treadmill done"
		trm01a = "Treadmill reason not done"
		trm01b = "Treadmill contraindications"
		trm02 = "Oxygen consumption measured"
		trm02a = "Oxygen consumption Reason not done"
		trm03 = "Reason exercise was stopped"
		trm04 = "Participant complained of chest pain"
		trmborg = "Borg score"
		trmf1 = "Fatigability performed"
		trmf2 = "Was oxygen consumption measured during SS"
		trmf3 = "Which Fatigability speed setting was used"
		tssborg5 = "Borg score Fatigability 5 min"
		tssborg10 = "Borg score Fatigability 10 min"
		tssborg15 = "Borg score Fatigability 15 min"
		trmf7 = "Did participant complete Fatigability test"
		trmf7a = "Reason exercise was stopped"
		trmss1 = "Steady Stage performed"
		trmss2 = "Was oxygen consumption measured during SS"
		tssborg = "Borg score for Steady Stage"
		auto_id_tre = "Unique Teleform Number"
		testerid_tre = "Tester ID"
	;
	FORMAT
		trm01 trm01_.
		trm01a trm01a_.
		trm01b trm01b_.
		trm02 trm02_.
		trm02a trm02a_.
		trm03 trm03_.
		trm04 trm04_.
		trmf1 trmf1_.
		trmf2 trmf2_.
		trmf3 trmf3_.
		trmf7 trmf7_.
		trmf7a trmf7a_.
		trmss1 trmss1_.
		trmss2 trmss2_.
	;
RUN;


        DATA oc_treadmill;
            SET WORK.IMPORT;
        RUN;
        