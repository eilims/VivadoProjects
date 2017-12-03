# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.cache/wt [current_project]
set_property parent.project_path D:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo d:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files d:/VivadoProjects/ECE524_PRELAB7/coeff1test.coe
read_vhdl -library xil_defaultlib {
  D:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.srcs/sources_1/new/package.vhd
  D:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.srcs/sources_1/new/Serial_Implementation_FIR.vhd
}
read_ip -quiet d:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_ooc.xdc]
set_property is_locked true [get_files d:/VivadoProjects/ECE524_PRELAB7/ECE524_PRELAB7.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top Serial_Implementation_FIR -part xc7z020clg484-1


write_checkpoint -force -noxdef Serial_Implementation_FIR.dcp

catch { report_utilization -file Serial_Implementation_FIR_utilization_synth.rpt -pb Serial_Implementation_FIR_utilization_synth.pb }
