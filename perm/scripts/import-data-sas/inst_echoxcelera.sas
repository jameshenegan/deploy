%let path_to_file = '../data-csv/inst_echoxcelera.csv';
OPTIONS nofmterr;

    
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

	INFORMAT systolicpressure BEST32.;
	FORMAT systolicpressure BEST12.;

	INFORMAT diastolicpressure BEST32.;
	FORMAT diastolicpressure BEST12.;

	INFORMAT lvpwd BEST32.;
	FORMAT lvpwd BEST12.;

	INFORMAT ivsd BEST32.;
	FORMAT ivsd BEST12.;

	INFORMAT lvidd BEST32.;
	FORMAT lvidd BEST12.;

	INFORMAT edv_teich BEST32.;
	FORMAT edv_teich BEST12.;

	INFORMAT edv_cubed BEST32.;
	FORMAT edv_cubed BEST12.;

	INFORMAT ivs_lvpw_ratio BEST32.;
	FORMAT ivs_lvpw_ratio BEST12.;

	INFORMAT lv_mass_c_d BEST32.;
	FORMAT lv_mass_c_d BEST12.;

	INFORMAT la_dimension BEST32.;
	FORMAT la_dimension BEST12.;

	INFORMAT lvids BEST32.;
	FORMAT lvids BEST12.;

	INFORMAT ao_root_diam BEST32.;
	FORMAT ao_root_diam BEST12.;

	INFORMAT esv_cubed BEST32.;
	FORMAT esv_cubed BEST12.;

	INFORMAT esv_teich BEST32.;
	FORMAT esv_teich BEST12.;

	INFORMAT sv_teich BEST32.;
	FORMAT sv_teich BEST12.;

	INFORMAT ef_cubed BEST32.;
	FORMAT ef_cubed BEST12.;

	INFORMAT fs BEST32.;
	FORMAT fs BEST12.;

	INFORMAT ef_teich BEST32.;
	FORMAT ef_teich BEST12.;

	INFORMAT sv_cubed BEST32.;
	FORMAT sv_cubed BEST12.;

	INFORMAT ao_root_area BEST32.;
	FORMAT ao_root_area BEST12.;

	INFORMAT mv_e_point BEST32.;
	FORMAT mv_e_point BEST12.;

	INFORMAT lvot_diam BEST32.;
	FORMAT lvot_diam BEST12.;

	INFORMAT lvot_area BEST32.;
	FORMAT lvot_area BEST12.;

	INFORMAT mv_a_point BEST32.;
	FORMAT mv_a_point BEST12.;

	INFORMAT la_ao_ratio BEST32.;
	FORMAT la_ao_ratio BEST12.;

	INFORMAT mv_e_a_ratio BEST32.;
	FORMAT mv_e_a_ratio BEST12.;

	INFORMAT bsa BEST32.;
	FORMAT bsa BEST12.;

	INFORMAT lv_mass_c_dl BEST32.;
	FORMAT lv_mass_c_dl BEST12.;

	INFORMAT lv_v1_max BEST32.;
	FORMAT lv_v1_max BEST12.;

	INFORMAT si_cubed BEST32.;
	FORMAT si_cubed BEST12.;

	INFORMAT si_teich BEST32.;
	FORMAT si_teich BEST12.;

	INFORMAT lv_max_pg BEST32.;
	FORMAT lv_max_pg BEST12.;

	INFORMAT ao_v2_max BEST32.;
	FORMAT ao_v2_max BEST12.;

	INFORMAT ao_max_pg BEST32.;
	FORMAT ao_max_pg BEST12.;

	INFORMAT lv_v1_vti BEST32.;
	FORMAT lv_v1_vti BEST12.;

	INFORMAT lv_mean_pg BEST32.;
	FORMAT lv_mean_pg BEST12.;

	INFORMAT lv_v1_mean BEST32.;
	FORMAT lv_v1_mean BEST12.;

	INFORMAT ao_mean_pg BEST32.;
	FORMAT ao_mean_pg BEST12.;

	INFORMAT ao_v2_vti BEST32.;
	FORMAT ao_v2_vti BEST12.;

	INFORMAT ao_v2_mean BEST32.;
	FORMAT ao_v2_mean BEST12.;

	INFORMAT sv_lvot BEST32.;
	FORMAT sv_lvot BEST12.;

	INFORMAT sv_ao BEST32.;
	FORMAT sv_ao BEST12.;

	INFORMAT ao_max_pg_full BEST32.;
	FORMAT ao_max_pg_full BEST12.;

	INFORMAT si_lvot BEST32.;
	FORMAT si_lvot BEST12.;

	INFORMAT lv_ivrt BEST32.;
	FORMAT lv_ivrt BEST12.;

	INFORMAT ava_v_d BEST32.;
	FORMAT ava_v_d BEST12.;

	INFORMAT ava_v_a BEST32.;
	FORMAT ava_v_a BEST12.;

	INFORMAT si_ao BEST32.;
	FORMAT si_ao BEST12.;

	INFORMAT ao_mean_pg_full BEST32.;
	FORMAT ao_mean_pg_full BEST12.;

	INFORMAT ava_i_a BEST32.;
	FORMAT ava_i_a BEST12.;

	INFORMAT ava_i_d BEST32.;
	FORMAT ava_i_d BEST12.;

	INFORMAT ava_dimensionless BEST32.;
	FORMAT ava_dimensionless BEST12.;

	INFORMAT bzi_metric_weight BEST32.;
	FORMAT bzi_metric_weight BEST12.;

	INFORMAT bzi_bmi BEST32.;
	FORMAT bzi_bmi BEST12.;

	INFORMAT bsa_haycock BEST32.;
	FORMAT bsa_haycock BEST12.;

	INFORMAT bzi_metric_height BEST32.;
	FORMAT bzi_metric_height BEST12.;

	INFORMAT length BEST32.;
	FORMAT length BEST12.;

	INFORMAT edv_mod_sp4 BEST32.;
	FORMAT edv_mod_sp4 BEST12.;

	INFORMAT lvld_ap4 BEST32.;
	FORMAT lvld_ap4 BEST12.;

	INFORMAT lvad_ap4 BEST32.;
	FORMAT lvad_ap4 BEST12.;

	INFORMAT esv_mod_sp4 BEST32.;
	FORMAT esv_mod_sp4 BEST12.;

	INFORMAT lvls_ap4 BEST32.;
	FORMAT lvls_ap4 BEST12.;

	INFORMAT sv_mod_sp4 BEST32.;
	FORMAT sv_mod_sp4 BEST12.;

	INFORMAT ef_mod_sp4 BEST32.;
	FORMAT ef_mod_sp4 BEST12.;

	INFORMAT lvas_ap4 BEST32.;
	FORMAT lvas_ap4 BEST12.;

	INFORMAT si_mod_sp4 BEST32.;
	FORMAT si_mod_sp4 BEST12.;

	INFORMAT mv_dec_time BEST32.;
	FORMAT mv_dec_time BEST12.;

	INFORMAT bzi_systolic_pressure BEST32.;
	FORMAT bzi_systolic_pressure BEST12.;

	INFORMAT bzi_diastolic_pressure BEST32.;
	FORMAT bzi_diastolic_pressure BEST12.;

	INFORMAT ivsd_1 BEST32.;
	FORMAT ivsd_1 BEST12.;

	INFORMAT ivsd_3 BEST32.;
	FORMAT ivsd_3 BEST12.;

	INFORMAT ivsd_2 BEST32.;
	FORMAT ivsd_2 BEST12.;

	INFORMAT max_pg BEST32.;
	FORMAT max_pg BEST12.;

	INFORMAT max_v BEST32.;
	FORMAT max_v BEST12.;

	INFORMAT bzi_heart_rate BEST32.;
	FORMAT bzi_heart_rate BEST12.;

	INFORMAT la_a4_area_max BEST32.;
	FORMAT la_a4_area_max BEST12.;

	INFORMAT la_length_a4c_max BEST32.;
	FORMAT la_length_a4c_max BEST12.;

	INFORMAT la_a4_vol_mod_max BEST32.;
	FORMAT la_a4_vol_mod_max BEST12.;

	INFORMAT lvot_area_m BEST32.;
	FORMAT lvot_area_m BEST12.;

	INFORMAT la_a4_vol_mod_max_index BEST32.;
	FORMAT la_a4_vol_mod_max_index BEST12.;

	INFORMAT time_dop BEST32.;
	FORMAT time_dop BEST12.;

	INFORMAT slope_dop BEST32.;
	FORMAT slope_dop BEST12.;

	INFORMAT mv_dec_slope BEST32.;
	FORMAT mv_dec_slope BEST12.;

	INFORMAT imt_measure BEST32.;
	FORMAT imt_measure BEST12.;

	INFORMAT edv_sp4_el BEST32.;
	FORMAT edv_sp4_el BEST12.;

	INFORMAT esv_sp4_el BEST32.;
	FORMAT esv_sp4_el BEST12.;

	INFORMAT sv_sp_el BEST32.;
	FORMAT sv_sp_el BEST12.;

	INFORMAT ef_sp_el BEST32.;
	FORMAT ef_sp_el BEST12.;

	INFORMAT rvdd1 BEST32.;
	FORMAT rvdd1 BEST12.;

	INFORMAT med_peak_e_vel BEST32.;
	FORMAT med_peak_e_vel BEST12.;

	INFORMAT e_e_prime_med BEST32.;
	FORMAT e_e_prime_med BEST12.;

	INFORMAT si_sp4_el BEST32.;
	FORMAT si_sp4_el BEST12.;

	INFORMAT tapse BEST32.;
	FORMAT tapse BEST12.;

	INFORMAT mean_v BEST32.;
	FORMAT mean_v BEST12.;

	INFORMAT vti BEST32.;
	FORMAT vti BEST12.;

	INFORMAT mean_pg BEST32.;
	FORMAT mean_pg BEST12.;

	INFORMAT mv_p_1_2t_max_vel BEST32.;
	FORMAT mv_p_1_2t_max_vel BEST12.;

	INFORMAT mva_p_1_2t BEST32.;
	FORMAT mva_p_1_2t BEST12.;

	INFORMAT mv_p_1_2t BEST32.;
	FORMAT mv_p_1_2t BEST12.;

	INFORMAT la_a2_area_max BEST32.;
	FORMAT la_a2_area_max BEST12.;

	INFORMAT vol_by_mod BEST32.;
	FORMAT vol_by_mod BEST12.;

	INFORMAT vol_area BEST32.;
	FORMAT vol_area BEST12.;

	INFORMAT vol_circ BEST32.;
	FORMAT vol_circ BEST12.;

	INFORMAT vol_length BEST32.;
	FORMAT vol_length BEST12.;

	INFORMAT tr_max_vel BEST32.;
	FORMAT tr_max_vel BEST12.;

	INFORMAT la_vol_bp_mod_max BEST32.;
	FORMAT la_vol_bp_mod_max BEST12.;

	INFORMAT vol_by_spe BEST32.;
	FORMAT vol_by_spe BEST12.;

	INFORMAT tr_max_pg BEST32.;
	FORMAT tr_max_pg BEST12.;

	INFORMAT lat_peak_e_prime_vel BEST32.;
	FORMAT lat_peak_e_prime_vel BEST12.;

	INFORMAT pulm_dias_vel BEST32.;
	FORMAT pulm_dias_vel BEST12.;

	INFORMAT pulm_sys_vel BEST32.;
	FORMAT pulm_sys_vel BEST12.;

	INFORMAT lat_a_prime_vel BEST32.;
	FORMAT lat_a_prime_vel BEST12.;

	INFORMAT pulm_s_d BEST32.;
	FORMAT pulm_s_d BEST12.;

	INFORMAT lat_peak_s_vel BEST32.;
	FORMAT lat_peak_s_vel BEST12.;

	INFORMAT med_peak_s_vel BEST32.;
	FORMAT med_peak_s_vel BEST12.;

	INFORMAT pulm_a_revs_vel BEST32.;
	FORMAT pulm_a_revs_vel BEST12.;

	INFORMAT rrlat BEST32.;
	FORMAT rrlat BEST12.;

	INFORMAT med_peak_a_prime_vel BEST32.;
	FORMAT med_peak_a_prime_vel BEST12.;

	INFORMAT mv_e_vti BEST32.;
	FORMAT mv_e_vti BEST12.;

	INFORMAT e_e_prime_lat BEST32.;
	FORMAT e_e_prime_lat BEST12.;

	INFORMAT mv_a_vti BEST32.;
	FORMAT mv_a_vti BEST12.;

	INFORMAT rrao BEST32.;
	FORMAT rrao BEST12.;

	INFORMAT rtoelat BEST32.;
	FORMAT rtoelat BEST12.;

	INFORMAT rtoaoend BEST32.;
	FORMAT rtoaoend BEST12.;

	INFORMAT rtoaobeg BEST32.;
	FORMAT rtoaobeg BEST12.;

	INFORMAT rtoesep BEST32.;
	FORMAT rtoesep BEST12.;

	INFORMAT rrmi BEST32.;
	FORMAT rrmi BEST12.;

	INFORMAT la_length_a4c_min BEST32.;
	FORMAT la_length_a4c_min BEST12.;

	INFORMAT rrsep BEST32.;
	FORMAT rrsep BEST12.;

	INFORMAT rtomibeg BEST32.;
	FORMAT rtomibeg BEST12.;

	INFORMAT la_a4_area_min BEST32.;
	FORMAT la_a4_area_min BEST12.;

	INFORMAT la_a4_vol_mod_min BEST32.;
	FORMAT la_a4_vol_mod_min BEST12.;

	INFORMAT la_vol_bp_mod_max_index BEST32.;
	FORMAT la_vol_bp_mod_max_index BEST12.;

	INFORMAT height_mmode BEST32.;
	FORMAT height_mmode BEST12.;

	INFORMAT time_mmode BEST32.;
	FORMAT time_mmode BEST12.;

	INFORMAT la_a2_area_min BEST32.;
	FORMAT la_a2_area_min BEST12.;

	INFORMAT la_vol_bp_mod_min BEST32.;
	FORMAT la_vol_bp_mod_min BEST12.;

	INFORMAT rap_systole BEST32.;
	FORMAT rap_systole BEST12.;

	INFORMAT ao_diam_dias BEST32.;
	FORMAT ao_diam_dias BEST12.;

	INFORMAT rvsp BEST32.;
	FORMAT rvsp BEST12.;

	INFORMAT ao_diam_sys BEST32.;
	FORMAT ao_diam_sys BEST12.;

	INFORMAT asc_aorta BEST32.;
	FORMAT asc_aorta BEST12.;

	INFORMAT ivsd_bulge BEST32.;
	FORMAT ivsd_bulge BEST12.;

	INFORMAT cca_intern_dia BEST32.;
	FORMAT cca_intern_dia BEST12.;

	INFORMAT cca_intern_sys BEST32.;
	FORMAT cca_intern_sys BEST12.;

	INFORMAT ivsd_bulgedist BEST32.;
	FORMAT ivsd_bulgedist BEST12.;

	INFORMAT lvpws BEST32.;
	FORMAT lvpws BEST12.;

	INFORMAT pct_lvpw_thick BEST32.;
	FORMAT pct_lvpw_thick BEST12.;

	INFORMAT ef_bp_templ BEST32.;
	FORMAT ef_bp_templ BEST12.;

	INFORMAT edv_bp_templ BEST32.;
	FORMAT edv_bp_templ BEST12.;

	INFORMAT es_bp_templ BEST32.;
	FORMAT es_bp_templ BEST12.;

	INFORMAT tv_v2_max BEST32.;
	FORMAT tv_v2_max BEST12.;

	INFORMAT tv_max_pg BEST32.;
	FORMAT tv_max_pg BEST12.;

	INFORMAT imt_calc BEST32.;
	FORMAT imt_calc BEST12.;

	INFORMAT pa_v2_max BEST32.;
	FORMAT pa_v2_max BEST12.;

	INFORMAT pa_max_pg BEST32.;
	FORMAT pa_max_pg BEST12.;

	INFORMAT ivss BEST32.;
	FORMAT ivss BEST12.;

	INFORMAT pct_ivs_thick BEST32.;
	FORMAT pct_ivs_thick BEST12.;

	INFORMAT lv_mass_c_s BEST32.;
	FORMAT lv_mass_c_s BEST12.;

	INFORMAT lv_mass_end_sys BEST32.;
	FORMAT lv_mass_end_sys BEST12.;

	INFORMAT lv_mass_end_dias BEST32.;
	FORMAT lv_mass_end_dias BEST12.;

	INFORMAT slope_mmode BEST32.;
	FORMAT slope_mmode BEST12.;

	INFORMAT ef_3dq_phl BEST32.;
	FORMAT ef_3dq_phl BEST12.;

	INFORMAT esv_3dq_phl BEST32.;
	FORMAT esv_3dq_phl BEST12.;

	INFORMAT edv_3dq_phl BEST32.;
	FORMAT edv_3dq_phl BEST12.;

	INFORMAT aortic_arch_asc BEST32.;
	FORMAT aortic_arch_asc BEST12.;

	INFORMAT lv_mass_c_sl BEST32.;
	FORMAT lv_mass_c_sl BEST12.;

	INFORMAT long_strain_ap4_acmq_phl BEST32.;
	FORMAT long_strain_ap4_acmq_phl BEST12.;

	INFORMAT ai_dec_slope BEST32.;
	FORMAT ai_dec_slope BEST12.;

	INFORMAT time_physio BEST32.;
	FORMAT time_physio BEST12.;

	INFORMAT ai_max_vel BEST32.;
	FORMAT ai_max_vel BEST12.;

	INFORMAT ai_max_pg BEST32.;
	FORMAT ai_max_pg BEST12.;

	INFORMAT ai_p_1_2t BEST32.;
	FORMAT ai_p_1_2t BEST12.;

	INFORMAT la_length_vol BEST32.;
	FORMAT la_length_vol BEST12.;

	INFORMAT la_a4_area BEST32.;
	FORMAT la_a4_area BEST12.;

	INFORMAT pi_end_d_vel BEST32.;
	FORMAT pi_end_d_vel BEST12.;

	INFORMAT la_vol BEST32.;
	FORMAT la_vol BEST12.;

	INFORMAT la_a2_area BEST32.;
	FORMAT la_a2_area BEST12.;

	INFORMAT lpulv_a_max_vel BEST32.;
	FORMAT lpulv_a_max_vel BEST12.;

	INFORMAT la_vol_index BEST32.;
	FORMAT la_vol_index BEST12.;

	INFORMAT lpulv_d_max_vel BEST32.;
	FORMAT lpulv_d_max_vel BEST12.;

	INFORMAT lpulv_s2_max_vel BEST32.;
	FORMAT lpulv_s2_max_vel BEST12.;

	INFORMAT circ_strain_sax_m__acmq__phl BEST32.;
	FORMAT circ_strain_sax_m__acmq__phl BEST12.;

	INFORMAT lpulv_s_d_ratio BEST32.;
	FORMAT lpulv_s_d_ratio BEST12.;

	INFORMAT lvot_2_diam BEST32.;
	FORMAT lvot_2_diam BEST12.;

	INFORMAT edv_ap4_acmq_phl BEST32.;
	FORMAT edv_ap4_acmq_phl BEST12.;

	INFORMAT esv_ap4_acmq_phl BEST32.;
	FORMAT esv_ap4_acmq_phl BEST12.;

	INFORMAT ef_ap4_acmq_phl BEST32.;
	FORMAT ef_ap4_acmq_phl BEST12.;

	INFORMAT pulm_a_revs_dur BEST32.;
	FORMAT pulm_a_revs_dur BEST12.;

	INFORMAT area BEST32.;
	FORMAT area BEST12.;

	INFORMAT circ BEST32.;
	FORMAT circ BEST12.;

	INFORMAT long_strain_ap2_acmq_phl BEST32.;
	FORMAT long_strain_ap2_acmq_phl BEST12.;

	INFORMAT la_vol_mod BEST32.;
	FORMAT la_vol_mod BEST12.;

	INFORMAT rvdd BEST32.;
	FORMAT rvdd BEST12.;

	INFORMAT mv_v2_max BEST32.;
	FORMAT mv_v2_max BEST12.;

	INFORMAT av_p1_2t_pr_phl_ratio BEST32.;
	FORMAT av_p1_2t_pr_phl_ratio BEST12.;

	INFORMAT mv_max_pg BEST32.;
	FORMAT mv_max_pg BEST12.;

	INFORMAT lvas_apical BEST32.;
	FORMAT lvas_apical BEST12.;

	INFORMAT la_a4area_prep BEST32.;
	FORMAT la_a4area_prep BEST12.;

	INFORMAT la_length_prep BEST32.;
	FORMAT la_length_prep BEST12.;

	INFORMAT la_a4_vol_mod_prep BEST32.;
	FORMAT la_a4_vol_mod_prep BEST12.;

	INFORMAT mv_mean_pg BEST32.;
	FORMAT mv_mean_pg BEST12.;

	INFORMAT mv_v2_mean BEST32.;
	FORMAT mv_v2_mean BEST12.;

	INFORMAT mv_v2_vti BEST32.;
	FORMAT mv_v2_vti BEST12.;

	INFORMAT la_a2_area_prep BEST32.;
	FORMAT la_a2_area_prep BEST12.;

	INFORMAT mva_vti BEST32.;
	FORMAT mva_vti BEST12.;

	INFORMAT stroke_vol BEST32.;
	FORMAT stroke_vol BEST12.;

	INFORMAT lat_e_prime_area BEST32.;
	FORMAT lat_e_prime_area BEST12.;

	INFORMAT la_vol_bp_mod_prep BEST32.;
	FORMAT la_vol_bp_mod_prep BEST12.;

	INFORMAT tmsv_16_dif_ms_ BEST32.;
	FORMAT tmsv_16_dif_ms_ BEST12.;

	INFORMAT lvad_apical BEST32.;
	FORMAT lvad_apical BEST12.;

	INFORMAT tmsv_16_sd_ms_ BEST32.;
	FORMAT tmsv_16_sd_ms_ BEST12.;

	INFORMAT tmsv_12_sd_ms_ BEST32.;
	FORMAT tmsv_12_sd_ms_ BEST12.;

	INFORMAT tmsv_6_sd_ms_ BEST32.;
	FORMAT tmsv_6_sd_ms_ BEST12.;

	INFORMAT lv_excursion_max BEST32.;
	FORMAT lv_excursion_max BEST12.;

	INFORMAT tmsv_12_dif_ms_ BEST32.;
	FORMAT tmsv_12_dif_ms_ BEST12.;

	INFORMAT tmsv_6_sd_pct BEST32.;
	FORMAT tmsv_6_sd_pct BEST12.;

	INFORMAT lv_excursion_min BEST32.;
	FORMAT lv_excursion_min BEST12.;

	INFORMAT lv_excursion_sd BEST32.;
	FORMAT lv_excursion_sd BEST12.;

	INFORMAT lv_excursion_avg BEST32.;
	FORMAT lv_excursion_avg BEST12.;

	INFORMAT r_r_time BEST32.;
	FORMAT r_r_time BEST12.;

	INFORMAT tmsv_6_dif_pct BEST32.;
	FORMAT tmsv_6_dif_pct BEST12.;

	INFORMAT tmsv_16_dif_pct BEST32.;
	FORMAT tmsv_16_dif_pct BEST12.;

	INFORMAT tmsv_12_dif_pct BEST32.;
	FORMAT tmsv_12_dif_pct BEST12.;

	INFORMAT tmsv_12_sd_pct BEST32.;
	FORMAT tmsv_12_sd_pct BEST12.;

	INFORMAT tmsv_16_sd_pct BEST32.;
	FORMAT tmsv_16_sd_pct BEST12.;

	INFORMAT tmsv_6_dif_ms BEST32.;
	FORMAT tmsv_6_dif_ms BEST12.;

	INFORMAT pi_max_pg BEST32.;
	FORMAT pi_max_pg BEST12.;

	INFORMAT pi_max_vel BEST32.;
	FORMAT pi_max_vel BEST12.;

	INFORMAT esv_3dqa_phl BEST32.;
	FORMAT esv_3dqa_phl BEST12.;

	INFORMAT tmsv_3_6_phl BEST32.;
	FORMAT tmsv_3_6_phl BEST12.;

	INFORMAT ef_3dqa_phl BEST32.;
	FORMAT ef_3dqa_phl BEST12.;

	INFORMAT edv_3dqa_phl BEST32.;
	FORMAT edv_3dqa_phl BEST12.;

	INFORMAT long_strain_ap3_acmq_phl BEST32.;
	FORMAT long_strain_ap3_acmq_phl BEST12.;

	INFORMAT tmsv_3_5_phl BEST32.;
	FORMAT tmsv_3_5_phl BEST12.;

	INFORMAT tmsv_3_6_pct_phl BEST32.;
	FORMAT tmsv_3_6_pct_phl BEST12.;

	INFORMAT tmsv_3_5_pct_phl BEST32.;
	FORMAT tmsv_3_5_pct_phl BEST12.;

	INFORMAT vcf_mean BEST32.;
	FORMAT vcf_mean BEST12.;

	INFORMAT lvet BEST32.;
	FORMAT lvet BEST12.;

	INFORMAT fac_sax_m_acmq_phl BEST32.;
	FORMAT fac_sax_m_acmq_phl BEST12.;

	INFORMAT eda_sax_m_acmq_phl BEST32.;
	FORMAT eda_sax_m_acmq_phl BEST12.;

	INFORMAT esa_sax_m_acmq_phl BEST32.;
	FORMAT esa_sax_m_acmq_phl BEST12.;

	INFORMAT cak1_ap4_mv BEST32.;
	FORMAT cak1_ap4_mv BEST12.;

	INFORMAT midpoint_ap4_mv BEST32.;
	FORMAT midpoint_ap4_mv BEST12.;

	INFORMAT acs BEST32.;
	FORMAT acs BEST12.;

	INFORMAT cak2_ap4_mv BEST32.;
	FORMAT cak2_ap4_mv BEST12.;

	INFORMAT midpoint_norm_ap4_mv BEST32.;
	FORMAT midpoint_norm_ap4_mv BEST12.;

	INFORMAT ef_ap2_acmq_phl BEST32.;
	FORMAT ef_ap2_acmq_phl BEST12.;

	INFORMAT esv_ap2_acmq_phl BEST32.;
	FORMAT esv_ap2_acmq_phl BEST12.;

	INFORMAT edv_ap2_acmq_phl BEST32.;
	FORMAT edv_ap2_acmq_phl BEST12.;

	INFORMAT lvls_apical BEST32.;
	FORMAT lvls_apical BEST12.;

	INFORMAT ef_bi_plane_acmq_phl BEST32.;
	FORMAT ef_bi_plane_acmq_phl BEST12.;

	INFORMAT edv_bi_plane_acmq_phl BEST32.;
	FORMAT edv_bi_plane_acmq_phl BEST12.;

	INFORMAT esv_bi_plane_acmq_phl BEST32.;
	FORMAT esv_bi_plane_acmq_phl BEST12.;

	INFORMAT global_long_strain_acmq_phl BEST32.;
	FORMAT global_long_strain_acmq_phl BEST12.;

	INFORMAT lvad_ap2 BEST32.;
	FORMAT lvad_ap2 BEST12.;

	INFORMAT lvld_ap2 BEST32.;
	FORMAT lvld_ap2 BEST12.;

	INFORMAT edv_mod_sp2 BEST32.;
	FORMAT edv_mod_sp2 BEST12.;

	INFORMAT med_e_prime_area BEST32.;
	FORMAT med_e_prime_area BEST12.;

	INFORMAT edv_sp2_el BEST32.;
	FORMAT edv_sp2_el BEST12.;

	INFORMAT lat_a_prime_area BEST32.;
	FORMAT lat_a_prime_area BEST12.;

	INFORMAT edv_mod_bp BEST32.;
	FORMAT edv_mod_bp BEST12.;

	INFORMAT lvld_pct_diff BEST32.;
	FORMAT lvld_pct_diff BEST12.;

	INFORMAT circ_strain_sax_b_acmq_phl BEST32.;
	FORMAT circ_strain_sax_b_acmq_phl BEST12.;

	INFORMAT rvas_ap4 BEST32.;
	FORMAT rvas_ap4 BEST12.;

	INFORMAT rv_fac BEST32.;
	FORMAT rv_fac BEST12.;

	INFORMAT rvad_ap4 BEST32.;
	FORMAT rvad_ap4 BEST12.;

	INFORMAT mm_r_r_int_msec BEST32.;
	FORMAT mm_r_r_int_msec BEST12.;

	INFORMAT mm_hr BEST32.;
	FORMAT mm_hr BEST12.;

	INFORMAT co_teich BEST32.;
	FORMAT co_teich BEST12.;

	INFORMAT mm_r_r_int BEST32.;
	FORMAT mm_r_r_int BEST12.;

	INFORMAT co_cubed BEST32.;
	FORMAT co_cubed BEST12.;

	INFORMAT edv_3d_vol BEST32.;
	FORMAT edv_3d_vol BEST12.;

	INFORMAT esv_3d_vol BEST32.;
	FORMAT esv_3d_vol BEST12.;

	INFORMAT ef_3d_vol BEST32.;
	FORMAT ef_3d_vol BEST12.;

	INFORMAT ci_cubed BEST32.;
	FORMAT ci_cubed BEST12.;

	INFORMAT ci_teich BEST32.;
	FORMAT ci_teich BEST12.;

	INFORMAT esv_mod_sp2 BEST32.;
	FORMAT esv_mod_sp2 BEST12.;

	INFORMAT cca_sax_intern_sys BEST32.;
	FORMAT cca_sax_intern_sys BEST12.;

	INFORMAT cca_sax_intern_dia BEST32.;
	FORMAT cca_sax_intern_dia BEST12.;

	INFORMAT med_a_prime_area BEST32.;
	FORMAT med_a_prime_area BEST12.;

	INFORMAT lvls_ap2 BEST32.;
	FORMAT lvls_ap2 BEST12.;

	INFORMAT lvas_ap2 BEST32.;
	FORMAT lvas_ap2 BEST12.;

	INFORMAT mr_max_pg BEST32.;
	FORMAT mr_max_pg BEST12.;

	INFORMAT mr_max_vel BEST32.;
	FORMAT mr_max_vel BEST12.;

	INFORMAT esv_sp2_el BEST32.;
	FORMAT esv_sp2_el BEST12.;

	INFORMAT aorta_thoracic BEST32.;
	FORMAT aorta_thoracic BEST12.;

	INFORMAT lvls_pctdiff BEST32.;
	FORMAT lvls_pctdiff BEST12.;

	INFORMAT esv_mod_bp BEST32.;
	FORMAT esv_mod_bp BEST12.;

	INFORMAT aortic_r_r BEST32.;
	FORMAT aortic_r_r BEST12.;

	INFORMAT aortic_hr BEST32.;
	FORMAT aortic_hr BEST12.;

	INFORMAT ai_accel_time BEST32.;
	FORMAT ai_accel_time BEST12.;

	INFORMAT pi_dec_slope BEST32.;
	FORMAT pi_dec_slope BEST12.;

	INFORMAT ci_ao BEST32.;
	FORMAT ci_ao BEST12.;

	INFORMAT co_ao BEST32.;
	FORMAT co_ao BEST12.;

	INFORMAT mr_pisa_radius BEST32.;
	FORMAT mr_pisa_radius BEST12.;

	INFORMAT mr_pisa BEST32.;
	FORMAT mr_pisa BEST12.;

	INFORMAT sv_mod_sp2 BEST32.;
	FORMAT sv_mod_sp2 BEST12.;

	INFORMAT sv_sp2_el BEST32.;
	FORMAT sv_sp2_el BEST12.;

	INFORMAT ef_sp2_el BEST32.;
	FORMAT ef_sp2_el BEST12.;

	INFORMAT si_sp2_el BEST32.;
	FORMAT si_sp2_el BEST12.;

	INFORMAT si_mod_sp2 BEST32.;
	FORMAT si_mod_sp2 BEST12.;

	INFORMAT mva_traced BEST32.;
	FORMAT mva_traced BEST12.;

	INFORMAT ef_mod_sp2 BEST32.;
	FORMAT ef_mod_sp2 BEST12.;

	INFORMAT pi_p1_ratio_2t BEST32.;
	FORMAT pi_p1_ratio_2t BEST12.;

	INFORMAT si_mod_bp BEST32.;
	FORMAT si_mod_bp BEST12.;

	INFORMAT ef_mod_bp BEST32.;
	FORMAT ef_mod_bp BEST12.;

	INFORMAT ai_vti BEST32.;
	FORMAT ai_vti BEST12.;

	INFORMAT sv_mod_bp BEST32.;
	FORMAT sv_mod_bp BEST12.;

	INFORMAT co_sp4_el BEST32.;
	FORMAT co_sp4_el BEST12.;

	INFORMAT pa_v2_mean BEST32.;
	FORMAT pa_v2_mean BEST12.;

	INFORMAT mr_mean_vel BEST32.;
	FORMAT mr_mean_vel BEST12.;

	INFORMAT pa_mean_pg BEST32.;
	FORMAT pa_mean_pg BEST12.;

	INFORMAT ci_lvot BEST32.;
	FORMAT ci_lvot BEST12.;

	INFORMAT co_lvot BEST32.;
	FORMAT co_lvot BEST12.;

	INFORMAT mr_mean_pg BEST32.;
	FORMAT mr_mean_pg BEST12.;

	INFORMAT ci_mod_sp4 BEST32.;
	FORMAT ci_mod_sp4 BEST12.;

	INFORMAT co_mod_sp4 BEST32.;
	FORMAT co_mod_sp4 BEST12.;

	INFORMAT mr_vti BEST32.;
	FORMAT mr_vti BEST12.;

	INFORMAT ci_sp4_el BEST32.;
	FORMAT ci_sp4_el BEST12.;

	INFORMAT rvdd2 BEST32.;
	FORMAT rvdd2 BEST12.;

	INFORMAT pa_v2_vti BEST32.;
	FORMAT pa_v2_vti BEST12.;

	INFORMAT mv_diam BEST32.;
	FORMAT mv_diam BEST12.;

	INFORMAT mv_flow_area_1diam BEST32.;
	FORMAT mv_flow_area_1diam BEST12.;

	INFORMAT mv_area_1_diam BEST32.;
	FORMAT mv_area_1_diam BEST12.;

	INFORMAT circ_strain_sax_a_acmq_phl BEST32.;
	FORMAT circ_strain_sax_a_acmq_phl BEST12.;

	INFORMAT mr_alias_vel BEST32.;
	FORMAT mr_alias_vel BEST12.;

	INFORMAT tapse_phl BEST32.;
	FORMAT tapse_phl BEST12.;

	INFORMAT av_2d_area_trace BEST32.;
	FORMAT av_2d_area_trace BEST12.;

	INFORMAT mr_flow_rate BEST32.;
	FORMAT mr_flow_rate BEST12.;

	INFORMAT pa_pr_accel BEST32.;
	FORMAT pa_pr_accel BEST12.;

	INFORMAT rvet BEST32.;
	FORMAT rvet BEST12.;

	INFORMAT pa_acc_slope BEST32.;
	FORMAT pa_acc_slope BEST12.;

	INFORMAT pa_acc_time BEST32.;
	FORMAT pa_acc_time BEST12.;

	INFORMAT rv_max_pg BEST32.;
	FORMAT rv_max_pg BEST12.;

	INFORMAT rv_v1_max BEST32.;
	FORMAT rv_v1_max BEST12.;

	INFORMAT mpa_area BEST32.;
	FORMAT mpa_area BEST12.;

	INFORMAT rf_pv_ao BEST32.;
	FORMAT rf_pv_ao BEST12.;

	INFORMAT pulm_r_r BEST32.;
	FORMAT pulm_r_r BEST12.;

	INFORMAT ai_end_d_vel BEST32.;
	FORMAT ai_end_d_vel BEST12.;

	INFORMAT mr_volume BEST32.;
	FORMAT mr_volume BEST12.;

	INFORMAT si_pv BEST32.;
	FORMAT si_pv BEST12.;

	INFORMAT tv_v2_vti BEST32.;
	FORMAT tv_v2_vti BEST12.;

	INFORMAT tv_mean_pg BEST32.;
	FORMAT tv_mean_pg BEST12.;

	INFORMAT tv_v2_mean BEST32.;
	FORMAT tv_v2_mean BEST12.;

	INFORMAT qp_ratio_qs_v_ao BEST32.;
	FORMAT qp_ratio_qs_v_ao BEST12.;

	INFORMAT asd_diam BEST32.;
	FORMAT asd_diam BEST12.;

	INFORMAT pulm_hr BEST32.;
	FORMAT pulm_hr BEST12.;

	INFORMAT mr_ero BEST32.;
	FORMAT mr_ero BEST12.;

	INFORMAT cca_area_sys BEST32.;
	FORMAT cca_area_sys BEST12.;

	INFORMAT cca_area_dia BEST32.;
	FORMAT cca_area_dia BEST12.;

	INFORMAT rf_ao_pv BEST32.;
	FORMAT rf_ao_pv BEST12.;

	INFORMAT sv_pv BEST32.;
	FORMAT sv_pv BEST12.;

	INFORMAT rrtomi BEST32.;
	FORMAT rrtomi BEST12.;

	INFORMAT mpa_diam BEST32.;
	FORMAT mpa_diam BEST12.;

	INFORMAT as_max_pg BEST32.;
	FORMAT as_max_pg BEST12.;

	INFORMAT mv_p1_ratio_2t_pr_phl BEST32.;
	FORMAT mv_p1_ratio_2t_pr_phl BEST12.;

	INFORMAT lav_mod_sp2_phl BEST32.;
	FORMAT lav_mod_sp2_phl BEST12.;

	INFORMAT rf_lvot_pv BEST32.;
	FORMAT rf_lvot_pv BEST12.;

	INFORMAT long_str_tp_apl_tmq BEST32.;
	FORMAT long_str_tp_apl_tmq BEST12.;

	INFORMAT ao_stj_diam_phl $1.;
	FORMAT ao_stj_diam_phl $1.;

	INFORMAT ao_ann_area_phl BEST32.;
	FORMAT ao_ann_area_phl BEST12.;

	INFORMAT lav_mod_bp_indexed_phl BEST32.;
	FORMAT lav_mod_bp_indexed_phl BEST12.;

	INFORMAT mv_dfp BEST32.;
	FORMAT mv_dfp BEST12.;

	INFORMAT as_max_vel BEST32.;
	FORMAT as_max_vel BEST12.;

	INFORMAT qp_ratio_qs_v_lvot BEST32.;
	FORMAT qp_ratio_qs_v_lvot BEST12.;

	INFORMAT global_circ_strain_acmq_phl $1.;
	FORMAT global_circ_strain_acmq_phl $1.;

	INFORMAT pa_max_pg_full BEST32.;
	FORMAT pa_max_pg_full BEST12.;

	INFORMAT lav_mod_sp4_phl BEST32.;
	FORMAT lav_mod_sp4_phl BEST12.;

	INFORMAT lav_mod_bp_phl BEST32.;
	FORMAT lav_mod_bp_phl BEST12.;

	INFORMAT aortic_arch_trans_2d BEST32.;
	FORMAT aortic_arch_trans_2d BEST12.;

	INFORMAT lvld_apical BEST32.;
	FORMAT lvld_apical BEST12.;

	INFORMAT ao_acc_time BEST32.;
	FORMAT ao_acc_time BEST12.;

	INFORMAT long_str_tp_delay_mal_mis_tmq BEST32.;
	FORMAT long_str_tp_delay_mal_mis_tmq BEST12.;

	INFORMAT lv_dp_ratio_dt_time BEST32.;
	FORMAT lv_dp_ratio_dt_time BEST12.;

	INFORMAT lv_dp_ratio_dt_meas BEST32.;
	FORMAT lv_dp_ratio_dt_meas BEST12.;

	INFORMAT long_str_tp_delay_bal_bis_tmq BEST32.;
	FORMAT long_str_tp_delay_bal_bis_tmq BEST12.;

	INFORMAT vsd_max_pg BEST32.;
	FORMAT vsd_max_pg BEST12.;

	INFORMAT mv_e_velocity_valsalva BEST32.;
	FORMAT mv_e_velocity_valsalva BEST12.;

	INFORMAT pda_max_sys_vel BEST32.;
	FORMAT pda_max_sys_vel BEST12.;

	INFORMAT pda_max_dias_vel BEST32.;
	FORMAT pda_max_dias_vel BEST12.;

	INFORMAT ap4_sp_ef_sm_md BEST32.;
	FORMAT ap4_sp_ef_sm_md BEST12.;

	INFORMAT ap4_sp_esv_sm_md BEST32.;
	FORMAT ap4_sp_esv_sm_md BEST12.;

	INFORMAT ap4_sp_edv_sm_md BEST32.;
	FORMAT ap4_sp_edv_sm_md BEST12.;

	INFORMAT rf_pv_lvot BEST32.;
	FORMAT rf_pv_lvot BEST12.;

	INFORMAT long_str_tp_delay_aplaps_tmq BEST32.;
	FORMAT long_str_tp_delay_aplaps_tmq BEST12.;

	INFORMAT lvot_accel_slope BEST32.;
	FORMAT lvot_accel_slope BEST12.;

	INFORMAT long_str_tp_mis_tmq BEST32.;
	FORMAT long_str_tp_mis_tmq BEST12.;

	INFORMAT long_str_tp_mal_tmq BEST32.;
	FORMAT long_str_tp_mal_tmq BEST12.;

	INFORMAT ai_accel_slope BEST32.;
	FORMAT ai_accel_slope BEST12.;

	INFORMAT edv BEST32.;
	FORMAT edv BEST12.;

	INFORMAT long_str_tp_bis_tmq BEST32.;
	FORMAT long_str_tp_bis_tmq BEST12.;

	INFORMAT psv BEST32.;
	FORMAT psv BEST12.;

	INFORMAT long_str_tp_bal_tmq BEST32.;
	FORMAT long_str_tp_bal_tmq BEST12.;

	INFORMAT aortic_arch_trans BEST32.;
	FORMAT aortic_arch_trans BEST12.;

	INFORMAT aorta_abd BEST32.;
	FORMAT aorta_abd BEST12.;

	INFORMAT aortic_root_leadingedge BEST32.;
	FORMAT aortic_root_leadingedge BEST12.;

	INFORMAT ao_root_diam_2d BEST32.;
	FORMAT ao_root_diam_2d BEST12.;

	INFORMAT vsd_max_vel BEST32.;
	FORMAT vsd_max_vel BEST12.;

	INFORMAT ao_acc_slope BEST32.;
	FORMAT ao_acc_slope BEST12.;

	INFORMAT ivct BEST32.;
	FORMAT ivct BEST12.;

	INFORMAT lvot_accel_time BEST32.;
	FORMAT lvot_accel_time BEST12.;

	INFORMAT long_str_tp_aps_tmq BEST32.;
	FORMAT long_str_tp_aps_tmq BEST12.;

	INPUT
		id_addi
		visit
		systolicpressure
		diastolicpressure
		lvpwd
		ivsd
		lvidd
		edv_teich
		edv_cubed
		ivs_lvpw_ratio
		lv_mass_c_d
		la_dimension
		lvids
		ao_root_diam
		esv_cubed
		esv_teich
		sv_teich
		ef_cubed
		fs
		ef_teich
		sv_cubed
		ao_root_area
		mv_e_point
		lvot_diam
		lvot_area
		mv_a_point
		la_ao_ratio
		mv_e_a_ratio
		bsa
		lv_mass_c_dl
		lv_v1_max
		si_cubed
		si_teich
		lv_max_pg
		ao_v2_max
		ao_max_pg
		lv_v1_vti
		lv_mean_pg
		lv_v1_mean
		ao_mean_pg
		ao_v2_vti
		ao_v2_mean
		sv_lvot
		sv_ao
		ao_max_pg_full
		si_lvot
		lv_ivrt
		ava_v_d
		ava_v_a
		si_ao
		ao_mean_pg_full
		ava_i_a
		ava_i_d
		ava_dimensionless
		bzi_metric_weight
		bzi_bmi
		bsa_haycock
		bzi_metric_height
		length
		edv_mod_sp4
		lvld_ap4
		lvad_ap4
		esv_mod_sp4
		lvls_ap4
		sv_mod_sp4
		ef_mod_sp4
		lvas_ap4
		si_mod_sp4
		mv_dec_time
		bzi_systolic_pressure
		bzi_diastolic_pressure
		ivsd_1
		ivsd_3
		ivsd_2
		max_pg
		max_v
		bzi_heart_rate
		la_a4_area_max
		la_length_a4c_max
		la_a4_vol_mod_max
		lvot_area_m
		la_a4_vol_mod_max_index
		time_dop
		slope_dop
		mv_dec_slope
		imt_measure
		edv_sp4_el
		esv_sp4_el
		sv_sp_el
		ef_sp_el
		rvdd1
		med_peak_e_vel
		e_e_prime_med
		si_sp4_el
		tapse
		mean_v
		vti
		mean_pg
		mv_p_1_2t_max_vel
		mva_p_1_2t
		mv_p_1_2t
		la_a2_area_max
		vol_by_mod
		vol_area
		vol_circ
		vol_length
		tr_max_vel
		la_vol_bp_mod_max
		vol_by_spe
		tr_max_pg
		lat_peak_e_prime_vel
		pulm_dias_vel
		pulm_sys_vel
		lat_a_prime_vel
		pulm_s_d
		lat_peak_s_vel
		med_peak_s_vel
		pulm_a_revs_vel
		rrlat
		med_peak_a_prime_vel
		mv_e_vti
		e_e_prime_lat
		mv_a_vti
		rrao
		rtoelat
		rtoaoend
		rtoaobeg
		rtoesep
		rrmi
		la_length_a4c_min
		rrsep
		rtomibeg
		la_a4_area_min
		la_a4_vol_mod_min
		la_vol_bp_mod_max_index
		height_mmode
		time_mmode
		la_a2_area_min
		la_vol_bp_mod_min
		rap_systole
		ao_diam_dias
		rvsp
		ao_diam_sys
		asc_aorta
		ivsd_bulge
		cca_intern_dia
		cca_intern_sys
		ivsd_bulgedist
		lvpws
		pct_lvpw_thick
		ef_bp_templ
		edv_bp_templ
		es_bp_templ
		tv_v2_max
		tv_max_pg
		imt_calc
		pa_v2_max
		pa_max_pg
		ivss
		pct_ivs_thick
		lv_mass_c_s
		lv_mass_end_sys
		lv_mass_end_dias
		slope_mmode
		ef_3dq_phl
		esv_3dq_phl
		edv_3dq_phl
		aortic_arch_asc
		lv_mass_c_sl
		long_strain_ap4_acmq_phl
		ai_dec_slope
		time_physio
		ai_max_vel
		ai_max_pg
		ai_p_1_2t
		la_length_vol
		la_a4_area
		pi_end_d_vel
		la_vol
		la_a2_area
		lpulv_a_max_vel
		la_vol_index
		lpulv_d_max_vel
		lpulv_s2_max_vel
		circ_strain_sax_m__acmq__phl
		lpulv_s_d_ratio
		lvot_2_diam
		edv_ap4_acmq_phl
		esv_ap4_acmq_phl
		ef_ap4_acmq_phl
		pulm_a_revs_dur
		area
		circ
		long_strain_ap2_acmq_phl
		la_vol_mod
		rvdd
		mv_v2_max
		av_p1_2t_pr_phl_ratio
		mv_max_pg
		lvas_apical
		la_a4area_prep
		la_length_prep
		la_a4_vol_mod_prep
		mv_mean_pg
		mv_v2_mean
		mv_v2_vti
		la_a2_area_prep
		mva_vti
		stroke_vol
		lat_e_prime_area
		la_vol_bp_mod_prep
		tmsv_16_dif_ms_
		lvad_apical
		tmsv_16_sd_ms_
		tmsv_12_sd_ms_
		tmsv_6_sd_ms_
		lv_excursion_max
		tmsv_12_dif_ms_
		tmsv_6_sd_pct
		lv_excursion_min
		lv_excursion_sd
		lv_excursion_avg
		r_r_time
		tmsv_6_dif_pct
		tmsv_16_dif_pct
		tmsv_12_dif_pct
		tmsv_12_sd_pct
		tmsv_16_sd_pct
		tmsv_6_dif_ms
		pi_max_pg
		pi_max_vel
		esv_3dqa_phl
		tmsv_3_6_phl
		ef_3dqa_phl
		edv_3dqa_phl
		long_strain_ap3_acmq_phl
		tmsv_3_5_phl
		tmsv_3_6_pct_phl
		tmsv_3_5_pct_phl
		vcf_mean
		lvet
		fac_sax_m_acmq_phl
		eda_sax_m_acmq_phl
		esa_sax_m_acmq_phl
		cak1_ap4_mv
		midpoint_ap4_mv
		acs
		cak2_ap4_mv
		midpoint_norm_ap4_mv
		ef_ap2_acmq_phl
		esv_ap2_acmq_phl
		edv_ap2_acmq_phl
		lvls_apical
		ef_bi_plane_acmq_phl
		edv_bi_plane_acmq_phl
		esv_bi_plane_acmq_phl
		global_long_strain_acmq_phl
		lvad_ap2
		lvld_ap2
		edv_mod_sp2
		med_e_prime_area
		edv_sp2_el
		lat_a_prime_area
		edv_mod_bp
		lvld_pct_diff
		circ_strain_sax_b_acmq_phl
		rvas_ap4
		rv_fac
		rvad_ap4
		mm_r_r_int_msec
		mm_hr
		co_teich
		mm_r_r_int
		co_cubed
		edv_3d_vol
		esv_3d_vol
		ef_3d_vol
		ci_cubed
		ci_teich
		esv_mod_sp2
		cca_sax_intern_sys
		cca_sax_intern_dia
		med_a_prime_area
		lvls_ap2
		lvas_ap2
		mr_max_pg
		mr_max_vel
		esv_sp2_el
		aorta_thoracic
		lvls_pctdiff
		esv_mod_bp
		aortic_r_r
		aortic_hr
		ai_accel_time
		pi_dec_slope
		ci_ao
		co_ao
		mr_pisa_radius
		mr_pisa
		sv_mod_sp2
		sv_sp2_el
		ef_sp2_el
		si_sp2_el
		si_mod_sp2
		mva_traced
		ef_mod_sp2
		pi_p1_ratio_2t
		si_mod_bp
		ef_mod_bp
		ai_vti
		sv_mod_bp
		co_sp4_el
		pa_v2_mean
		mr_mean_vel
		pa_mean_pg
		ci_lvot
		co_lvot
		mr_mean_pg
		ci_mod_sp4
		co_mod_sp4
		mr_vti
		ci_sp4_el
		rvdd2
		pa_v2_vti
		mv_diam
		mv_flow_area_1diam
		mv_area_1_diam
		circ_strain_sax_a_acmq_phl
		mr_alias_vel
		tapse_phl
		av_2d_area_trace
		mr_flow_rate
		pa_pr_accel
		rvet
		pa_acc_slope
		pa_acc_time
		rv_max_pg
		rv_v1_max
		mpa_area
		rf_pv_ao
		pulm_r_r
		ai_end_d_vel
		mr_volume
		si_pv
		tv_v2_vti
		tv_mean_pg
		tv_v2_mean
		qp_ratio_qs_v_ao
		asd_diam
		pulm_hr
		mr_ero
		cca_area_sys
		cca_area_dia
		rf_ao_pv
		sv_pv
		rrtomi
		mpa_diam
		as_max_pg
		mv_p1_ratio_2t_pr_phl
		lav_mod_sp2_phl
		rf_lvot_pv
		long_str_tp_apl_tmq
		ao_stj_diam_phl
		ao_ann_area_phl
		lav_mod_bp_indexed_phl
		mv_dfp
		as_max_vel
		qp_ratio_qs_v_lvot
		global_circ_strain_acmq_phl
		pa_max_pg_full
		lav_mod_sp4_phl
		lav_mod_bp_phl
		aortic_arch_trans_2d
		lvld_apical
		ao_acc_time
		long_str_tp_delay_mal_mis_tmq
		lv_dp_ratio_dt_time
		lv_dp_ratio_dt_meas
		long_str_tp_delay_bal_bis_tmq
		vsd_max_pg
		mv_e_velocity_valsalva
		pda_max_sys_vel
		pda_max_dias_vel
		ap4_sp_ef_sm_md
		ap4_sp_esv_sm_md
		ap4_sp_edv_sm_md
		rf_pv_lvot
		long_str_tp_delay_aplaps_tmq
		lvot_accel_slope
		long_str_tp_mis_tmq
		long_str_tp_mal_tmq
		ai_accel_slope
		edv
		long_str_tp_bis_tmq
		psv
		long_str_tp_bal_tmq
		aortic_arch_trans
		aorta_abd
		aortic_root_leadingedge
		ao_root_diam_2d
		vsd_max_vel
		ao_acc_slope
		ivct
		lvot_accel_time
		long_str_tp_aps_tmq
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		systolicpressure = "Systolic Blood Pressure (mmHg)"
		diastolicpressure = "Diastolic Blood Pressure (mmHg)"
		lvpwd = "Left ventricular posterior wall end diastole"
		ivsd = "Interventricular septal end diastole"
		lvidd = "Left ventricular internal diameter end diastole"
		edv_teich = "End-diastolic volume (Teichholz formula)"
		edv_cubed = "End-diastolic volume (Cube formula)"
		ivs_lvpw_ratio = "Septal to Posterior Wall Ratio"
		lv_mass_c_d = "LV mass(C)d"
		la_dimension = "LA dimension"
		lvids = "LVIDs"
		ao_root_diam = "Ao root diam"
		esv_cubed = "ESV(cubed)"
		esv_teich = "ESV(Teich)"
		sv_teich = "SV(Teich)"
		ef_cubed = "EF(cubed)"
		fs = "FS"
		ef_teich = "EF(Teich)"
		sv_cubed = "SV(cubed)"
		ao_root_area = "Ao root area"
		mv_e_point = "MV E point"
		lvot_diam = "LVOT diam"
		lvot_area = "LVOT area"
		mv_a_point = "MV A point"
		la_ao_ratio = "LA/Ao"
		mv_e_a_ratio = "MV E/A"
		bsa = "BSA"
		lv_mass_c_dl = "LV mass(C)dI"
		lv_v1_max = "LV V1 max"
		si_cubed = "SI(cubed)"
		si_teich = "SI(Teich)"
		lv_max_pg = "LV max PG"
		ao_v2_max = "Ao V2 max"
		ao_max_pg = "Ao max PG"
		lv_v1_vti = "LV V1 VTI"
		lv_mean_pg = "LV mean PG"
		lv_v1_mean = "LV V1 mean"
		ao_mean_pg = "Ao mean PG"
		ao_v2_vti = "Ao V2 VTI"
		ao_v2_mean = "Ao V2 mean"
		sv_lvot = "SV(LVOT)"
		sv_ao = "SV(Ao)"
		ao_max_pg_full = "Ao max PG (full)"
		si_lvot = "SI(LVOT)"
		lv_ivrt = "LV IVRT"
		ava_v_d = "AVA(V,D)                      "
		ava_v_a = "AVA(V,A)                      "
		si_ao = "SI(Ao)"
		ao_mean_pg_full = "Ao mean PG (full)"
		ava_i_a = "AVA(I,A)                      "
		ava_i_d = "AVA(I,D)                      "
		ava_dimensionless = "AVA (Dimensionless)"
		bzi_metric_weight = "BZI_Metric_Weight"
		bzi_bmi = "BZI_BMI"
		bsa_haycock = "BSA(Haycock)"
		bzi_metric_height = "BZI_Metric_Height"
		length = "Length"
		edv_mod_sp4 = "EDV(MOD-sp4)"
		lvld_ap4 = "LVLd ap4"
		lvad_ap4 = "LVAd ap4"
		esv_mod_sp4 = "ESV(MOD-sp4)"
		lvls_ap4 = "LVLs ap4"
		sv_mod_sp4 = "SV(MOD-sp4)"
		ef_mod_sp4 = "EF(MOD-sp4)"
		lvas_ap4 = "LVAs ap4"
		si_mod_sp4 = "SI(MOD-sp4)"
		mv_dec_time = "MV dec time"
		bzi_systolic_pressure = "BZI_Systolic_Pressure"
		bzi_diastolic_pressure = "BZI_Diastolic_Pressure"
		ivsd_1 = "IVSd_1"
		ivsd_3 = "IVSd_3"
		ivsd_2 = "IVSd_2"
		max_pg = "Max PG"
		max_v = "Max V"
		bzi_heart_rate = "BZI_Heart_Rate"
		la_a4_area_max = "LA_A4_Area_Max"
		la_length_a4c_max = "LA_Length_A4C_Max"
		la_a4_vol_mod_max = "LA_A4_Vol_mod_Max"
		lvot_area_m = "LVOT area (M)"
		la_a4_vol_mod_max_index = "LA_A4_VOl_Mod_max_index"
		time_dop = "Time (Dop)"
		slope_dop = "Slope (Dop)"
		mv_dec_slope = "MV dec slope"
		imt_measure = "IMT Measure"
		edv_sp4_el = "EDV(sp4-el)"
		esv_sp4_el = "ESV(sp4-el)"
		sv_sp_el = "SV(sp4-el)"
		ef_sp_el = "EF(sp4-el)"
		rvdd1 = "RVDd1"
		med_peak_e_vel = "Med Peak E' Vel"
		e_e_prime_med = "E/E' med"
		si_sp4_el = "SI(sp4-el)"
		tapse = "TAPSE"
		mean_v = "Mean V"
		vti = "VTI"
		mean_pg = "Mean PG"
		mv_p_1_2t_max_vel = "MV P1/2t max vel"
		mva_p_1_2t = "MVA(P1/2t)"
		mv_p_1_2t = "MV P1/2t"
		la_a2_area_max = "LA_A2_Area_Max"
		vol_by_mod = "Vol-by-MOD"
		vol_area = "Vol-area"
		vol_circ = "Vol-circ"
		vol_length = "Vol-length"
		tr_max_vel = "TR Max vel"
		la_vol_bp_mod_max = "LA_Vol_bp_MOD_max"
		vol_by_spe = "Vol-by-SPE"
		tr_max_pg = "TR Max PG"
		lat_peak_e_prime_vel = "Lat Peak E' Vel"
		pulm_dias_vel = "Pulm Dias Vel"
		pulm_sys_vel = "Pulm Sys Vel"
		lat_a_prime_vel = "Lat A' vel"
		pulm_s_d = "Pulm S/D"
		lat_peak_s_vel = "Lat Peak S Vel"
		med_peak_s_vel = "Med Peak S Vel"
		pulm_a_revs_vel = "Pulm A Revs Vel"
		rrlat = "RRlat"
		med_peak_a_prime_vel = "Med Peak A' Vel"
		mv_e_vti = "MV E VTI"
		e_e_prime_lat = "E/E' lat"
		mv_a_vti = "MV A VTI"
		rrao = "RRAo"
		rtoelat = "RtoElat"
		rtoaoend = "RtoAoEnd"
		rtoaobeg = "RtoAoBeg"
		rtoesep = "RtoEsep"
		rrmi = "RRMi"
		la_length_a4c_min = "LA_Length_A4C_Min"
		rrsep = "RRsep"
		rtomibeg = "RtoMiBeg"
		la_a4_area_min = "LA_A4_area_Min"
		la_a4_vol_mod_min = "LA_A4_Vol_mod_Min"
		la_vol_bp_mod_max_index = "LA_Vol_bp_Mod_max_index"
		height_mmode = "Height (MMode)"
		time_mmode = "Time (MMode)"
		la_a2_area_min = "LA_A2_Area_min"
		la_vol_bp_mod_min = "LA_Vol_bp_MOD_min"
		rap_systole = "RAP systole"
		ao_diam_dias = "Ao diam (dias)"
		rvsp = "RVSP"
		ao_diam_sys = "Ao diam (sys)"
		asc_aorta = "asc Aorta"
		ivsd_bulge = "IVSd_bulge"
		cca_intern_dia = "CCA_intern_dia"
		cca_intern_sys = "CCA_intern_sys"
		ivsd_bulgedist = "IVSD_bulgeDist"
		lvpws = "LVPWs"
		pct_lvpw_thick = "% LVPW thick"
		ef_bp_templ = "EF_BP-TEMPL"
		edv_bp_templ = "EDV_BP-TEMPL"
		es_bp_templ = "ESV_BP-TEMPL"
		tv_v2_max = "TV V2 max"
		tv_max_pg = "TV max PG"
		imt_calc = "IMT Calc"
		pa_v2_max = "PA V2 max"
		pa_max_pg = "PA max PG"
		ivss = "IVSs"
		pct_ivs_thick = "% IVS thick"
		lv_mass_c_s = "LV mass(C)s"
		lv_mass_end_sys = "LV Mass - End Sys"
		lv_mass_end_dias = "LV Mass - End Dias"
		slope_mmode = "Slope (MMode)"
		ef_3dq_phl = "EF(3DQ)_phl"
		esv_3dq_phl = "ESV(3DQ)_phl"
		edv_3dq_phl = "EDV(3DQ)_phl"
		aortic_arch_asc = "Aortic_arch_asc"
		lv_mass_c_sl = "LV mass(C)sI"
		long_strain_ap4_acmq_phl = "Long Strain(AP4)(aCMQ)_phl"
		ai_dec_slope = "AI dec slope"
		time_physio = "Time (Physio)"
		ai_max_vel = "AI max vel"
		ai_max_pg = "AI max PG"
		ai_p_1_2t = "AI P1/2t"
		la_length_vol = "LA length (vol)"
		la_a4_area = "LA A4 area"
		pi_end_d_vel = "PI end-d vel"
		la_vol = "LA vol"
		la_a2_area = "LA A2 area"
		lpulv_a_max_vel = "LPulV A max vel"
		la_vol_index = "LA vol index"
		lpulv_d_max_vel = "LPulV D max vel"
		lpulv_s2_max_vel = "LPulV S2 max vel"
		circ_strain_sax_m__acmq__phl = "Circ Strain(SAX-M)(aCMQ)_phl"
		lpulv_s_d_ratio = "LPulV S/D ratio"
		lvot_2_diam = "LVOT_2_diam"
		edv_ap4_acmq_phl = "EDV(AP4)(aCMQ)_phl"
		esv_ap4_acmq_phl = "ESV(AP4)(aCMQ)_phl"
		ef_ap4_acmq_phl = "EF(AP4)(aCMQ)_phl"
		pulm_a_revs_dur = "Pulm A Revs Dur"
		area = "Area"
		circ = "Circ"
		long_strain_ap2_acmq_phl = "Long Strain(AP2)(aCMQ)_phl"
		la_vol_mod = "LA VOL MOD"
		rvdd = "RVDd"
		mv_v2_max = "MV V2 max"
		av_p1_2t_pr_phl_ratio = "AV P1/2t-pr_phl"
		mv_max_pg = "MV max PG"
		lvas_apical = "LVAs apical"
		la_a4area_prep = "LA_A4area_preP"
		la_length_prep = "LA_Length_preP"
		la_a4_vol_mod_prep = "LA_A4_Vol_mod_PreP"
		mv_mean_pg = "MV mean PG"
		mv_v2_mean = "MV V2 mean"
		mv_v2_vti = "MV V2 VTI"
		la_a2_area_prep = "LA_A2_area_PreP"
		mva_vti = "MVA(VTI)"
		stroke_vol = "Stroke Vol"
		lat_e_prime_area = "Lat E' area"
		la_vol_bp_mod_prep = "LA_Vol_bp_MOD_PreP"
		tmsv_16_dif_ms_ = "Tmsv 16-DIF (ms)"
		lvad_apical = "LVAd apical"
		tmsv_16_sd_ms_ = "Tmsv 16-SD (ms)"
		tmsv_12_sd_ms_ = "Tmsv 12-SD (ms)"
		tmsv_6_sd_ms_ = "Tmsv 6-SD (ms)"
		lv_excursion_max = "LV Excursion - Max"
		tmsv_12_dif_ms_ = "Tmsv 12-DIF (ms)"
		tmsv_6_sd_pct = "Tmsv 6-SD (%)"
		lv_excursion_min = "LV Excursion - Min"
		lv_excursion_sd = "LV Excursion - SD"
		lv_excursion_avg = "LV Excursion - Avg"
		r_r_time = "R-R time"
		tmsv_6_dif_pct = "Tmsv 6-DIF (%)"
		tmsv_16_dif_pct = "Tmsv 16-DIF (%)"
		tmsv_12_dif_pct = "Tmsv 12-DIF (%)"
		tmsv_12_sd_pct = "Tmsv 12-SD (%)"
		tmsv_16_sd_pct = "Tmsv 16-SD (%)"
		tmsv_6_dif_ms = "Tmsv 6-DIF (ms)"
		pi_max_pg = "PI max PG"
		pi_max_vel = "PI max vel"
		esv_3dqa_phl = "ESV(3DQA)_phl"
		tmsv_3_6_phl = "Tmsv 3-6_phl"
		ef_3dqa_phl = "EF(3DQA)_phl"
		edv_3dqa_phl = "EDV(3DQA)_phl"
		long_strain_ap3_acmq_phl = "Long Strain(AP3)(aCMQ)_phl"
		tmsv_3_5_phl = "Tmsv 3-5_phl"
		tmsv_3_6_pct_phl = "Tmsv 3-6 (%)_phl"
		tmsv_3_5_pct_phl = "Tmsv 3-5 (%)_phl"
		vcf_mean = "Vcf mean"
		lvet = "LVET"
		fac_sax_m_acmq_phl = "FAC(SAX-M)(aCMQ)_phl"
		eda_sax_m_acmq_phl = "EDA(SAX-M)(aCMQ)_phl"
		esa_sax_m_acmq_phl = "ESA(SAX-M)(aCMQ)_phl"
		cak1_ap4_mv = "CAK1 AP4 (MV)"
		midpoint_ap4_mv = "MidPoint AP4 (MV)"
		acs = "ACS"
		cak2_ap4_mv = "CAK2 AP4 (MV)"
		midpoint_norm_ap4_mv = "MidPoint Norm AP4 (MV)"
		ef_ap2_acmq_phl = "EF(AP2)(aCMQ)_phl"
		esv_ap2_acmq_phl = "ESV(AP2)(aCMQ)_phl"
		edv_ap2_acmq_phl = "EDV(AP2)(aCMQ)_phl"
		lvls_apical = "LVLs apical"
		ef_bi_plane_acmq_phl = "EF(Bi-Plane)(aCMQ)_phl"
		edv_bi_plane_acmq_phl = "EDV(Bi-Plane)(aCMQ)_phl"
		esv_bi_plane_acmq_phl = "ESV(Bi-Plane)(aCMQ)_phl"
		global_long_strain_acmq_phl = "Global Long Strain(aCMQ)_phl"
		lvad_ap2 = "LVAd ap2"
		lvld_ap2 = "LVLd ap2"
		edv_mod_sp2 = "EDV(MOD-sp2)"
		med_e_prime_area = "Med E' area"
		edv_sp2_el = "EDV(sp2-el)"
		lat_a_prime_area = "Lat A' area"
		edv_mod_bp = "EDV(MOD-bp)"
		lvld_pct_diff = "LVLd %diff"
		circ_strain_sax_b_acmq_phl = "Circ Strain(SAX-B)(aCMQ)_phl"
		rvas_ap4 = "RVAs_ap4"
		rv_fac = "RV_FAC"
		rvad_ap4 = "RVAd_ap4"
		mm_r_r_int_msec = "MM R-R int msec"
		mm_hr = "MM HR"
		co_teich = "CO(Teich)"
		mm_r_r_int = "MM R-R int"
		co_cubed = "CO(cubed)"
		edv_3d_vol = "EDV_3D-VOL"
		esv_3d_vol = "ESV_3D-VOL"
		ef_3d_vol = "EF_3D-VOL"
		ci_cubed = "CI(cubed)"
		ci_teich = "CI(Teich)"
		esv_mod_sp2 = "ESV(MOD-sp2)"
		cca_sax_intern_sys = "CCA_SAX_intern_sys"
		cca_sax_intern_dia = "CCA_SAX_intern_dia"
		med_a_prime_area = "Med A' area"
		lvls_ap2 = "LVLs ap2"
		lvas_ap2 = "LVAs ap2"
		mr_max_pg = "MR max PG"
		mr_max_vel = "MR max vel"
		esv_sp2_el = "ESV(sp2-el)"
		aorta_thoracic = "Aorta_Thoracic"
		lvls_pctdiff = "LVLs %diff"
		esv_mod_bp = "ESV(MOD-bp)"
		aortic_r_r = "Aortic R-R"
		aortic_hr = "Aortic HR"
		ai_accel_time = "AI Accel Time"
		pi_dec_slope = "PI dec slope"
		ci_ao = "CI(Ao)"
		co_ao = "CO(Ao)"
		mr_pisa_radius = "MR PISA radius"
		mr_pisa = "MR PISA"
		sv_mod_sp2 = "SV(MOD-sp2)"
		sv_sp2_el = "SV(sp2-el)"
		ef_sp2_el = "EF(sp2-el)"
		si_sp2_el = "SI(sp2-el)"
		si_mod_sp2 = "SI(MOD-sp2)"
		mva_traced = "MVA(traced)"
		ef_mod_sp2 = "EF(MOD-sp2)"
		pi_p1_ratio_2t = "PI P1/2t"
		si_mod_bp = "SI(MOD-bp)"
		ef_mod_bp = "EF(MOD-bp)"
		ai_vti = "AI VTI"
		sv_mod_bp = "SV(MOD-bp)"
		co_sp4_el = "CO(sp4-el)"
		pa_v2_mean = "PA V2 mean"
		mr_mean_vel = "MR mean vel"
		pa_mean_pg = "PA mean PG"
		ci_lvot = "CI(LVOT)"
		co_lvot = "CO(LVOT)"
		mr_mean_pg = "MR mean PG"
		ci_mod_sp4 = "CI(MOD-sp4)"
		co_mod_sp4 = "CO(MOD-sp4)"
		mr_vti = "MR VTI"
		ci_sp4_el = "CI(sp4-el)"
		rvdd2 = "RVDd2"
		pa_v2_vti = "PA V2 VTI"
		mv_diam = "MV Diam"
		mv_flow_area_1diam = "MV Flow area(1diam)"
		mv_area_1_diam = "MV area (1 diam)"
		circ_strain_sax_a_acmq_phl = "Circ Strain(SAX-A)(aCMQ)_phl"
		mr_alias_vel = "MR alias vel"
		tapse_phl = "TAPSE_phl"
		av_2d_area_trace = "AV 2D Area Trace"
		mr_flow_rate = "MR flow rate"
		pa_pr_accel = "PA pr(Accel)"
		rvet = "RVET"
		pa_acc_slope = "PA acc slope"
		pa_acc_time = "PA acc time"
		rv_max_pg = "RV max PG"
		rv_v1_max = "RV V1 max"
		mpa_area = "MPA area"
		rf_pv_ao = "RF(PV,Ao)                     "
		pulm_r_r = "Pulm. R-R"
		ai_end_d_vel = "AI end-d vel"
		mr_volume = "MR volume"
		si_pv = "SI(PV)"
		tv_v2_vti = "TV V2 VTI"
		tv_mean_pg = "TV mean PG"
		tv_v2_mean = "TV V2 mean"
		qp_ratio_qs_v_ao = "Qp/Qs (V,Ao)                  "
		asd_diam = "ASD diam"
		pulm_hr = "Pulm. HR"
		mr_ero = "MR ERO"
		cca_area_sys = "CCA_Area_Sys"
		cca_area_dia = "CCA_Area_Dia"
		rf_ao_pv = "RF(Ao,PV)                     "
		sv_pv = "SV(PV)"
		rrtomi = "RRtoMi"
		mpa_diam = "MPA diam"
		as_max_pg = "AS max PG"
		mv_p1_ratio_2t_pr_phl = "MV P1/2t-pr_phl"
		lav_mod_sp2_phl = "LAV(MOD-sp2)_phl"
		rf_lvot_pv = "RF(LVOT,PV)                   "
		long_str_tp_apl_tmq = "Long Str Tp ApL (TMQ)"
		ao_stj_diam_phl = "Ao STJ Diam_phl"
		ao_ann_area_phl = "Ao Ann Area_phl"
		lav_mod_bp_indexed_phl = "LAV(MOD-bp) Indexed_phl"
		mv_dfp = "MV DFP"
		as_max_vel = "AS max vel"
		qp_ratio_qs_v_lvot = "Qp/Qs (V,LVOT)                "
		global_circ_strain_acmq_phl = "Global Circ Strain(aCMQ)_phl"
		pa_max_pg_full = "PA max PG (full)"
		lav_mod_sp4_phl = "LAV(MOD-sp4)_phl"
		lav_mod_bp_phl = "LAV(MOD-bp)_phl"
		aortic_arch_trans_2d = "Aortic arch trans(2D)"
		lvld_apical = "LVLd apical"
		ao_acc_time = "Ao acc time"
		long_str_tp_delay_mal_mis_tmq = "Long Str Tp Delay MAL-MIS(TMQ)"
		lv_dp_ratio_dt_time = "LV dP/dt time"
		lv_dp_ratio_dt_meas = "LV dP/dt meas"
		long_str_tp_delay_bal_bis_tmq = "Long Str Tp Delay BAL-BIS(TMQ)"
		vsd_max_pg = "VSD max PG"
		mv_e_velocity_valsalva = "MV E Velocity (Valsalva)"
		pda_max_sys_vel = "PDA max sys vel"
		pda_max_dias_vel = "PDA max dias vel"
		ap4_sp_ef_sm_md = "AP4 SP EF SM (MD)"
		ap4_sp_esv_sm_md = "AP4 SP ESV SM (MD)"
		ap4_sp_edv_sm_md = "AP4 SP EDV SM (MD)"
		rf_pv_lvot = "RF(PV,LVOT)                   "
		long_str_tp_delay_aplaps_tmq = "Long Str Tp Delay ApLApS(TMQ)"
		lvot_accel_slope = "LVOT Accel Slope"
		long_str_tp_mis_tmq = "Long Str Tp MIS (TMQ)"
		long_str_tp_mal_tmq = "Long Str Tp MAL (TMQ)"
		ai_accel_slope = "AI Accel Slope"
		edv = "EDV"
		long_str_tp_bis_tmq = "Long Str Tp BIS (TMQ)"
		psv = "PSV"
		long_str_tp_bal_tmq = "Long Str Tp BAL (TMQ)"
		aortic_arch_trans = "Aortic_arch_trans"
		aorta_abd = "Aorta_abd"
		aortic_root_leadingedge = "Aortic_Root_LeadingEdge"
		ao_root_diam_2d = "Ao root diam(2D)"
		vsd_max_vel = "VSD max vel"
		ao_acc_slope = "Ao acc slope"
		ivct = "IVCT"
		lvot_accel_time = "LVOT Accel Time"
		long_str_tp_aps_tmq = "Long Str Tp ApS (TMQ)"
	;
RUN;


        DATA inst_echoxcelera;
            SET WORK.IMPORT;
        RUN;
        