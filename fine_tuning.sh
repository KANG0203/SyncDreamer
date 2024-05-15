#!/bin/sh

#SBATCH --gres=gpu:4
#SBATCH -p titanrtx

srun --gres=gpu:4 -p titanrtx \
python train_syncdreamer.py -b configs/syncdreamer-train.yaml \
                           --finetune_from ckpt/pre.ckpt \
                           -l logging_ckpt_2  \
                           -c ckpt_2 \
                           --gpus 0,1,2,3