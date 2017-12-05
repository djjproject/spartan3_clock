
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name gates -dir "D:/xilinx/gates/planAhead_run_1" -part xc3s200pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/xilinx/gates/gs1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/xilinx/gates} }
set_property target_constrs_file "gs1.ucf" [current_fileset -constrset]
add_files [list {gs1.ucf}] -fileset [get_property constrset [current_run]]
link_design
