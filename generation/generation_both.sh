#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx


srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/1.png\
                   --output output_pre/1\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input new_testset/1.png\
                   --output output_final/1\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

