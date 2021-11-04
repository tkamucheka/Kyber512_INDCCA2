vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_15
vlib riviera/floating_point_v7_0_16
vlib riviera/xbip_dsp48_mult_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/div_gen_v5_1_15
vlib riviera/microblaze_v11_0_1
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_uartlite_v2_0_23
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_16
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/fifo_generator_v13_2_4
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_crossbar_v2_1_20
vlib riviera/mdm_v3_2_16
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_protocol_converter_v2_1_19

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 riviera/mult_gen_v12_0_15
vmap floating_point_v7_0_16 riviera/floating_point_v7_0_16
vmap xbip_dsp48_mult_v3_0_6 riviera/xbip_dsp48_mult_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap div_gen_v5_1_15 riviera/div_gen_v5_1_15
vmap microblaze_v11_0_1 riviera/microblaze_v11_0_1
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_23 riviera/axi_uartlite_v2_0_23
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 riviera/lmb_bram_if_cntlr_v4_0_16
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 riviera/axi_crossbar_v2_1_20
vmap mdm_v3_2_16 riviera/mdm_v3_2_16
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/NTT_Poly_BRAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/NTT_Poly_BRAM/sim/NTT_Poly_BRAM.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/Zeta/sim/Zeta.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_NTT_Poly_0/sim/L96_NTT_Poly_0.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_AtG/sim/L128_AtG.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_EncPk_DecSk_PolyVec/sim/L128_EncPk_DecSk_PolyVec.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_16 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_15 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/hdl/div_gen_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/State_Pack_Cit_Div/sim/State_Pack_Cit_Div.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_DecMp/sim/L96_Reduce_DecMp.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L128_INTT_Enc_BpV_DecMp/sim/L128_INTT_Enc_BpV_DecMp.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L12_k/sim/L12_k.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_EncV/sim/L96_Reduce_EncV.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L96_Reduce_EncBp/sim/L96_Reduce_EncBp.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L32_noise_eG/sim/L32_noise_eG.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/L32_noise_r_PolyVec/sim/L32_noise_r_PolyVec.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/SS_OUT_MEM/sim/SS_OUT_MEM.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/CT_OUT_MEM/sim/CT_OUT_MEM.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/PK_SK_MEM/sim/PK_SK_MEM.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/src/Rand_CT_MEM/sim/Rand_CT_MEM.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/BRAM_MUX.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_CCAKEM.v" \
"../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0_S00_AXI.v" \
"../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0_S01_AXI.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_INDCPA.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_DEC.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_ENC.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_indcpa_shared.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Kyber512_pre_post_INDCPA.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Montgomery_reduce.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/NTT.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Poly_Decompress__r.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Poly_Decompress__t.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Polyvec_Decompress__r.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/Polyvec_Decompress__t.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Add__Add_3.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Add__Poly_Add__Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Decompressed_Ciphertext.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Hash.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__CBD.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Permutation.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Rej_Uniform.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Hash__Rej_Uniform_Comparer.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__BarrettR_MontgomeryR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__INTT.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Invntt__MontegomeryR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_NTT_PolyReduce.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_NTT_PolyReduce_BarrettR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Add__Data_Cal.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul__Basemul.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Basemul__Basemul__MontgomeryR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Reduce.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_PAcc__State_PolyVec_PAcc__Poly_Reduce__BarrettR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec_Group.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec__Mask_Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_PolyVec__Shift.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly_Group.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly__Mask_Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Pack_Cit__Pack_Poly__Shift.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_Sub.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_Sub___Data_Cal.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Poly_frommsg.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal__Add.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Polytomsg__DataCal__Csubq.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce__PolyReduce.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Reduce____BarrettR.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack__poly_frombytes.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_Unpack__poly_frombytes__r.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_ntt.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/State_ntt_BRAM_MUX.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/f_permutation.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/poly_decompress.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/polyvec_decompress.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/rconst2in1.v" \
"../../../bd/kyber_soc/ipshared/53eb/src/round2in1.v" \
"../../../bd/kyber_soc/ipshared/53eb/hdl/Kyber512_CCAKEM_IP_v1_0.v" \
"../../../bd/kyber_soc/ip/kyber_soc_Kyber512_CCAKEM_IP_0_0/sim/kyber_soc_Kyber512_CCAKEM_IP_0_0.v" \

vcom -work microblaze_v11_0_1 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_microblaze_0_0_1/sim/kyber_soc_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_23 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/0315/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_axi_uartlite_0_0_1/sim/kyber_soc_axi_uartlite_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_dlmb_v10_0_1/sim/kyber_soc_dlmb_v10_0.vhd" \
"../../../bd/kyber_soc/ip/kyber_soc_ilmb_v10_0_1/sim/kyber_soc_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_dlmb_bram_if_cntlr_0_1/sim/kyber_soc_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/kyber_soc/ip/kyber_soc_ilmb_bram_if_cntlr_0_1/sim/kyber_soc_ilmb_bram_if_cntlr_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_lmb_bram_0_1/sim/kyber_soc_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_xbar_0_1/sim/kyber_soc_xbar_0.v" \

vcom -work mdm_v3_2_16 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_mdm_1_0_1/sim/kyber_soc_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_clk_wiz_1_0_1/kyber_soc_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/kyber_soc/ip/kyber_soc_clk_wiz_1_0_1/kyber_soc_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kyber_soc/ip/kyber_soc_rst_clk_wiz_1_100M_0_1/sim/kyber_soc_rst_clk_wiz_1_100M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/ec67/hdl" "+incdir+../../../../Kyber512_CCAKEM.srcs/sources_1/bd/kyber_soc/ipshared/c923" \
"../../../bd/kyber_soc/ip/kyber_soc_auto_pc_0/sim/kyber_soc_auto_pc_0.v" \
"../../../bd/kyber_soc/sim/kyber_soc.v" \

vlog -work xil_defaultlib \
"glbl.v"

