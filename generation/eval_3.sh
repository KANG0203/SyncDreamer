#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/pre.ckpt \
                   --input testset_eval/candle/000.png\
                   --output output_pre/candle\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python generate.py --ckpt ckpt/final.ckpt \
                   --input testset_eval/candle/000.png\
                   --output output_final/candle\
                   --sample_num 4 \
                   --cfg_scale 2.0 \
                   --elevation 30 \
                   --crop_size 200

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/candle/0.png \
                         -n candle_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/candle/1.png \
                         -n candle_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/candle/2.png \
                         -n candle_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/candle/3.png \
                         -n candle_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/candle/0.png \
                         -n candle_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/candle/1.png \
                         -n candle_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/candle/2.png \
                         -n candle_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/candle/3.png \
                         -n candle_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 


srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_pre/renderer/candle_0-neus --name candle_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_pre/renderer/candle_1-neus --name candle_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_pre/renderer/candle_2-neus --name candle_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_pre/renderer/candle_3-neus --name candle_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_final/renderer/candle_0-neus --name candle_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_final/renderer/candle_1-neus --name candle_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_final/renderer/candle_2-neus --name candle_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/candle --pr output_final/renderer/candle_3-neus --name candle_final_3