#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx


srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/grandmother/000.png\
                   --output output_pre/grandmother\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/grandmother/000.png\
                   --output output_final/grandmother\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/grandmother/0.png \
                         -n grandmother_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/grandmother/1.png \
                         -n grandmother_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/grandmother/2.png \
                         -n grandmother_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/grandmother/3.png \
                         -n grandmother_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/grandmother/0.png \
                         -n grandmother_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/grandmother/1.png \
                         -n grandmother_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/grandmother/2.png \
                         -n grandmother_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/grandmother/3.png \
                         -n grandmother_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_pre/renderer/neus/grandmother_0-neus --name grandmother_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_pre/renderer/neus/grandmother_1-neus --name grandmother_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_pre/renderer/neus/grandmother_2-neus --name grandmother_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_pre/renderer/neus/grandmother_3-neus --name grandmother_pre_3

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_final/renderer/neus/grandmother_0-neus --name grandmother_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_final/renderer/neus/grandmother_1-neus --name grandmother_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_final/renderer/neus/grandmother_2-neus --name grandmother_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/grandmother --pr output_final/renderer/neus/grandmother_3-neus --name grandmother_final_3