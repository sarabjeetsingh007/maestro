./maestro --print_res=true \
          --print_res_csv_file=true \
          --print_log_file=false \
          --Mapping_file='data/mapping/temp_Resnet50_dla.m' \
          --HW_file='./data/hw/accelerator_1.m' \
          --noc_bw=32 \
          --noc_hops=1024 \
          --noc_hop_latency=1024 \
          --l1_size=256 \
          --l2_size=2048 \
          --num_pes=1024 \
          --print_design_space=true \
          --msg_print_lv=0

