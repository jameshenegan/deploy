%let path_to_file = '../data-csv/oc_balancetesting.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE balt01a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE balt01b_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE balttrial1_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE baltrnd1_
		9 = '9-Did not do due to technical problems'
		2 = '2-Equipment malfunction'
		3 = '3-Could not do due to physical problems'
		8 = '8-Refused but theoretically could do'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		4 = '4-Cound not do due to mental problems'
		5 = '5-Could not do due to both physical and mental problems'
	;

	VALUE balttrial2_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE baltrnd2_
		9 = '9-Did not do due to technical problems'
		2 = '2-Equipment malfunction'
		3 = '3-Could not do due to physical problems'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		8 = '8-Refused but theoretically could do'
		4 = '4-Cound not do due to mental problems'
		5 = '5-Could not do due to both physical and mental problems'
	;

	VALUE balttrial3_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE baltrnd3_
		9 = '9-Did not do due to technical problems'
		3 = '3-Could not do due to physical problems'
		2 = '2-Equipment malfunction'
		8 = '8-Refused but theoretically could do'
		4 = '4-Cound not do due to mental problems'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		5 = '5-Could not do due to both physical and mental problems'
	;

	VALUE balttrial4_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE baltrnd4_
		9 = '9-Did not do due to technical problems'
		2 = '2-Equipment malfunction'
		3 = '3-Could not do due to physical problems'
		8 = '8-Refused but theoretically could do'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		5 = '5-Could not do due to both physical and mental problems'
		4 = '4-Cound not do due to mental problems'
	;

	VALUE balttrial5_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE baltrnd5_
		9 = '9-Did not do due to technical problems'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		2 = '2-Equipment malfunction'
		3 = '3-Could not do due to physical problems'
		8 = '8-Refused but theoretically could do'
		5 = '5-Could not do due to both physical and mental problems'
		4 = '4-Cound not do due to mental problems'
	;

	VALUE baltrnd6_
		9 = '9-Did not do due to technical problems'
		3 = '3-Could not do due to physical problems'
		2 = '2-Equipment malfunction'
		4 = '4-Cound not do due to mental problems'
		8 = '8-Refused but theoretically could do'
		1 = '1-Loss of balance/fall before reaching 30 seconds'
		5 = '5-Could not do due to both physical and mental problems'
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

	INFORMAT crf_version_baltes $8.;
	FORMAT crf_version_baltes $8.;

	INFORMAT balt01a BEST32.;
	FORMAT balt01a BEST12.;

	INFORMAT balt01b BEST32.;
	FORMAT balt01b BEST12.;

	INFORMAT baltmls1 BEST32.;
	FORMAT baltmls1 BEST12.;

	INFORMAT baltaps1 BEST32.;
	FORMAT baltaps1 BEST12.;

	INFORMAT baltcoms1 BEST32.;
	FORMAT baltcoms1 BEST12.;

	INFORMAT balthq1 BEST32.;
	FORMAT balthq1 BEST12.;

	INFORMAT balttrial1 BEST32.;
	FORMAT balttrial1 BEST12.;

	INFORMAT baltrnd1 BEST32.;
	FORMAT baltrnd1 BEST12.;

	INFORMAT baltmls2 BEST32.;
	FORMAT baltmls2 BEST12.;

	INFORMAT baltaps2 BEST32.;
	FORMAT baltaps2 BEST12.;

	INFORMAT baltcoms2 BEST32.;
	FORMAT baltcoms2 BEST12.;

	INFORMAT balthq2 BEST32.;
	FORMAT balthq2 BEST12.;

	INFORMAT balttrial2 BEST32.;
	FORMAT balttrial2 BEST12.;

	INFORMAT baltrnd2 BEST32.;
	FORMAT baltrnd2 BEST12.;

	INFORMAT baltmls3 $1.;
	FORMAT baltmls3 $1.;

	INFORMAT baltaps3 $1.;
	FORMAT baltaps3 $1.;

	INFORMAT baltcoms3 BEST32.;
	FORMAT baltcoms3 BEST12.;

	INFORMAT balthq3 BEST32.;
	FORMAT balthq3 BEST12.;

	INFORMAT balttrial3 BEST32.;
	FORMAT balttrial3 BEST12.;

	INFORMAT baltrnd3 BEST32.;
	FORMAT baltrnd3 BEST12.;

	INFORMAT baltmls4 BEST32.;
	FORMAT baltmls4 BEST12.;

	INFORMAT baltaps4 BEST32.;
	FORMAT baltaps4 BEST12.;

	INFORMAT baltcoms4 BEST32.;
	FORMAT baltcoms4 BEST12.;

	INFORMAT balthq4 BEST32.;
	FORMAT balthq4 BEST12.;

	INFORMAT balttrial4 BEST32.;
	FORMAT balttrial4 BEST12.;

	INFORMAT baltrnd4 BEST32.;
	FORMAT baltrnd4 BEST12.;

	INFORMAT baltmls5 BEST32.;
	FORMAT baltmls5 BEST12.;

	INFORMAT baltaps5 BEST32.;
	FORMAT baltaps5 BEST12.;

	INFORMAT baltcoms5 BEST32.;
	FORMAT baltcoms5 BEST12.;

	INFORMAT balthq5 BEST32.;
	FORMAT balthq5 BEST12.;

	INFORMAT balttrial5 BEST32.;
	FORMAT balttrial5 BEST12.;

	INFORMAT baltrnd5 BEST32.;
	FORMAT baltrnd5 BEST12.;

	INFORMAT baltmls6 $1.;
	FORMAT baltmls6 $1.;

	INFORMAT baltaps6 $1.;
	FORMAT baltaps6 $1.;

	INFORMAT baltcoms6 $1.;
	FORMAT baltcoms6 $1.;

	INFORMAT balthq6 $1.;
	FORMAT balthq6 $1.;

	INFORMAT balttrial6 $1.;
	FORMAT balttrial6 $1.;

	INFORMAT baltrnd6 BEST32.;
	FORMAT baltrnd6 BEST12.;

	INFORMAT auto_id_baltes BEST32.;
	FORMAT auto_id_baltes BEST12.;

	INFORMAT testerid_baltes BEST32.;
	FORMAT testerid_baltes BEST12.;

	INPUT
		id_addi
		visit
		crf_version_baltes
		balt01a
		balt01b
		baltmls1
		baltaps1
		baltcoms1
		balthq1
		balttrial1
		baltrnd1
		baltmls2
		baltaps2
		baltcoms2
		balthq2
		balttrial2
		baltrnd2
		baltmls3
		baltaps3
		baltcoms3
		balthq3
		balttrial3
		baltrnd3
		baltmls4
		baltaps4
		baltcoms4
		balthq4
		balttrial4
		baltrnd4
		baltmls5
		baltaps5
		baltcoms5
		balthq5
		balttrial5
		baltrnd5
		baltmls6
		baltaps6
		baltcoms6
		balthq6
		balttrial6
		baltrnd6
		auto_id_baltes
		testerid_baltes
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_baltes = "CRF Version"
		balt01a = "Is the participant able to stand unassisted?"
		balt01b = "Does the participant need to use an assistive devide for standing or walking"
		baltmls1 = "Floor eyes open ML sway"
		baltaps1 = "Floor eyes open AP sway"
		baltcoms1 = "Floor eyes open COM sway"
		balthq1 = "Floor eyes open how stable"
		balttrial1 = "Floor eyes open trial successful stance achieved"
		baltrnd1 = "Floor eyes open RND"
		baltmls2 = "Floor eyes closed ML sway"
		baltaps2 = "Floor eyes closed AP sway"
		baltcoms2 = "Floor eyes closed COM sway"
		balthq2 = "Floor eyes closed how stable"
		balttrial2 = "Floor eyes closed trial successful stance achieved"
		baltrnd2 = "Floor eyes closed RND"
		baltmls3 = "Floor dynamic vision ML sway"
		baltaps3 = "Floor dynamic vision AP sway"
		baltcoms3 = "Floor dynamic vision COM sway"
		balthq3 = "Floor dynamic vision how stable"
		balttrial3 = "Floor dynamic vision trial successful stance achieved"
		baltrnd3 = "Floor dynamic vision RND"
		baltmls4 = "Foam eyes open ML sway"
		baltaps4 = "Foam eyes open AP sway"
		baltcoms4 = "Foam eyes open COM sway"
		balthq4 = "Foam eyes open how stable"
		balttrial4 = "Foam eyes open trial successful stance achieved"
		baltrnd4 = "Foam eyes open RND"
		baltmls5 = "Foam eyes closed ML sway"
		baltaps5 = "Foam eyes closed AP sway"
		baltcoms5 = "Foam eyes closed COM sway"
		balthq5 = "Foam eyes closed how stable"
		balttrial5 = "Foam eyes closed trial successful stance achieved"
		baltrnd5 = "Foam eyes closed RND"
		baltmls6 = "Foam dynamic vision ML sway"
		baltaps6 = "Foam dynamic vision AP sway"
		baltcoms6 = "Foam dynamic vision COM sway"
		balthq6 = "Foam dynamic vision how stable"
		balttrial6 = "Foam dynamic vision trial successful stance achieved"
		baltrnd6 = "Foam dynamic vision RND"
		auto_id_baltes = "Unique Teleform Number"
		testerid_baltes = "Tester ID"
	;
	FORMAT
		balt01a balt01a_.
		balt01b balt01b_.
		balttrial1 balttrial1_.
		baltrnd1 baltrnd1_.
		balttrial2 balttrial2_.
		baltrnd2 baltrnd2_.
		balttrial3 balttrial3_.
		baltrnd3 baltrnd3_.
		balttrial4 balttrial4_.
		baltrnd4 baltrnd4_.
		balttrial5 balttrial5_.
		baltrnd5 baltrnd5_.
		baltrnd6 baltrnd6_.
	;
RUN;


        DATA oc_balancetesting;
            SET WORK.IMPORT;
        RUN;
        