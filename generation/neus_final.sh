#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/chair/0.png \
                         -n chair_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/chair/1.png \
                         -n chair_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/chair/2.png \
                         -n chair_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/chair/3.png \
                         -n chair_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cute_cat/0.png \
                         -n cute_cat_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cute_cat/1.png \
                         -n cute_cat_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cute_cat/2.png \
                         -n cute_cat_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/cute_cat/3.png \
                         -n cute_cat_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer                          


srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/girl/0.png \
                         -n girl_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/girl/1.png \
                         -n girl_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/girl/2.png \
                         -n girl_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/girl/3.png \
                         -n girl_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/man/0.png \
                         -n man_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/man/1.png \
                         -n man_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/man/2.png \
                         -n man_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/man/3.png \
                         -n man_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/monster/0.png \
                         -n monster_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/monster/1.png \
                         -n monster_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/monster/2.png \
                         -n monster_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/monster/3.png \
                         -n monster_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait1/0.png \
                         -n portrait1_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait1/1.png \
                         -n portrait1_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait1/2.png \
                         -n portrait1_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait1/3.png \
                         -n portrait1_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait2/0.png \
                         -n portrait2_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait2/1.png \
                         -n portrait2_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait2/2.png \
                         -n portrait2_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait2/3.png \
                         -n portrait2_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait3/0.png \
                         -n portrait3_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait3/1.png \
                         -n portrait3_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait3/2.png \
                         -n portrait3_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/portrait3/3.png \
                         -n portrait3_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma1/0.png \
                         -n rilakkuma1_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma1/1.png \
                         -n rilakkuma1_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma1/2.png \
                         -n rilakkuma1_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma1/3.png \
                         -n rilakkuma1_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma2/0.png \
                         -n rilakkuma2_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma2/1.png \
                         -n rilakkuma2_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma2/2.png \
                         -n rilakkuma2_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma2/3.png \
                         -n rilakkuma2_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma3/0.png \
                         -n rilakkuma3_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma3/1.png \
                         -n rilakkuma3_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma3/2.png \
                         -n rilakkuma3_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/rilakkuma3/3.png \
                         -n rilakkuma3_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 

srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/tiger/0.png \
                         -n tiger_0-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/tiger/1.png \
                         -n tiger_1-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/tiger/2.png \
                         -n tiger_2-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 
srun --gres=gpu:1 -p titanrtx \
python train_renderer.py -i output_final/tiger/3.png \
                         -n tiger_3-neus \
                         -b configs/neus.yaml \
                         -l output_final/renderer 