#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/chair.png\
                   --output output_pre/chair\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/cute_cat.png\
                   --output output_pre/cute_cat\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/girl.png\
                   --output output_pre/girl\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/man.png\
                   --output output_pre/man\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/monster.png\
                   --output output_pre/monster\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/portrait2.png\
                   --output output_pre/portrait2\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/portrait3.png\
                   --output output_pre/portrait3\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/rilakkuma1.png\
                   --output output_pre/rilakkuma1\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/rilakkuma2.png\
                   --output output_pre/rilakkuma2\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/rilakkuma3.png\
                   --output output_pre/rilakkuma3\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200
                   
srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input new_testset/tiger.png\
                   --output output_pre/tiger\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200