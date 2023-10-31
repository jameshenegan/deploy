clear
import delimited "../data-csv/inst_echoxcelera.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable systolicpressure "Systolic Blood Pressure (mmHg)"

label variable diastolicpressure "Diastolic Blood Pressure (mmHg)"

label variable lvpwd "Left ventricular posterior wall end diastole"

label variable ivsd "Interventricular septal end diastole"

label variable lvidd "Left ventricular internal diameter end diastole"

label variable edv_teich "End-diastolic volume (Teichholz formula)"

label variable edv_cubed "End-diastolic volume (Cube formula)"

label variable ivs_lvpw_ratio "Septal to Posterior Wall Ratio"

label variable lv_mass_c_d "LV mass(C)d"

label variable la_dimension "LA dimension"

label variable lvids "LVIDs"

label variable ao_root_diam "Ao root diam"

label variable esv_cubed "ESV(cubed)"

label variable esv_teich "ESV(Teich)"

label variable sv_teich "SV(Teich)"

label variable ef_cubed "EF(cubed)"

label variable fs "FS"

label variable ef_teich "EF(Teich)"

label variable sv_cubed "SV(cubed)"

label variable ao_root_area "Ao root area"

label variable mv_e_point "MV E point"

label variable lvot_diam "LVOT diam"

label variable lvot_area "LVOT area"

label variable mv_a_point "MV A point"

label variable la_ao_ratio "LA/Ao"

label variable mv_e_a_ratio "MV E/A"

label variable bsa "BSA"

label variable lv_mass_c_dl "LV mass(C)dI"

label variable lv_v1_max "LV V1 max"

label variable si_cubed "SI(cubed)"

label variable si_teich "SI(Teich)"

label variable lv_max_pg "LV max PG"

label variable ao_v2_max "Ao V2 max"

label variable ao_max_pg "Ao max PG"

label variable lv_v1_vti "LV V1 VTI"

label variable lv_mean_pg "LV mean PG"

label variable lv_v1_mean "LV V1 mean"

label variable ao_mean_pg "Ao mean PG"

label variable ao_v2_vti "Ao V2 VTI"

label variable ao_v2_mean "Ao V2 mean"

label variable sv_lvot "SV(LVOT)"

label variable sv_ao "SV(Ao)"

label variable ao_max_pg_full "Ao max PG (full)"

label variable si_lvot "SI(LVOT)"

label variable lv_ivrt "LV IVRT"

label variable ava_v_d "AVA(V,D)                      "

label variable ava_v_a "AVA(V,A)                      "

label variable si_ao "SI(Ao)"

label variable ao_mean_pg_full "Ao mean PG (full)"

label variable ava_i_a "AVA(I,A)                      "

label variable ava_i_d "AVA(I,D)                      "

label variable ava_dimensionless "AVA (Dimensionless)"

label variable bzi_metric_weight "BZI_Metric_Weight"

label variable bzi_bmi "BZI_BMI"

label variable bsa_haycock "BSA(Haycock)"

label variable bzi_metric_height "BZI_Metric_Height"

label variable length "Length"

label variable edv_mod_sp4 "EDV(MOD-sp4)"

label variable lvld_ap4 "LVLd ap4"

label variable lvad_ap4 "LVAd ap4"

label variable esv_mod_sp4 "ESV(MOD-sp4)"

label variable lvls_ap4 "LVLs ap4"

label variable sv_mod_sp4 "SV(MOD-sp4)"

label variable ef_mod_sp4 "EF(MOD-sp4)"

label variable lvas_ap4 "LVAs ap4"

label variable si_mod_sp4 "SI(MOD-sp4)"

label variable mv_dec_time "MV dec time"

label variable bzi_systolic_pressure "BZI_Systolic_Pressure"

label variable bzi_diastolic_pressure "BZI_Diastolic_Pressure"

label variable ivsd_1 "IVSd_1"

label variable ivsd_3 "IVSd_3"

label variable ivsd_2 "IVSd_2"

label variable max_pg "Max PG"

label variable max_v "Max V"

label variable bzi_heart_rate "BZI_Heart_Rate"

label variable la_a4_area_max "LA_A4_Area_Max"

label variable la_length_a4c_max "LA_Length_A4C_Max"

label variable la_a4_vol_mod_max "LA_A4_Vol_mod_Max"

label variable lvot_area_m "LVOT area (M)"

label variable la_a4_vol_mod_max_index "LA_A4_VOl_Mod_max_index"

label variable time_dop "Time (Dop)"

label variable slope_dop "Slope (Dop)"

label variable mv_dec_slope "MV dec slope"

label variable imt_measure "IMT Measure"

label variable edv_sp4_el "EDV(sp4-el)"

label variable esv_sp4_el "ESV(sp4-el)"

label variable sv_sp_el "SV(sp4-el)"

label variable ef_sp_el "EF(sp4-el)"

label variable rvdd1 "RVDd1"

label variable med_peak_e_vel "Med Peak E' Vel"

label variable e_e_prime_med "E/E' med"

label variable si_sp4_el "SI(sp4-el)"

label variable tapse "TAPSE"

label variable mean_v "Mean V"

label variable vti "VTI"

label variable mean_pg "Mean PG"

label variable mv_p_1_2t_max_vel "MV P1/2t max vel"

label variable mva_p_1_2t "MVA(P1/2t)"

label variable mv_p_1_2t "MV P1/2t"

label variable la_a2_area_max "LA_A2_Area_Max"

label variable vol_by_mod "Vol-by-MOD"

label variable vol_area "Vol-area"

label variable vol_circ "Vol-circ"

label variable vol_length "Vol-length"

label variable tr_max_vel "TR Max vel"

label variable la_vol_bp_mod_max "LA_Vol_bp_MOD_max"

label variable vol_by_spe "Vol-by-SPE"

label variable tr_max_pg "TR Max PG"

label variable lat_peak_e_prime_vel "Lat Peak E' Vel"

label variable pulm_dias_vel "Pulm Dias Vel"

label variable pulm_sys_vel "Pulm Sys Vel"

label variable lat_a_prime_vel "Lat A' vel"

label variable pulm_s_d "Pulm S/D"

label variable lat_peak_s_vel "Lat Peak S Vel"

label variable med_peak_s_vel "Med Peak S Vel"

label variable pulm_a_revs_vel "Pulm A Revs Vel"

label variable rrlat "RRlat"

label variable med_peak_a_prime_vel "Med Peak A' Vel"

label variable mv_e_vti "MV E VTI"

label variable e_e_prime_lat "E/E' lat"

label variable mv_a_vti "MV A VTI"

label variable rrao "RRAo"

label variable rtoelat "RtoElat"

label variable rtoaoend "RtoAoEnd"

label variable rtoaobeg "RtoAoBeg"

label variable rtoesep "RtoEsep"

label variable rrmi "RRMi"

label variable la_length_a4c_min "LA_Length_A4C_Min"

label variable rrsep "RRsep"

label variable rtomibeg "RtoMiBeg"

label variable la_a4_area_min "LA_A4_area_Min"

label variable la_a4_vol_mod_min "LA_A4_Vol_mod_Min"

label variable la_vol_bp_mod_max_index "LA_Vol_bp_Mod_max_index"

label variable height_mmode "Height (MMode)"

label variable time_mmode "Time (MMode)"

label variable la_a2_area_min "LA_A2_Area_min"

label variable la_vol_bp_mod_min "LA_Vol_bp_MOD_min"

label variable rap_systole "RAP systole"

label variable ao_diam_dias "Ao diam (dias)"

label variable rvsp "RVSP"

label variable ao_diam_sys "Ao diam (sys)"

label variable asc_aorta "asc Aorta"

label variable ivsd_bulge "IVSd_bulge"

label variable cca_intern_dia "CCA_intern_dia"

label variable cca_intern_sys "CCA_intern_sys"

label variable ivsd_bulgedist "IVSD_bulgeDist"

label variable lvpws "LVPWs"

label variable pct_lvpw_thick "% LVPW thick"

label variable ef_bp_templ "EF_BP-TEMPL"

label variable edv_bp_templ "EDV_BP-TEMPL"

label variable es_bp_templ "ESV_BP-TEMPL"

label variable tv_v2_max "TV V2 max"

label variable tv_max_pg "TV max PG"

label variable imt_calc "IMT Calc"

label variable pa_v2_max "PA V2 max"

label variable pa_max_pg "PA max PG"

label variable ivss "IVSs"

label variable pct_ivs_thick "% IVS thick"

label variable lv_mass_c_s "LV mass(C)s"

label variable lv_mass_end_sys "LV Mass - End Sys"

label variable lv_mass_end_dias "LV Mass - End Dias"

label variable slope_mmode "Slope (MMode)"

label variable ef_3dq_phl "EF(3DQ)_phl"

label variable esv_3dq_phl "ESV(3DQ)_phl"

label variable edv_3dq_phl "EDV(3DQ)_phl"

label variable aortic_arch_asc "Aortic_arch_asc"

label variable lv_mass_c_sl "LV mass(C)sI"

label variable long_strain_ap4_acmq_phl "Long Strain(AP4)(aCMQ)_phl"

label variable ai_dec_slope "AI dec slope"

label variable time_physio "Time (Physio)"

label variable ai_max_vel "AI max vel"

label variable ai_max_pg "AI max PG"

label variable ai_p_1_2t "AI P1/2t"

label variable la_length_vol "LA length (vol)"

label variable la_a4_area "LA A4 area"

label variable pi_end_d_vel "PI end-d vel"

label variable la_vol "LA vol"

label variable la_a2_area "LA A2 area"

label variable lpulv_a_max_vel "LPulV A max vel"

label variable la_vol_index "LA vol index"

label variable lpulv_d_max_vel "LPulV D max vel"

label variable lpulv_s2_max_vel "LPulV S2 max vel"

label variable circ_strain_sax_m__acmq__phl "Circ Strain(SAX-M)(aCMQ)_phl"

label variable lpulv_s_d_ratio "LPulV S/D ratio"

label variable lvot_2_diam "LVOT_2_diam"

label variable edv_ap4_acmq_phl "EDV(AP4)(aCMQ)_phl"

label variable esv_ap4_acmq_phl "ESV(AP4)(aCMQ)_phl"

label variable ef_ap4_acmq_phl "EF(AP4)(aCMQ)_phl"

label variable pulm_a_revs_dur "Pulm A Revs Dur"

label variable area "Area"

label variable circ "Circ"

label variable long_strain_ap2_acmq_phl "Long Strain(AP2)(aCMQ)_phl"

label variable la_vol_mod "LA VOL MOD"

label variable rvdd "RVDd"

label variable mv_v2_max "MV V2 max"

label variable av_p1_2t_pr_phl_ratio "AV P1/2t-pr_phl"

label variable mv_max_pg "MV max PG"

label variable lvas_apical "LVAs apical"

label variable la_a4area_prep "LA_A4area_preP"

label variable la_length_prep "LA_Length_preP"

label variable la_a4_vol_mod_prep "LA_A4_Vol_mod_PreP"

label variable mv_mean_pg "MV mean PG"

label variable mv_v2_mean "MV V2 mean"

label variable mv_v2_vti "MV V2 VTI"

label variable la_a2_area_prep "LA_A2_area_PreP"

label variable mva_vti "MVA(VTI)"

label variable stroke_vol "Stroke Vol"

label variable lat_e_prime_area "Lat E' area"

label variable la_vol_bp_mod_prep "LA_Vol_bp_MOD_PreP"

label variable tmsv_16_dif_ms_ "Tmsv 16-DIF (ms)"

label variable lvad_apical "LVAd apical"

label variable tmsv_16_sd_ms_ "Tmsv 16-SD (ms)"

label variable tmsv_12_sd_ms_ "Tmsv 12-SD (ms)"

label variable tmsv_6_sd_ms_ "Tmsv 6-SD (ms)"

label variable lv_excursion_max "LV Excursion - Max"

label variable tmsv_12_dif_ms_ "Tmsv 12-DIF (ms)"

label variable tmsv_6_sd_pct "Tmsv 6-SD (%)"

label variable lv_excursion_min "LV Excursion - Min"

label variable lv_excursion_sd "LV Excursion - SD"

label variable lv_excursion_avg "LV Excursion - Avg"

label variable r_r_time "R-R time"

label variable tmsv_6_dif_pct "Tmsv 6-DIF (%)"

label variable tmsv_16_dif_pct "Tmsv 16-DIF (%)"

label variable tmsv_12_dif_pct "Tmsv 12-DIF (%)"

label variable tmsv_12_sd_pct "Tmsv 12-SD (%)"

label variable tmsv_16_sd_pct "Tmsv 16-SD (%)"

label variable tmsv_6_dif_ms "Tmsv 6-DIF (ms)"

label variable pi_max_pg "PI max PG"

label variable pi_max_vel "PI max vel"

label variable esv_3dqa_phl "ESV(3DQA)_phl"

label variable tmsv_3_6_phl "Tmsv 3-6_phl"

label variable ef_3dqa_phl "EF(3DQA)_phl"

label variable edv_3dqa_phl "EDV(3DQA)_phl"

label variable long_strain_ap3_acmq_phl "Long Strain(AP3)(aCMQ)_phl"

label variable tmsv_3_5_phl "Tmsv 3-5_phl"

label variable tmsv_3_6_pct_phl "Tmsv 3-6 (%)_phl"

label variable tmsv_3_5_pct_phl "Tmsv 3-5 (%)_phl"

label variable vcf_mean "Vcf mean"

label variable lvet "LVET"

label variable fac_sax_m_acmq_phl "FAC(SAX-M)(aCMQ)_phl"

label variable eda_sax_m_acmq_phl "EDA(SAX-M)(aCMQ)_phl"

label variable esa_sax_m_acmq_phl "ESA(SAX-M)(aCMQ)_phl"

label variable cak1_ap4_mv "CAK1 AP4 (MV)"

label variable midpoint_ap4_mv "MidPoint AP4 (MV)"

label variable acs "ACS"

label variable cak2_ap4_mv "CAK2 AP4 (MV)"

label variable midpoint_norm_ap4_mv "MidPoint Norm AP4 (MV)"

label variable ef_ap2_acmq_phl "EF(AP2)(aCMQ)_phl"

label variable esv_ap2_acmq_phl "ESV(AP2)(aCMQ)_phl"

label variable edv_ap2_acmq_phl "EDV(AP2)(aCMQ)_phl"

label variable lvls_apical "LVLs apical"

label variable ef_bi_plane_acmq_phl "EF(Bi-Plane)(aCMQ)_phl"

label variable edv_bi_plane_acmq_phl "EDV(Bi-Plane)(aCMQ)_phl"

label variable esv_bi_plane_acmq_phl "ESV(Bi-Plane)(aCMQ)_phl"

label variable global_long_strain_acmq_phl "Global Long Strain(aCMQ)_phl"

label variable lvad_ap2 "LVAd ap2"

label variable lvld_ap2 "LVLd ap2"

label variable edv_mod_sp2 "EDV(MOD-sp2)"

label variable med_e_prime_area "Med E' area"

label variable edv_sp2_el "EDV(sp2-el)"

label variable lat_a_prime_area "Lat A' area"

label variable edv_mod_bp "EDV(MOD-bp)"

label variable lvld_pct_diff "LVLd %diff"

label variable circ_strain_sax_b_acmq_phl "Circ Strain(SAX-B)(aCMQ)_phl"

label variable rvas_ap4 "RVAs_ap4"

label variable rv_fac "RV_FAC"

label variable rvad_ap4 "RVAd_ap4"

label variable mm_r_r_int_msec "MM R-R int msec"

label variable mm_hr "MM HR"

label variable co_teich "CO(Teich)"

label variable mm_r_r_int "MM R-R int"

label variable co_cubed "CO(cubed)"

label variable edv_3d_vol "EDV_3D-VOL"

label variable esv_3d_vol "ESV_3D-VOL"

label variable ef_3d_vol "EF_3D-VOL"

label variable ci_cubed "CI(cubed)"

label variable ci_teich "CI(Teich)"

label variable esv_mod_sp2 "ESV(MOD-sp2)"

label variable cca_sax_intern_sys "CCA_SAX_intern_sys"

label variable cca_sax_intern_dia "CCA_SAX_intern_dia"

label variable med_a_prime_area "Med A' area"

label variable lvls_ap2 "LVLs ap2"

label variable lvas_ap2 "LVAs ap2"

label variable mr_max_pg "MR max PG"

label variable mr_max_vel "MR max vel"

label variable esv_sp2_el "ESV(sp2-el)"

label variable aorta_thoracic "Aorta_Thoracic"

label variable lvls_pctdiff "LVLs %diff"

label variable esv_mod_bp "ESV(MOD-bp)"

label variable aortic_r_r "Aortic R-R"

label variable aortic_hr "Aortic HR"

label variable ai_accel_time "AI Accel Time"

label variable pi_dec_slope "PI dec slope"

label variable ci_ao "CI(Ao)"

label variable co_ao "CO(Ao)"

label variable mr_pisa_radius "MR PISA radius"

label variable mr_pisa "MR PISA"

label variable sv_mod_sp2 "SV(MOD-sp2)"

label variable sv_sp2_el "SV(sp2-el)"

label variable ef_sp2_el "EF(sp2-el)"

label variable si_sp2_el "SI(sp2-el)"

label variable si_mod_sp2 "SI(MOD-sp2)"

label variable mva_traced "MVA(traced)"

label variable ef_mod_sp2 "EF(MOD-sp2)"

label variable pi_p1_ratio_2t "PI P1/2t"

label variable si_mod_bp "SI(MOD-bp)"

label variable ef_mod_bp "EF(MOD-bp)"

label variable ai_vti "AI VTI"

label variable sv_mod_bp "SV(MOD-bp)"

label variable co_sp4_el "CO(sp4-el)"

label variable pa_v2_mean "PA V2 mean"

label variable mr_mean_vel "MR mean vel"

label variable pa_mean_pg "PA mean PG"

label variable ci_lvot "CI(LVOT)"

label variable co_lvot "CO(LVOT)"

label variable mr_mean_pg "MR mean PG"

label variable ci_mod_sp4 "CI(MOD-sp4)"

label variable co_mod_sp4 "CO(MOD-sp4)"

label variable mr_vti "MR VTI"

label variable ci_sp4_el "CI(sp4-el)"

label variable rvdd2 "RVDd2"

label variable pa_v2_vti "PA V2 VTI"

label variable mv_diam "MV Diam"

label variable mv_flow_area_1diam "MV Flow area(1diam)"

label variable mv_area_1_diam "MV area (1 diam)"

label variable circ_strain_sax_a_acmq_phl "Circ Strain(SAX-A)(aCMQ)_phl"

label variable mr_alias_vel "MR alias vel"

label variable tapse_phl "TAPSE_phl"

label variable av_2d_area_trace "AV 2D Area Trace"

label variable mr_flow_rate "MR flow rate"

label variable pa_pr_accel "PA pr(Accel)"

label variable rvet "RVET"

label variable pa_acc_slope "PA acc slope"

label variable pa_acc_time "PA acc time"

label variable rv_max_pg "RV max PG"

label variable rv_v1_max "RV V1 max"

label variable mpa_area "MPA area"

label variable rf_pv_ao "RF(PV,Ao)                     "

label variable pulm_r_r "Pulm. R-R"

label variable ai_end_d_vel "AI end-d vel"

label variable mr_volume "MR volume"

label variable si_pv "SI(PV)"

label variable tv_v2_vti "TV V2 VTI"

label variable tv_mean_pg "TV mean PG"

label variable tv_v2_mean "TV V2 mean"

label variable qp_ratio_qs_v_ao "Qp/Qs (V,Ao)                  "

label variable asd_diam "ASD diam"

label variable pulm_hr "Pulm. HR"

label variable mr_ero "MR ERO"

label variable cca_area_sys "CCA_Area_Sys"

label variable cca_area_dia "CCA_Area_Dia"

label variable rf_ao_pv "RF(Ao,PV)                     "

label variable sv_pv "SV(PV)"

label variable rrtomi "RRtoMi"

label variable mpa_diam "MPA diam"

label variable as_max_pg "AS max PG"

label variable mv_p1_ratio_2t_pr_phl "MV P1/2t-pr_phl"

label variable lav_mod_sp2_phl "LAV(MOD-sp2)_phl"

label variable rf_lvot_pv "RF(LVOT,PV)                   "

label variable long_str_tp_apl_tmq "Long Str Tp ApL (TMQ)"

label variable ao_stj_diam_phl "Ao STJ Diam_phl"

label variable ao_ann_area_phl "Ao Ann Area_phl"

label variable lav_mod_bp_indexed_phl "LAV(MOD-bp) Indexed_phl"

label variable mv_dfp "MV DFP"

label variable as_max_vel "AS max vel"

label variable qp_ratio_qs_v_lvot "Qp/Qs (V,LVOT)                "

label variable global_circ_strain_acmq_phl "Global Circ Strain(aCMQ)_phl"

label variable pa_max_pg_full "PA max PG (full)"

label variable lav_mod_sp4_phl "LAV(MOD-sp4)_phl"

label variable lav_mod_bp_phl "LAV(MOD-bp)_phl"

label variable aortic_arch_trans_2d "Aortic arch trans(2D)"

label variable lvld_apical "LVLd apical"

label variable ao_acc_time "Ao acc time"

label variable long_str_tp_delay_mal_mis_tmq "Long Str Tp Delay MAL-MIS(TMQ)"

label variable lv_dp_ratio_dt_time "LV dP/dt time"

label variable lv_dp_ratio_dt_meas "LV dP/dt meas"

label variable long_str_tp_delay_bal_bis_tmq "Long Str Tp Delay BAL-BIS(TMQ)"

label variable vsd_max_pg "VSD max PG"

label variable mv_e_velocity_valsalva "MV E Velocity (Valsalva)"

label variable pda_max_sys_vel "PDA max sys vel"

label variable pda_max_dias_vel "PDA max dias vel"

label variable ap4_sp_ef_sm_md "AP4 SP EF SM (MD)"

label variable ap4_sp_esv_sm_md "AP4 SP ESV SM (MD)"

label variable ap4_sp_edv_sm_md "AP4 SP EDV SM (MD)"

label variable rf_pv_lvot "RF(PV,LVOT)                   "

label variable long_str_tp_delay_aplaps_tmq "Long Str Tp Delay ApLApS(TMQ)"

label variable lvot_accel_slope "LVOT Accel Slope"

label variable long_str_tp_mis_tmq "Long Str Tp MIS (TMQ)"

label variable long_str_tp_mal_tmq "Long Str Tp MAL (TMQ)"

label variable ai_accel_slope "AI Accel Slope"

label variable edv "EDV"

label variable long_str_tp_bis_tmq "Long Str Tp BIS (TMQ)"

label variable psv "PSV"

label variable long_str_tp_bal_tmq "Long Str Tp BAL (TMQ)"

label variable aortic_arch_trans "Aortic_arch_trans"

label variable aorta_abd "Aorta_abd"

label variable aortic_root_leadingedge "Aortic_Root_LeadingEdge"

label variable ao_root_diam_2d "Ao root diam(2D)"

label variable vsd_max_vel "VSD max vel"

label variable ao_acc_slope "Ao acc slope"

label variable ivct "IVCT"

label variable lvot_accel_time "LVOT Accel Time"

label variable long_str_tp_aps_tmq "Long Str Tp ApS (TMQ)"

