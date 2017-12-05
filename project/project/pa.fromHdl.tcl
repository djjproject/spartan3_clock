
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name project -dir "D:/xilinx/project/project/planAhead_run_1" -part xa3s200pqg208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "clockmain.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clockdivider.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {time.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {lcdcontrol.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clockmain.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top clockmain $srcset
add_files [list {clockmain.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xa3s200pqg208-4
