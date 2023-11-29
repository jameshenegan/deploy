%let path_to_root_folder = ../data;
%let name_of_subfolder = AFU;
%let dataset_name = compafu_safu_cy2_cy32_np;
%let working_dataset_name = compafu_safu_cy2_cy32_np;

LIBNAME mylib "&path_to_root_folder.\&name_of_subfolder";

DATA &working_dataset_name;
    SET mylib.&dataset_name;
RUN;
