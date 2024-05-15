#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/punk_girl/000.png\
                   --output output_pre/punk_girl\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/punk_girl/000.png\
                   --output output_final/punk_girl\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/punk_girl/0.png \
                         -n punk_girl_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/punk_girl/1.png \
                         -n punk_girl_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/punk_girl/2.png \
                         -n punk_girl_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/punk_girl/3.png \
                         -n punk_girl_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/punk_girl/0.png \
                         -n punk_girl_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/punk_girl/1.png \
                         -n punk_girl_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/punk_girl/2.png \
                         -n punk_girl_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/punk_girl/3.png \
                         -n punk_girl_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 


srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_pre/renderer/punk_girl_0-neus --name punk_girl_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_pre/renderer/punk_girl_1-neus --name punk_girl_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_pre/renderer/punk_girl_2-neus --name punk_girl_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_pre/renderer/punk_girl_3-neus --name punk_girl_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_final/renderer/punk_girl_0-neus --name punk_girl_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_final/renderer/punk_girl_1-neus --name punk_girl_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_final/renderer/punk_girl_2-neus --name punk_girl_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/punk_girl --pr output_final/renderer/punk_girl_3-neus --name punk_girl_final_3