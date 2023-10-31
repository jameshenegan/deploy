%let path_to_file = '../data-csv/oc_ogtt.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ogtt01_ogt_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt02a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ogtt02b_
		7 = 'Refused'
		2 = 'Venous access difficult'
		1 = 'Exclusion criteria'
		4 = ' Other (please specify)'
		3 = 'Could not tolerate test beverage'
	;

	VALUE ogtt02c_
		2 = 'Taken any steroids in past 3 mo'
		5 = 'Uses insulin'
		3 = 'Did not fast'
		1 = 'Exercised this morning'
		4 = 'Has fever (or infection within past 3 days)'
	;

	VALUE ogtt04_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ogtt05_
		1 = 'Complete'
		0 = 'Short'
	;

	VALUE ogtt05b_
		2 = 'Venous access difficult'
		4 = 'Other'
		9 = 'Technical problems'
		7 = 'Refused'
		3 = 'Vasovagal reaction'
	;

	VALUE ogtt08_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ogtt08a1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b1_
		1 = 'Within past one wk'
		3 = 'Within past 1 mo'
		2 = 'Within past two wk'
		8 = "Don't know"
		4 = 'Greater than 1 mo'
		7 = 'Refused'
	;

	VALUE ogtt08c1_
		3 = 'Greater than 2 weeks'
		2 = 'Less than 2 weeks'
		8 = "Don't know"
		1 = 'One dose'
		7 = 'Refused'
	;

	VALUE ogtt08a2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b2_
		4 = 'Greater than 1 mo'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		1 = 'Within past one wk'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c2_
		1 = 'One dose'
		3 = 'Greater than 2 weeks'
		2 = 'Less than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b3_
		1 = 'Within past one wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		2 = 'Within past two wk'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c3_
		3 = 'Greater than 2 weeks'
		1 = 'One dose'
		2 = 'Less than 2 weeks'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08a4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b4_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		4 = 'Greater than 1 mo'
		3 = 'Within past 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c4_
		3 = 'Greater than 2 weeks'
		2 = 'Less than 2 weeks'
		8 = "Don't know"
		1 = 'One dose'
		7 = 'Refused'
	;

	VALUE ogtt08a5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ogtt08b5_
		1 = 'Within past one wk'
		2 = 'Within past two wk'
		3 = 'Within past 1 mo'
		4 = 'Greater than 1 mo'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ogtt08c5_
		3 = 'Greater than 2 weeks'
		2 = 'Less than 2 weeks'
		1 = 'One dose'
		7 = 'Refused'
		8 = "Don't know"
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

	INFORMAT crf_version_ogt $8.;
	FORMAT crf_version_ogt $8.;

	INFORMAT ogtt01_ogt BEST32.;
	FORMAT ogtt01_ogt BEST12.;

	INFORMAT ogtt02a BEST32.;
	FORMAT ogtt02a BEST12.;

	INFORMAT ogtt02b BEST32.;
	FORMAT ogtt02b BEST12.;

	INFORMAT ogtt02c BEST32.;
	FORMAT ogtt02c BEST12.;

	INFORMAT ogtt04 BEST32.;
	FORMAT ogtt04 BEST12.;

	INFORMAT ogtt05 BEST32.;
	FORMAT ogtt05 BEST12.;

	INFORMAT ogtt05a $1.;
	FORMAT ogtt05a $1.;

	INFORMAT ogtt05b BEST32.;
	FORMAT ogtt05b BEST12.;

	INFORMAT ogtt06 BEST32.;
	FORMAT ogtt06 BEST12.;

	INFORMAT ogtt07 BEST32.;
	FORMAT ogtt07 BEST12.;

	INFORMAT ogtt08 BEST32.;
	FORMAT ogtt08 BEST12.;

	INFORMAT ogtt08a1 BEST32.;
	FORMAT ogtt08a1 BEST12.;

	INFORMAT ogtt08b1 BEST32.;
	FORMAT ogtt08b1 BEST12.;

	INFORMAT ogtt08c1 BEST32.;
	FORMAT ogtt08c1 BEST12.;

	INFORMAT ogtt08a2 BEST32.;
	FORMAT ogtt08a2 BEST12.;

	INFORMAT ogtt08b2 BEST32.;
	FORMAT ogtt08b2 BEST12.;

	INFORMAT ogtt08c2 BEST32.;
	FORMAT ogtt08c2 BEST12.;

	INFORMAT ogtt08a3 BEST32.;
	FORMAT ogtt08a3 BEST12.;

	INFORMAT ogtt08b3 BEST32.;
	FORMAT ogtt08b3 BEST12.;

	INFORMAT ogtt08c3 BEST32.;
	FORMAT ogtt08c3 BEST12.;

	INFORMAT ogtt08a4 BEST32.;
	FORMAT ogtt08a4 BEST12.;

	INFORMAT ogtt08b4 BEST32.;
	FORMAT ogtt08b4 BEST12.;

	INFORMAT ogtt08c4 BEST32.;
	FORMAT ogtt08c4 BEST12.;

	INFORMAT ogtt08a5 BEST32.;
	FORMAT ogtt08a5 BEST12.;

	INFORMAT ogtt08b5 BEST32.;
	FORMAT ogtt08b5 BEST12.;

	INFORMAT ogtt08c5 BEST32.;
	FORMAT ogtt08c5 BEST12.;

	INFORMAT auto_id_ogt BEST32.;
	FORMAT auto_id_ogt BEST12.;

	INFORMAT ogtt05a_0 BEST32.;
	FORMAT ogtt05a_0 BEST12.;

	INFORMAT ogtt05a_100 BEST32.;
	FORMAT ogtt05a_100 BEST12.;

	INFORMAT ogtt05a_120 BEST32.;
	FORMAT ogtt05a_120 BEST12.;

	INFORMAT ogtt05a_20 BEST32.;
	FORMAT ogtt05a_20 BEST12.;

	INFORMAT ogtt05a_40 BEST32.;
	FORMAT ogtt05a_40 BEST12.;

	INFORMAT ogtt05a_60 BEST32.;
	FORMAT ogtt05a_60 BEST12.;

	INFORMAT ogtt05a_80 BEST32.;
	FORMAT ogtt05a_80 BEST12.;

	INFORMAT testerid_ogt BEST32.;
	FORMAT testerid_ogt BEST12.;

	INPUT
		id_addi
		visit
		crf_version_ogt
		ogtt01_ogt
		ogtt02a
		ogtt02b
		ogtt02c
		ogtt04
		ogtt05
		ogtt05a
		ogtt05b
		ogtt06
		ogtt07
		ogtt08
		ogtt08a1
		ogtt08b1
		ogtt08c1
		ogtt08a2
		ogtt08b2
		ogtt08c2
		ogtt08a3
		ogtt08b3
		ogtt08c3
		ogtt08a4
		ogtt08b4
		ogtt08c4
		ogtt08a5
		ogtt08b5
		ogtt08c5
		auto_id_ogt
		ogtt05a_0
		ogtt05a_100
		ogtt05a_120
		ogtt05a_20
		ogtt05a_40
		ogtt05a_60
		ogtt05a_80
		testerid_ogt
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_ogt = "CRF Version"
		ogtt01_ogt = "Do you take insulin to controldiabetes"
		ogtt02a = "Was glucose tolerance test done"
		ogtt02b = "reason not done"
		ogtt02c = "Exclusion criteria"
		ogtt04 = "Was entire glucose drink consumed"
		ogtt05 = "Which protocol was performed"
		ogtt05a = "Samples collected"
		ogtt05b = "Reason all samples not colleted"
		ogtt06 = "Body temperature before OGTT"
		ogtt07 = "Body temperature after OGTT"
		ogtt08 = "Any steroid use the past 3 months"
		ogtt08a1 = "Oral steroid"
		ogtt08b1 = "Oral steroid recency"
		ogtt08c1 = "Duration of use oral steroid"
		ogtt08a2 = "Injectable steroid"
		ogtt08b2 = "Injectable steroid recency"
		ogtt08c2 = "Duration of use Injectable steroid"
		ogtt08a3 = "Topical steroid"
		ogtt08b3 = "Topical steroid recency"
		ogtt08c3 = "Duration of use Topical steroid"
		ogtt08a4 = "Nasal steroid"
		ogtt08b4 = "Nasal steroid recency"
		ogtt08c4 = "Duration of use Nasal steroid"
		ogtt08a5 = "Inhaled steroid"
		ogtt08b5 = "Inhaled steroid recency"
		ogtt08c5 = "Duration of use Inhaled steroid"
		auto_id_ogt = "Unique Teleform Number"
		ogtt05a_0 = "Samples collected : 0 (Checkbox Indicator)"
		ogtt05a_100 = "Samples collected : 100 (Checkbox Indicator)"
		ogtt05a_120 = "Samples collected : 120 (Checkbox Indicator)"
		ogtt05a_20 = "Samples collected : 20 (Checkbox Indicator)"
		ogtt05a_40 = "Samples collected : 40 (Checkbox Indicator)"
		ogtt05a_60 = "Samples collected : 60 (Checkbox Indicator)"
		ogtt05a_80 = "Samples collected : 80 (Checkbox Indicator)"
		testerid_ogt = "Tester ID"
	;
	FORMAT
		ogtt01_ogt ogtt01_ogt_.
		ogtt02a ogtt02a_.
		ogtt02b ogtt02b_.
		ogtt02c ogtt02c_.
		ogtt04 ogtt04_.
		ogtt05 ogtt05_.
		ogtt05b ogtt05b_.
		ogtt08 ogtt08_.
		ogtt08a1 ogtt08a1_.
		ogtt08b1 ogtt08b1_.
		ogtt08c1 ogtt08c1_.
		ogtt08a2 ogtt08a2_.
		ogtt08b2 ogtt08b2_.
		ogtt08c2 ogtt08c2_.
		ogtt08a3 ogtt08a3_.
		ogtt08b3 ogtt08b3_.
		ogtt08c3 ogtt08c3_.
		ogtt08a4 ogtt08a4_.
		ogtt08b4 ogtt08b4_.
		ogtt08c4 ogtt08c4_.
		ogtt08a5 ogtt08a5_.
		ogtt08b5 ogtt08b5_.
		ogtt08c5 ogtt08c5_.
	;
RUN;


        DATA oc_ogtt;
            SET WORK.IMPORT;
        RUN;
        