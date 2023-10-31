clear
import delimited "../data-csv/inst_biodex.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable contract "muscle_activation: Type of muscle activation that causes tension on your muscle as it shortens. Allows you to generation enough force to move an object. (concentric, agonist eccentric)."

label variable mode "Exercise: type of exercise given within biodex protocol (ISOM,ISOk)"

label variable joint "Joint_tested: Joints that are tested. Knee is standard. "

label variable pattern "Motion: Motion of joint/muscle moving forward or back. defined as EXT/FLX in data."

label variable protocol ""

label variable side "side of test: which joint side is being tested "

label variable get "Gravity Effect Torque"

label variable acctime_awy "Acceleration Time Away"

label variable acctime_twd "Accerleration Time Toward"

label variable avepwr_awy "Average Power Away"

label variable avepwr_twd "Average Power Toward"

label variable cv_awy "Coefficient of Variation Away"

label variable cv_twd "Coefficient of Variation Toward"

label variable dectime_awy "Deceleration Time Away"

label variable dectime_twd "Deceleration Time Toward"

label variable maxavepktq_awy "Maximum Average Peak Torque Away"

label variable maxavepktq_twd "Maximum Average Peak Torque Toward"

label variable maxrepwk_awy "Maximum Repitition of Total Work Away"

label variable maxrepwkrep_awy "Maximum Work Repitition Number Away"

label variable maxrepwkrep_twd "Maximum Repitition of Total Work Toward"

label variable maxrepwk_twd "Maximum Work Repitition Number Toward"

label variable maxrom "Maximum Range of Motion"

label variable peaktq_awy "Peak Torque Away (ft-lbs)"

label variable peaktq_awy_nm "Peak Torque Away (newton-meters)"

label variable peaktq_bw_awy ""

label variable peaktq_bw_twd ""

label variable peaktq_twd "Peak Torque Toward (ft-lbs)"

label variable peaktq_twd_nm "Peak Torque Toward (newton-meters)"

label variable posnpktq_awy "Angle of Peak Torque Away"

label variable posnpktq_twd "Angle of Peak Torque Toward"

label variable referral "Protocol number: field used for tester to enter in protocol number"

label variable reps "Number of Repititions"

label variable set_num ""

label variable spd_awy "Speed Away"

label variable spd_twd "Speed Toward"

label variable timepktq_awy "Time to Peak Torque Away"

label variable timepktq_twd "Time to Peak Torque Toward"

label variable totwork_awy "Total Work Away"

label variable totwork_twd "Total Work Toward"

label variable tqat_awy ""

label variable tqat_twd ""

label variable tqin_awy ""

label variable tqin_twd ""

label variable weight_biodex ""

label variable wkf3rd_awy "Work First Third Away"

label variable wkf3rd_twd "Work First Third Toward"

label variable wkl3rd_awy "Work Last Third Away"

label variable wkl3rd_twd "Work Last Third Toward"

label variable work_bw_away ""

label variable work_bw_twd ""

label variable workfat_awy "Work Fatigue Away"

label variable workfat_twd "Work Fatigue Toward"

