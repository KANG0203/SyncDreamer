#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/chair/0.png \
                         -n chair_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/chair/1.png \
                         -n chair_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/chair/2.png \
                         -n chair_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/chair/3.png \
                         -n chair_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cute_cat/0.png \
                         -n cute_cat_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cute_cat/1.png \
                         -n cute_cat_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cute_cat/2.png \
                         -n cute_cat_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/cute_cat/3.png \
                         -n cute_cat_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer                          


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/girl/0.png \
                         -n girl_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/girl/1.png \
                         -n girl_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/girl/2.png \
                         -n girl_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/girl/3.png \
                         -n girl_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/man/0.png \
                         -n man_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/man/1.png \
                         -n man_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/man/2.png \
                         -n man_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/man/3.png \
                         -n man_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/monster/0.png \
                         -n monster_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/monster/1.png \
                         -n monster_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/monster/2.png \
                         -n monster_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/monster/3.png \
                         -n monster_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait1/0.png \
                         -n portrait1_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait1/1.png \
                         -n portrait1_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait1/2.png \
                         -n portrait1_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait1/3.png \
                         -n portrait1_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait2/0.png \
                         -n portrait2_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait2/1.png \
                         -n portrait2_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait2/2.png \
                         -n portrait2_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait2/3.png \
                         -n portrait2_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait3/0.png \
                         -n portrait3_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait3/1.png \
                         -n portrait3_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait3/2.png \
                         -n portrait3_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/portrait3/3.png \
                         -n portrait3_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma1/0.png \
                         -n rilakkuma1_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma1/1.png \
                         -n rilakkuma1_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma1/2.png \
                         -n rilakkuma1_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma1/3.png \
                         -n rilakkuma1_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma2/0.png \
                         -n rilakkuma2_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma2/1.png \
                         -n rilakkuma2_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma2/2.png \
                         -n rilakkuma2_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma2/3.png \
                         -n rilakkuma2_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma3/0.png \
                         -n rilakkuma3_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma3/1.png \
                         -n rilakkuma3_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma3/2.png \
                         -n rilakkuma3_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/rilakkuma3/3.png \
                         -n rilakkuma3_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/tiger/0.png \
                         -n tiger_0-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/tiger/1.png \
                         -n tiger_1-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/tiger/2.png \
                         -n tiger_2-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_pre/tiger/3.png \
                         -n tiger_3-neus \
                         -b configs/neus.yaml \
                         -l output_pre/renderer 