#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/hornet/000.png\
                   --output output_pre/hornet\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/hornet/000.png\
                   --output output_final/hornet\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/hornet/0.png \
                         -n hornet_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/hornet/1.png \
                         -n hornet_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/hornet/2.png \
                         -n hornet_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/hornet/3.png \
                         -n hornet_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/hornet/0.png \
                         -n hornet_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/hornet/1.png \
                         -n hornet_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/hornet/2.png \
                         -n hornet_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/hornet/3.png \
                         -n hornet_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 


srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_pre/renderer/hornet_0-neus --name hornet_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_pre/renderer/hornet_1-neus --name hornet_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_pre/renderer/hornet_2-neus --name hornet_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_pre/renderer/hornet_3-neus --name hornet_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_final/renderer/hornet_0-neus --name hornet_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_final/renderer/hornet_1-neus --name hornet_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_final/renderer/hornet_2-neus --name hornet_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/hornet --pr output_final/renderer/hornet_3-neus --name hornet_final_3