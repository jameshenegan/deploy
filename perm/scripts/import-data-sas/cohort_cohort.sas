%let path_to_file = '../data-csv/cohort_cohort.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE visit_cancelled_status_
		0 = 'Not cancelled'
	;

	VALUE last_status_id_
		108 = 'Deceased'
		7 = 'On Study'
		106 = 'Withdrawn'
		107 = 'Terminated'
	;

	VALUE last_due_letter_status_
		108 = 'Scheduled'
		1 = 'Phone Call'
		105 = 'Withdrawn'
		7 = 'Deceased'
		101 = 'Canceled'
		9 = 'Letter'
	;

	VALUE last_substatus_neuroimaging_
		1 = 'Last Substatus: NeuroImaging'
	;

	VALUE last_substatus_neuroimag_tau_
		2 = 'Last Substatus: NeuroImagingTAU'
	;

	VALUE last_substatus_home_visit_
		3 = 'Last Substatus: HomeVisit'
	;

	VALUE last_substatus_hv_remote_
		4 = 'Last Substatus: HomeVisitRemote'
	;

	VALUE last_substatus_ltfu_
		5 = 'Last Substatus: LostToFolowup'
	;

	VALUE last_substatus_on_study_dem_
		6 = 'Last Substatus: OnStudyDememtia'
	;

	VALUE last_substatus_autopsy_
		7 = 'Last Substatus: Autopsy'
	;

	VALUE last_substatus_not_interested_
		9 = 'Last Substatus: Not Interested'
	;

	VALUE last_substatus_travel_issues_
		10 = 'Last Substatus: Travel Issues'
	;

	VALUE last_substatus_dissatisfied_
		11 = 'Last Substatus: Dissatisfied'
	;

	VALUE last_substatus_health_reasons_
		12 = 'Last Substatus: Health Reasons'
	;

	VALUE last_substatus_refusing_tests_
		14 = 'Last Substatus: Refusing Tests'
	;

	VALUE last_substatus_behavior_issues_
		15 = 'Last Substatus: Behavioral Issues'
	;

	VALUE last_substatus_term_dementia_
		16 = 'Last Substatus: Terminated Dementia'
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

	INFORMAT visit_cancelled_status BEST32.;
	FORMAT visit_cancelled_status BEST12.;

	INFORMAT last_status_id BEST32.;
	FORMAT last_status_id BEST12.;

	INFORMAT last_due_letter_status BEST32.;
	FORMAT last_due_letter_status BEST12.;

	INFORMAT last_substatus_neuroimaging BEST32.;
	FORMAT last_substatus_neuroimaging BEST12.;

	INFORMAT last_substatus_neuroimag_tau BEST32.;
	FORMAT last_substatus_neuroimag_tau BEST12.;

	INFORMAT last_substatus_home_visit BEST32.;
	FORMAT last_substatus_home_visit BEST12.;

	INFORMAT last_substatus_hv_remote BEST32.;
	FORMAT last_substatus_hv_remote BEST12.;

	INFORMAT last_substatus_ltfu BEST32.;
	FORMAT last_substatus_ltfu BEST12.;

	INFORMAT last_substatus_on_study_dem BEST32.;
	FORMAT last_substatus_on_study_dem BEST12.;

	INFORMAT last_substatus_autopsy BEST32.;
	FORMAT last_substatus_autopsy BEST12.;

	INFORMAT last_substatus_not_interested BEST32.;
	FORMAT last_substatus_not_interested BEST12.;

	INFORMAT last_substatus_travel_issues BEST32.;
	FORMAT last_substatus_travel_issues BEST12.;

	INFORMAT last_substatus_dissatisfied BEST32.;
	FORMAT last_substatus_dissatisfied BEST12.;

	INFORMAT last_substatus_health_reasons BEST32.;
	FORMAT last_substatus_health_reasons BEST12.;

	INFORMAT last_substatus_refusing_tests BEST32.;
	FORMAT last_substatus_refusing_tests BEST12.;

	INFORMAT last_substatus_behavior_issues BEST32.;
	FORMAT last_substatus_behavior_issues BEST12.;

	INFORMAT last_substatus_term_dementia BEST32.;
	FORMAT last_substatus_term_dementia BEST12.;

	INPUT
		id_addi
		visit
		visit_cancelled_status
		last_status_id
		last_due_letter_status
		last_substatus_neuroimaging
		last_substatus_neuroimag_tau
		last_substatus_home_visit
		last_substatus_hv_remote
		last_substatus_ltfu
		last_substatus_on_study_dem
		last_substatus_autopsy
		last_substatus_not_interested
		last_substatus_travel_issues
		last_substatus_dissatisfied
		last_substatus_health_reasons
		last_substatus_refusing_tests
		last_substatus_behavior_issues
		last_substatus_term_dementia
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		visit_cancelled_status = "Visit Cancelled"
		last_status_id = "Last Status ID"
		last_due_letter_status = "Last Due Letter Status"
		last_substatus_neuroimaging = "Last Substatus: NeuroImaging"
		last_substatus_neuroimag_tau = "Last Substatus: NeuroImagingTAU"
		last_substatus_home_visit = "Last Substatus: HomeVisit"
		last_substatus_hv_remote = "Last Substatus: HomeVisitRemote"
		last_substatus_ltfu = "Last Substatus: LostToFolowup"
		last_substatus_on_study_dem = "Last Substatus: OnStudyDememtia"
		last_substatus_autopsy = "Last Substatus: Autopsy"
		last_substatus_not_interested = "Last Substatus: Not Interested"
		last_substatus_travel_issues = "Last Substatus: Travel Issues"
		last_substatus_dissatisfied = "Last Substatus: Dissatisfied"
		last_substatus_health_reasons = "Last Substatus: Health Reasons"
		last_substatus_refusing_tests = "Last Substatus: Refusing Tests"
		last_substatus_behavior_issues = "Last Substatus: Behavioral Issues"
		last_substatus_term_dementia = "Last Substatus: Terminated Dementia"
	;
	FORMAT
		visit_cancelled_status visit_cancelled_status_.
		last_status_id last_status_id_.
		last_due_letter_status last_due_letter_status_.
		last_substatus_neuroimaging last_substatus_neuroimaging_.
		last_substatus_neuroimag_tau last_substatus_neuroimag_tau_.
		last_substatus_home_visit last_substatus_home_visit_.
		last_substatus_hv_remote last_substatus_hv_remote_.
		last_substatus_ltfu last_substatus_ltfu_.
		last_substatus_on_study_dem last_substatus_on_study_dem_.
		last_substatus_autopsy last_substatus_autopsy_.
		last_substatus_not_interested last_substatus_not_interested_.
		last_substatus_travel_issues last_substatus_travel_issues_.
		last_substatus_dissatisfied last_substatus_dissatisfied_.
		last_substatus_health_reasons last_substatus_health_reasons_.
		last_substatus_refusing_tests last_substatus_refusing_tests_.
		last_substatus_behavior_issues last_substatus_behavior_issues_.
		last_substatus_term_dementia last_substatus_term_dementia_.
	;
RUN;


        DATA cohort_cohort;
            SET WORK.IMPORT;
        RUN;
        