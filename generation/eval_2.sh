#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/cactus/000.png\
                   --output output_pre/cactus\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/cactus/000.png\
                   --output output_final/cactus\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cactus/0.png \
                         -n cactus_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cactus/1.png \
                         -n cactus_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cactus/2.png \
                         -n cactus_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cactus/3.png \
                         -n cactus_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cactus/0.png \
                         -n cactus_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cactus/1.png \
                         -n cactus_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cactus/2.png \
                         -n cactus_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cactus/3.png \
                         -n cactus_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 


srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_pre/renderer/cactus_0-neus --name cactus_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_pre/renderer/cactus_1-neus --name cactus_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_pre/renderer/cactus_2-neus --name cactus_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_pre/renderer/cactus_3-neus --name cactus_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_final/renderer/cactus_0-neus --name cactus_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_final/renderer/cactus_1-neus --name cactus_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_final/renderer/cactus_2-neus --name cactus_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/cactus --pr output_final/renderer/cactus_3-neus --name cactus_final_3