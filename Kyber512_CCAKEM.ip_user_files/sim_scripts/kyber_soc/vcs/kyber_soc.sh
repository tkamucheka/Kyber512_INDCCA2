#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : kyber_soc.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Oct 06 01:09:40 -0500 2021
# SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved. 
#
# usage: kyber_soc.sh [-help]
# usage: kyber_soc.sh [-lib_map_path]
# usage: kyber_soc.sh [-noclean_files]
# usage: kyber_soc.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'kyber_soc.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm blk_mem_gen_v8_4_3 xbip_utils_v3_0_10 axi_utils_v2_0_6 xbip_pipe_v3_0_6 xbip_dsp48_wrapper_v3_0_4 xbip_dsp48_addsub_v3_0_6 xbip_bram18k_v3_0_6 mult_gen_v12_0_15 floating_point_v7_0_16 xbip_dsp48_mult_v3_0_6 xbip_dsp48_multadd_v3_0_6 div_gen_v5_1_15 microblaze_v11_0_1 axi_lite_ipif_v3_0_4 lib_pkg_v1_0_2 lib_srl_fifo_v1_0_2 lib_cdc_v1_0_2 axi_uartlite_v2_0_23 lmb_v10_v3_0_9 lmb_bram_if_cntlr_v4_0_16 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_19 fifo_generator_v13_2_4 axi_data_fifo_v2_1_18 axi_crossbar_v2_1_20 mdm_v3_2_16 proc_sys_reset_v5_0_13 axi_protocol_converter_v2_1_19)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "kyber_soc.sh - Script generated by export_simulation (Vivado v2019.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/NTT_Poly_BRAM/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/NTT_Poly_BRAM/sim/NTT_Poly_BRAM.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/Zeta/sim/Zeta.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_NTT_Poly_0/sim/L96_NTT_Poly_0.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_AtG/sim/L128_AtG.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_EncPk_DecSk_PolyVec/sim/L128_EncPk_DecSk_PolyVec.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xbip_utils_v3_0_10 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_utils_v2_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/axi_utils_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_bram18k_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mult_gen_v12_0_15 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work floating_point_v7_0_16 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/floating_point_v7_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_mult_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_multadd_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work div_gen_v5_1_15 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/div_gen_v5_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/sim/State_Pack_Cit_Div.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_DecMp/sim/L96_Reduce_DecMp.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_INTT_Enc_BpV_DecMp/sim/L128_INTT_Enc_BpV_DecMp.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L12_k/sim/L12_k.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_EncV/sim/L96_Reduce_EncV.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_EncBp/sim/L96_Reduce_EncBp.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L32_noise_eG/sim/L32_noise_eG.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L32_noise_r_PolyVec/sim/L32_noise_r_PolyVec.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/SS_OUT_MEM/sim/SS_OUT_MEM.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/CT_OUT_MEM/sim/CT_OUT_MEM.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/PK_SK_MEM/sim/PK_SK_MEM.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/Rand_CT_MEM/sim/Rand_CT_MEM.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/BRAM_MUX.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_CCAKEM.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0_S00_AXI.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0_S01_AXI.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_INDCPA.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_DEC.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_ENC.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_shared.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_pre_post_INDCPA.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Montgomery_reduce.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/NTT.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Poly_Decompress__r.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Poly_Decompress__t.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Polyvec_Decompress__r.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/Polyvec_Decompress__t.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Add__Add_3.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Add__Poly_Add__Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Decompressed_Ciphertext.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Hash.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__CBD.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Permutation.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Rej_Uniform.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Rej_Uniform_Comparer.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__BarrettR_MontgomeryR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__INTT.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__MontegomeryR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_NTT_PolyReduce.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_NTT_PolyReduce_BarrettR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Add__Data_Cal.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul__Basemul.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul__Basemul__MontgomeryR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Reduce.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Reduce__BarrettR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec_Group.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec__Mask_Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec__Shift.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly_Group.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly__Mask_Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly__Shift.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_Sub.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_Sub___Data_Cal.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_frommsg.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal__Add.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal__Csubq.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce__PolyReduce.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce____BarrettR.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack__poly_frombytes.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack__poly_frombytes__r.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_ntt.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/State_ntt_BRAM_MUX.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/f_permutation.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/poly_decompress.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/polyvec_decompress.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/rconst2in1.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/src/round2in1.v" \
    "$ref_dir/../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/sim/kyber_soc_Kyber512_CCAKEM_IP_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work microblaze_v11_0_1 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_microblaze_0_0_1/sim/kyber_soc_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_23 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/0315/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_axi_uartlite_0_0_1/sim/kyber_soc_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_v10_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_dlmb_v10_0_1/sim/kyber_soc_dlmb_v10_0.vhd" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_ilmb_v10_0_1/sim/kyber_soc_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_16 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_dlmb_bram_if_cntlr_0_1/sim/kyber_soc_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_ilmb_bram_if_cntlr_0_1/sim/kyber_soc_ilmb_bram_if_cntlr_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_lmb_bram_0_1/sim/kyber_soc_lmb_bram_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_4 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_20 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_xbar_0_1/sim/kyber_soc_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_16 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_mdm_1_0_1/sim/kyber_soc_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_clk_wiz_1_0_1/kyber_soc_clk_wiz_1_0_clk_wiz.v" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_clk_wiz_1_0_1/kyber_soc_clk_wiz_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_rst_clk_wiz_1_100M_0_1/sim/kyber_soc_rst_clk_wiz_1_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_protocol_converter_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
    "$ref_dir/../../../bd/kyber_soc/ip/kyber_soc_auto_pc_0/sim/kyber_soc_auto_pc_0.v" \
    "$ref_dir/../../../bd/kyber_soc/sim/kyber_soc.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.kyber_soc xil_defaultlib.glbl -o kyber_soc_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./kyber_soc_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./kyber_soc.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key kyber_soc_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc kyber_soc_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./kyber_soc.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: kyber_soc.sh [-help]\n\
Usage: kyber_soc.sh [-lib_map_path]\n\
Usage: kyber_soc.sh [-reset_run]\n\
Usage: kyber_soc.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2