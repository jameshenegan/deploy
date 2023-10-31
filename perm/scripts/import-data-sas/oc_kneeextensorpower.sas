%let path_to_file = '../data-csv/oc_kneeextensorpower.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE kep01_
		1 = 'Kin-Com preceded power testing'
		3 = 'Not scheduled for current visit'
		2 = 'Kin-Com to follow power testing'
	;

	VALUE kep02_
		1 = 'Yes no discomfort test same leg'
		0 = 'No excluded do not test'
		3 = 'Yes some discomfort test other leg unless contraindications'
		2 = 'No technical issues check knee strength eligibility'
	;

	VALUE kep02a_
		0 = 'Not eligible'
		1 = 'Eligible'
	;

	VALUE kep02b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE kep03_
		1 = 'Right'
		2 = 'First time'
		3 = 'Left'
		8 = "Don't know"
	;

	VALUE kep03a_
		1 = 'Right'
		3 = 'Neither (test not performed)'
		2 = 'Left'
	;

	VALUE kep03b_
		999 = 'technical problems'
		1 = 'Not elegible'
		555 = 'physical problems'
		888 = 'refused'
		666 = 'cognitive problems'
		777 = 'physical and cognitive'
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

	INFORMAT crf_version_kneextpow $7.;
	FORMAT crf_version_kneextpow $7.;

	INFORMAT tricom01a_kneextpow $1.;
	FORMAT tricom01a_kneextpow $1.;

	INFORMAT kep01 BEST32.;
	FORMAT kep01 BEST12.;

	INFORMAT kep02 BEST32.;
	FORMAT kep02 BEST12.;

	INFORMAT kep02a BEST32.;
	FORMAT kep02a BEST12.;

	INFORMAT kep02b BEST32.;
	FORMAT kep02b BEST12.;

	INFORMAT kep02c $1.;
	FORMAT kep02c $1.;

	INFORMAT kep03 BEST32.;
	FORMAT kep03 BEST12.;

	INFORMAT kep03a BEST32.;
	FORMAT kep03a BEST12.;

	INFORMAT kep03b BEST32.;
	FORMAT kep03b BEST12.;

	INFORMAT kep04 BEST32.;
	FORMAT kep04 BEST12.;

	INFORMAT kep05 BEST32.;
	FORMAT kep05 BEST12.;

	INFORMAT kep40t1 BEST32.;
	FORMAT kep40t1 BEST12.;

	INFORMAT kep40t2 BEST32.;
	FORMAT kep40t2 BEST12.;

	INFORMAT kep40t3 BEST32.;
	FORMAT kep40t3 BEST12.;

	INFORMAT kep40t4 BEST32.;
	FORMAT kep40t4 BEST12.;

	INFORMAT kep40t5 BEST32.;
	FORMAT kep40t5 BEST12.;

	INFORMAT kep50t1 BEST32.;
	FORMAT kep50t1 BEST12.;

	INFORMAT kep50t2 BEST32.;
	FORMAT kep50t2 BEST12.;

	INFORMAT kep50t3 BEST32.;
	FORMAT kep50t3 BEST12.;

	INFORMAT kep50t4 BEST32.;
	FORMAT kep50t4 BEST12.;

	INFORMAT kep50t5 BEST32.;
	FORMAT kep50t5 BEST12.;

	INFORMAT kep60t1 BEST32.;
	FORMAT kep60t1 BEST12.;

	INFORMAT kep60t2 BEST32.;
	FORMAT kep60t2 BEST12.;

	INFORMAT kep60t3 BEST32.;
	FORMAT kep60t3 BEST12.;

	INFORMAT kep60t4 BEST32.;
	FORMAT kep60t4 BEST12.;

	INFORMAT kep60t5 BEST32.;
	FORMAT kep60t5 BEST12.;

	INFORMAT kep70t1 BEST32.;
	FORMAT kep70t1 BEST12.;

	INFORMAT kep70t2 BEST32.;
	FORMAT kep70t2 BEST12.;

	INFORMAT kep70t3 BEST32.;
	FORMAT kep70t3 BEST12.;

	INFORMAT kep70t4 BEST32.;
	FORMAT kep70t4 BEST12.;

	INFORMAT kep70t5 BEST32.;
	FORMAT kep70t5 BEST12.;

	INFORMAT auto_id_kneextpow BEST32.;
	FORMAT auto_id_kneextpow BEST12.;

	INFORMAT testerid_kneextpow BEST32.;
	FORMAT testerid_kneextpow BEST12.;

	INPUT
		id_addi
		visit
		crf_version_kneextpow
		tricom01a_kneextpow
		kep01
		kep02
		kep02a
		kep02b
		kep02c
		kep03
		kep03a
		kep03b
		kep04
		kep05
		kep40t1
		kep40t2
		kep40t3
		kep40t4
		kep40t5
		kep50t1
		kep50t2
		kep50t3
		kep50t4
		kep50t5
		kep60t1
		kep60t2
		kep60t3
		kep60t4
		kep60t5
		kep70t1
		kep70t2
		kep70t3
		kep70t4
		kep70t5
		auto_id_kneextpow
		testerid_kneextpow
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_kneextpow = "CRF Version"
		tricom01a_kneextpow = "Able to stand unassisted"
		kep01 = "Time from Kin-Com testing"
		kep02 = "Did participant complete knee strength testing"
		kep02a = "Eligibility"
		kep02b = "Was range of motion 155 degrees or better"
		kep02c = "Record ROM below 155 degrees"
		kep03 = "Which leg was tested at most recent BLSA Kin-Com testing"
		kep03a = "Which leg is to be tested"
		kep03b = "Reason not tested"
		kep04 = "Predicted Initial Setting"
		kep05 = "1 RM"
		kep40t1 = "40% 1 RM Trial 1"
		kep40t2 = "40% 1 RM Trial 2"
		kep40t3 = "40% 1 RM Trial 3"
		kep40t4 = "40% 1 RM Trial 4"
		kep40t5 = "40% 1 RM Trial 5"
		kep50t1 = "50% 1 RM Trial 1"
		kep50t2 = "50% 1 RM Trial 2"
		kep50t3 = "50% 1 RM Trial 3"
		kep50t4 = "50% 1 RM Trial 4"
		kep50t5 = "50% 1 RM Trial 5"
		kep60t1 = "60% 1 RM Trial 1"
		kep60t2 = "60% 1 RM Trial 2"
		kep60t3 = "60% 1 RM Trial 3"
		kep60t4 = "60% 1 RM Trial 4"
		kep60t5 = "60% 1 RM Trial 5"
		kep70t1 = "70% 1 RM Trial 1"
		kep70t2 = "70% 1 RM Trial 2"
		kep70t3 = "70% 1 RM Trial 3"
		kep70t4 = "70% 1 RM Trial 4"
		kep70t5 = "70% 1 RM Trial 5"
		auto_id_kneextpow = "Unique Teleform Number"
		testerid_kneextpow = "Tester ID"
	;
	FORMAT
		kep01 kep01_.
		kep02 kep02_.
		kep02a kep02a_.
		kep02b kep02b_.
		kep03 kep03_.
		kep03a kep03a_.
		kep03b kep03b_.
	;
RUN;


        DATA oc_kneeextensorpower;
            SET WORK.IMPORT;
        RUN;
        