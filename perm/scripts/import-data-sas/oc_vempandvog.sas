%let path_to_file = '../data-csv/oc_vempandvog.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE vem0a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vem0b_
		1 = 'Right Ear'
		0 = ' Unable to discern'
		2 = 'Left Ear'
	;

	VALUE vem0cr_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vem0cl_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vem0dr_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vem0dl_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vog0r_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vog0l_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vem01a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vem2a_
		1 = 'True'
		0 = 'False'
	;

	VALUE vem2b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vog31a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vog31b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vog31c_
		1 = 'True'
		0 = 'False'
	;

	VALUE vog31d_
		1 = 'True'
		0 = 'False'
	;

	VALUE vem1lf2_
		7 = 'Not Scheduled'
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		5 = 'Refused but theoretically could do'
		2 = 'Physical Problems'
		1 = 'Not Eligible'
		3 = 'Mental Problems'
	;

	VALUE vem1rf2_
		7 = 'Not Scheduled'
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		5 = 'Refused but theoretically could do'
		2 = 'Physical Problems'
		1 = 'Not Eligible'
		3 = 'Mental Problems'
	;

	VALUE vem2re2_
		7 = 'Not Scheduled'
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		1 = 'Not Eligible'
		3 = 'Mental Problems'
	;

	VALUE vem2le2_
		7 = 'Not Scheduled'
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		1 = 'Not Eligible'
		3 = 'Mental Problems'
	;

	VALUE vog32auk2_
		7 = 'Not Scheduled'
		2 = 'Physical Problems'
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		1 = 'Not Eligible'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
	;

	VALUE vem1lf_
		6 = 'Time constraints'
		4 = 'Technical Difficulties'
		1 = 'Not Eligible'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
	;

	VALUE vem1rf_
		6 = 'Time constraints'
		4 = 'Technical Difficulties'
		1 = 'Not Eligible'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
	;

	VALUE vem2re_
		4 = 'Technical Difficulties'
		6 = 'Time constraints'
		1 = 'Not Eligible'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
	;

	VALUE vem2le_
		6 = 'Time constraints'
		4 = 'Technical Difficulties'
		1 = 'Not Eligible'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
	;

	VALUE vog32auk_
		6 = 'Time constraints'
		4 = 'Technical Difficulties'
		1 = 'Not Eligible'
		2 = 'Physical Problems'
		5 = 'Refused but theoretically could do'
		3 = 'Mental Problems'
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

	INFORMAT crf_version_vemandvog $8.;
	FORMAT crf_version_vemandvog $8.;

	INFORMAT vem0a BEST32.;
	FORMAT vem0a BEST12.;

	INFORMAT vem0b BEST32.;
	FORMAT vem0b BEST12.;

	INFORMAT vem0cr BEST32.;
	FORMAT vem0cr BEST12.;

	INFORMAT vem0cl BEST32.;
	FORMAT vem0cl BEST12.;

	INFORMAT vem0dr BEST32.;
	FORMAT vem0dr BEST12.;

	INFORMAT vem0dl BEST32.;
	FORMAT vem0dl BEST12.;

	INFORMAT vog0r BEST32.;
	FORMAT vog0r BEST12.;

	INFORMAT vog0l BEST32.;
	FORMAT vog0l BEST12.;

	INFORMAT vem01a BEST32.;
	FORMAT vem01a BEST12.;

	INFORMAT vem1la BEST32.;
	FORMAT vem1la BEST12.;

	INFORMAT vem1lb BEST32.;
	FORMAT vem1lb BEST12.;

	INFORMAT vem1le BEST32.;
	FORMAT vem1le BEST12.;

	INFORMAT vem1lg BEST32.;
	FORMAT vem1lg BEST12.;

	INFORMAT vem1lh BEST32.;
	FORMAT vem1lh BEST12.;

	INFORMAT vem1ra BEST32.;
	FORMAT vem1ra BEST12.;

	INFORMAT vem1rb BEST32.;
	FORMAT vem1rb BEST12.;

	INFORMAT vem1re BEST32.;
	FORMAT vem1re BEST12.;

	INFORMAT vem1rg BEST32.;
	FORMAT vem1rg BEST12.;

	INFORMAT vem1rh BEST32.;
	FORMAT vem1rh BEST12.;

	INFORMAT vem2a BEST32.;
	FORMAT vem2a BEST12.;

	INFORMAT vem2b BEST32.;
	FORMAT vem2b BEST12.;

	INFORMAT vem2ra BEST32.;
	FORMAT vem2ra BEST12.;

	INFORMAT vem2rb BEST32.;
	FORMAT vem2rb BEST12.;

	INFORMAT vem2rc BEST32.;
	FORMAT vem2rc BEST12.;

	INFORMAT vem2rd BEST32.;
	FORMAT vem2rd BEST12.;

	INFORMAT vem2la BEST32.;
	FORMAT vem2la BEST12.;

	INFORMAT vem2lb BEST32.;
	FORMAT vem2lb BEST12.;

	INFORMAT vem2lc BEST32.;
	FORMAT vem2lc BEST12.;

	INFORMAT vem2ld BEST32.;
	FORMAT vem2ld BEST12.;

	INFORMAT vog31a BEST32.;
	FORMAT vog31a BEST12.;

	INFORMAT vog31b BEST32.;
	FORMAT vog31b BEST12.;

	INFORMAT vog31c BEST32.;
	FORMAT vog31c BEST12.;

	INFORMAT vog31d BEST32.;
	FORMAT vog31d BEST12.;

	INFORMAT vog32almn BEST32.;
	FORMAT vog32almn BEST12.;

	INFORMAT vog32alsd BEST32.;
	FORMAT vog32alsd BEST12.;

	INFORMAT vog32armn BEST32.;
	FORMAT vog32armn BEST12.;

	INFORMAT vog32arsd BEST32.;
	FORMAT vog32arsd BEST12.;

	INFORMAT auto_id_vemandvog BEST32.;
	FORMAT auto_id_vemandvog BEST12.;

	INFORMAT vem1lf2 BEST32.;
	FORMAT vem1lf2 BEST12.;

	INFORMAT vem1rf2 BEST32.;
	FORMAT vem1rf2 BEST12.;

	INFORMAT vem2re2 BEST32.;
	FORMAT vem2re2 BEST12.;

	INFORMAT vem2le2 BEST32.;
	FORMAT vem2le2 BEST12.;

	INFORMAT vog32auk2 BEST32.;
	FORMAT vog32auk2 BEST12.;

	INFORMAT vem1lc BEST32.;
	FORMAT vem1lc BEST12.;

	INFORMAT vem1ld BEST32.;
	FORMAT vem1ld BEST12.;

	INFORMAT vem1lf BEST32.;
	FORMAT vem1lf BEST12.;

	INFORMAT vem1rc BEST32.;
	FORMAT vem1rc BEST12.;

	INFORMAT vem1rd BEST32.;
	FORMAT vem1rd BEST12.;

	INFORMAT vem1rf BEST32.;
	FORMAT vem1rf BEST12.;

	INFORMAT vem2re BEST32.;
	FORMAT vem2re BEST12.;

	INFORMAT vem2le BEST32.;
	FORMAT vem2le BEST12.;

	INFORMAT vog32auk BEST32.;
	FORMAT vog32auk BEST12.;

	INFORMAT testerid_vemandvog BEST32.;
	FORMAT testerid_vemandvog BEST12.;

	INPUT
		id_addi
		visit
		crf_version_vemandvog
		vem0a
		vem0b
		vem0cr
		vem0cl
		vem0dr
		vem0dl
		vog0r
		vog0l
		vem01a
		vem1la
		vem1lb
		vem1le
		vem1lg
		vem1lh
		vem1ra
		vem1rb
		vem1re
		vem1rg
		vem1rh
		vem2a
		vem2b
		vem2ra
		vem2rb
		vem2rc
		vem2rd
		vem2la
		vem2lb
		vem2lc
		vem2ld
		vog31a
		vog31b
		vog31c
		vog31d
		vog32almn
		vog32alsd
		vog32armn
		vog32arsd
		auto_id_vemandvog
		vem1lf2
		vem1rf2
		vem2re2
		vem2le2
		vog32auk2
		vem1lc
		vem1ld
		vem1lf
		vem1rc
		vem1rd
		vem1rf
		vem2re
		vem2le
		vog32auk
		testerid_vemandvog
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_vemandvog = "CRF Version"
		vem0a = "WEBER sound the same in both ears"
		vem0b = "WEBER sound heard louder"
		vem0cr = "Mastoid process positive conduction Right"
		vem0cl = "Mastoid process positive conduction Left"
		vem0dr = "External auditory meatus positive perception Right"
		vem0dl = "External auditory meatus positive perception Left"
		vog0r = "Impacted Cerumen Right"
		vog0l = "Impacted Cerumen Left"
		vem01a = "OVEMP able to see target"
		vem1la = "OVEMP Left Eye trace on top Ln1"
		vem1lb = "OVEMP Left Eye trace on top Lp1"
		vem1le = "OVEMP Left Eye trace on top Lamp"
		vem1lg = "OVEMP Left Eye Calibration LpA"
		vem1lh = "OVEMP Left Eye Calibration LnA"
		vem1ra = "OVEMP Right Eye trace on top Ln1"
		vem1rb = "OVEMP Right Eye trace on top Lp1"
		vem1re = "OVEMP Right Eye trace on top Lamp"
		vem1rg = "OVEMP Right Eye Calibration LpA"
		vem1rh = "OVEMP Right Eye Calibration LnA"
		vem2a = "CVEMP No conductive hearing loss"
		vem2b = "CVEMP Can move the neck with no restriction or pain"
		vem2ra = "CVEMP Right SCM Rp1"
		vem2rb = "CVEMP Right SCM Rn1"
		vem2rc = "CVEMP Right SCM Ramp"
		vem2rd = "CVEMP Right SCM Rrec"
		vem2la = "CVEMP Left SCM Lp1"
		vem2lb = "CVEMP Left SCM Ln1"
		vem2lc = "CVEMP Left SCM Lamp"
		vem2ld = "CVEMP Left SCM Lrec"
		vog31a = "VOG able to see target"
		vog31b = "VOG can move neck without restriction or pain"
		vog31c = "VOG No history of surgery in the blood vessels of the neck"
		vog31d = "VOG Had had cervical spine surgery and can move the head from side to side without restriction or pain"
		vog32almn = "VOG Left Horizontal neutral head position with 10 degree pitch MEAN"
		vog32alsd = "VOG Left Horizontal neutral head position with 10 degree pitch Standard Deviation"
		vog32armn = "VOG Right Horizontal neutral head position with 10 degree pitch MEAN"
		vog32arsd = "VOG Right Horizontal neutral head position with 10 degree pitch Standard Deviation"
		auto_id_vemandvog = "Unique Teleform Number"
		vem1lf2 = "OVEMP Left Eye trace on top Unknown"
		vem1rf2 = "OVEMP Right trace on top Unknown"
		vem2re2 = "CVEMP Right SCM Unknown"
		vem2le2 = "CVEMP Left SCM Unknown"
		vog32auk2 = "VOG Unknown"
		vem1lc = "OVEMP Left Eye trace on top Ln1"
		vem1ld = "OVEMP Left Eye trace on top Lp1"
		vem1lf = "OVEMP Left Eye trace on top Unknown"
		vem1rc = "OVEMP Right Eye trace on top Ln1"
		vem1rd = "OVEMP Right Eye trace on top Lp1"
		vem1rf = "OVEMP Right trace on top Unknown"
		vem2re = "CVEMP Right SCM Unknown"
		vem2le = "CVEMP Left SCM Unknown"
		vog32auk = "VOG Unknown"
		testerid_vemandvog = "Tester ID"
	;
	FORMAT
		vem0a vem0a_.
		vem0b vem0b_.
		vem0cr vem0cr_.
		vem0cl vem0cl_.
		vem0dr vem0dr_.
		vem0dl vem0dl_.
		vog0r vog0r_.
		vog0l vog0l_.
		vem01a vem01a_.
		vem2a vem2a_.
		vem2b vem2b_.
		vog31a vog31a_.
		vog31b vog31b_.
		vog31c vog31c_.
		vog31d vog31d_.
		vem1lf2 vem1lf2_.
		vem1rf2 vem1rf2_.
		vem2re2 vem2re2_.
		vem2le2 vem2le2_.
		vog32auk2 vog32auk2_.
		vem1lf vem1lf_.
		vem1rf vem1rf_.
		vem2re vem2re_.
		vem2le vem2le_.
		vog32auk vog32auk_.
	;
RUN;


        DATA oc_vempandvog;
            SET WORK.IMPORT;
        RUN;
        