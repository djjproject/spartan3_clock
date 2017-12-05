
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name W10 -dir "C:/Xilinx/hsp/W10/planAhead_run_1" -part xc3s200pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Xilinx/hsp/W10/Main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Xilinx/hsp/W10} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Main.ucf" [current_fileset -constrset]
add_files [list {Main.ucf}] -fileset [get_property constrset [current_run]]
link_design
