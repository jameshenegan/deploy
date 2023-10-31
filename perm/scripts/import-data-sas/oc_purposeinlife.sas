%let path_to_file = '../data-csv/oc_purposeinlife.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE q1_
		5 = 'Strongly agree'
		4 = 'Agree'
		3 = 'Neutral'
		1 = 'Strongly disagree'
		2 = 'Disagree'
	;

	VALUE q2_
		4 = 'Disagree'
		3 = 'Neutral'
		5 = 'Strongly disagree'
		2 = 'Agree'
		1 = 'Strongly agree'
	;

	VALUE q3_
		4 = 'Disagree'
		5 = 'Strongly disagree'
		3 = 'Neutral'
		2 = 'Agree'
		1 = 'Strongly agree'
	;

	VALUE q4_
		4 = 'Agree'
		5 = 'Strongly agree'
		3 = 'Neutral'
		2 = 'Disagree'
		1 = 'Strongly disagree'
	;

	VALUE q5_
		4 = 'Disagree'
		5 = 'Strongly disagree'
		3 = 'Neutral'
		2 = 'Agree'
		1 = 'Strongly agree'
	;

	VALUE q6_
		4 = 'Disagree'
		5 = 'Strongly disagree'
		3 = 'Neutral'
		2 = 'Agree'
		1 = 'Strongly agree'
	;

	VALUE q7_
		4 = 'Agree'
		5 = 'Strongly agree'
		3 = 'Neutral'
		2 = 'Disagree'
		1 = 'Strongly disagree'
	;

	VALUE q8_
		4 = 'Agree'
		5 = 'Strongly agree'
		3 = 'Neutral'
		2 = 'Disagree'
		1 = 'Strongly disagree'
	;

	VALUE q9_
		4 = 'Agree'
		5 = 'Strongly agree'
		3 = 'Neutral'
		2 = 'Disagree'
		1 = 'Strongly disagree'
	;

	VALUE q10_
		4 = 'Disagree'
		5 = 'Strongly disagree'
		3 = 'Neutral'
		2 = 'Agree'
		1 = 'Strongly agree'
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

	INFORMAT crf_version_purinlif $7.;
	FORMAT crf_version_purinlif $7.;

	INFORMAT q1 BEST32.;
	FORMAT q1 BEST12.;

	INFORMAT q2 BEST32.;
	FORMAT q2 BEST12.;

	INFORMAT q3 BEST32.;
	FORMAT q3 BEST12.;

	INFORMAT q4 BEST32.;
	FORMAT q4 BEST12.;

	INFORMAT q5 BEST32.;
	FORMAT q5 BEST12.;

	INFORMAT q6 BEST32.;
	FORMAT q6 BEST12.;

	INFORMAT q7 BEST32.;
	FORMAT q7 BEST12.;

	INFORMAT q8 BEST32.;
	FORMAT q8 BEST12.;

	INFORMAT q9 BEST32.;
	FORMAT q9 BEST12.;

	INFORMAT q10 BEST32.;
	FORMAT q10 BEST12.;

	INPUT
		id_addi
		visit
		crf_version_purinlif
		q1
		q2
		q3
		q4
		q5
		q6
		q7
		q8
		q9
		q10
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_purinlif = "CRF Version"
		q1 = "I feel good when I think of what I've done in the past and what I hope to do in the future"
		q2 = "I live life one day at a time and don't really think about the future"
		q3 = "I tend to focus on the present because the future nearly always brings me problems"
		q4 = "I have a sense of direction and purpose in life"
		q5 = "My daily activities often seem trivial and unimportant to me"
		q6 = "I used to set goals for myself but that now seems like a waste of time"
		q7 = "I enjoy making plans for the future and working them to a reality"
		q8 = "I am an active person in carrying out the plans I set for myself"
		q9 = "Some people wander aimlessly through life but I am not one of them"
		q10 = "I sometimes feel as if I've done all there is to do in life"
	;
	FORMAT
		q1 q1_.
		q2 q2_.
		q3 q3_.
		q4 q4_.
		q5 q5_.
		q6 q6_.
		q7 q7_.
		q8 q8_.
		q9 q9_.
		q10 q10_.
	;
RUN;


        DATA oc_purposeinlife;
            SET WORK.IMPORT;
        RUN;
        