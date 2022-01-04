#!/bin/bash

module load anaconda/2020.11
module load cuda/10.2
module load nccl/2.9.6-1_cuda10.2
source activate torch18

# export CUDA_HOME=/data/apps/cuda/10.1
# export PATH=/data/home/scv6140/run/1/hip/bin:$PATH

# # Task 1
# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t1/t1_train.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t1"

python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t1/t1_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t1_test" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t1/model_final.pth"

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --config-file ./configs/OWOD/t1/t1_val.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t1_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t1/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t1/t1_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t1_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t1/model_final.pth"

# # Task 2
# # cp -r ./output/1125_OWOD_origin_fpn/t1 ./output/1125_OWOD_origin_fpn/t2

# # python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t2/t2_train.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t2" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t2/model_final.pth"

# cp -r ./output/1125_OWOD_origin_fpn/t2 ./output/1125_OWOD_origin_fpn/t2_ft

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t2/t2_ft.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t2_ft" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t2_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t2/t2_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t2_test" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t2_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --config-file ./configs/OWOD/t2/t2_val.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t2_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t2_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t2/t2_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t2_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t2_ft/model_final.pth"


# # # Task 3
# cp -r ./output/1125_OWOD_origin_fpn/t2_ft ./output/1125_OWOD_origin_fpn/t3

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t3/t3_train.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t3" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t3/model_final.pth"

# cp -r ./output/1125_OWOD_origin_fpn/t3 ./output/1125_OWOD_origin_fpn/t3_ft

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t3/t3_ft.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t3_ft" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t3_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t3/t3_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t3_test" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t3_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --config-file ./configs/OWOD/t3/t3_val.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OWOD.TEMPERATURE 1.5 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t3_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t3_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t3/t3_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t3_final" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t3_ft/model_final.pth"


# # # Task 4
# cp -r ./output/1125_OWOD_origin_fpn/t3_ft ./output/1125_OWOD_origin_fpn/t4

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t4/t4_train.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t4" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t4/model_final.pth"

# cp -r ./output/1125_OWOD_origin_fpn/t4 ./output/1125_OWOD_origin_fpn/t4_ft

# python tools/train_net.py --num-gpus 8 --dist-url='auto' --resume --config-file ./configs/OWOD/t4/t4_ft.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.01 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t4_ft" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t4_ft/model_final.pth"

# python tools/train_net.py --num-gpus 8 --eval-only --config-file ./configs/OWOD/t4/t4_test.yaml SOLVER.IMS_PER_BATCH 8 SOLVER.BASE_LR 0.005 OUTPUT_DIR "./output/1125_OWOD_origin_fpn/t4_test" MODEL.WEIGHTS "./output/1125_OWOD_origin_fpn/t4_ft/model_final.pth"

