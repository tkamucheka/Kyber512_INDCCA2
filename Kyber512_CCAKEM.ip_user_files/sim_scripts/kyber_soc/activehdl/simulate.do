onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+kyber_soc -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_3 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L floating_point_v7_0_16 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_15 -L microblaze_v11_0_1 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_23 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_16 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L mdm_v3_2_16 -L proc_sys_reset_v5_0_13 -L axi_protocol_converter_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.kyber_soc xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {kyber_soc.udo}

run -all

endsim

quit -force
