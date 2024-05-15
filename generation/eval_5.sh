#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/yoshi/000.png\
                   --output output_pre/yoshi\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/yoshi/000.png\
                   --output output_final/yoshi\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/yoshi/0.png \
                         -n yoshi_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/yoshi/1.png \
                         -n yoshi_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/yoshi/2.png \
                         -n yoshi_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/yoshi/3.png \
                         -n yoshi_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/yoshi/0.png \
                         -n yoshi_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/yoshi/1.png \
                         -n yoshi_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/yoshi/2.png \
                         -n yoshi_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/yoshi/3.png \
                         -n yoshi_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 


srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_pre/renderer/yoshi_0-neus --name yoshi_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_pre/renderer/yoshi_1-neus --name yoshi_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_pre/renderer/yoshi_2-neus --name yoshi_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_pre/renderer/yoshi_3-neus --name yoshi_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_final/renderer/yoshi_0-neus --name yoshi_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_final/renderer/yoshi_1-neus --name yoshi_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_final/renderer/yoshi_2-neus --name yoshi_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/yoshi --pr output_final/renderer/yoshi_3-neus --name yoshi_final_3