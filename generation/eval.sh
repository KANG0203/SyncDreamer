#!/bin/sh

#SBATCH --gres=gpu:1
#SBATCH -p titanrtx

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_pre/renderer/train_0-neus --name train_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_pre/renderer/train_1-neus --name train_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_pre/renderer/train_2-neus --name train_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_pre/renderer/train_3-neus --name train_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_final/renderer/train_0-neus --name train_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_final/renderer/train_1-neus --name train_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_final/renderer/train_2-neus --name train_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/train --pr output_final/renderer/train_3-neus --name train_final_3

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_pre/renderer/elephant_0-neus --name elephant_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_pre/renderer/elephant_1-neus --name elephant_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_pre/renderer/elephant_2-neus --name elephant_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_pre/renderer/elephant_3-neus --name elephant_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_final/renderer/elephant_0-neus --name elephant_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_final/renderer/elephant_1-neus --name elephant_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_final/renderer/elephant_2-neus --name elephant_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/elephant --pr output_final/renderer/elephant_3-neus --name elephant_final_3

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_pre/renderer/chicken_0-neus --name chicken_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_pre/renderer/chicken_1-neus --name chicken_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_pre/renderer/chicken_2-neus --name chicken_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_pre/renderer/chicken_3-neus --name chicken_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_final/renderer/chicken_0-neus --name chicken_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_final/renderer/chicken_1-neus --name chicken_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_final/renderer/chicken_2-neus --name chicken_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/chicken --pr output_final/renderer/chicken_3-neus --name chicken_final_3

srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_pre/renderer/stucking_cups_0-neus --name stucking_cups_pre_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_pre/renderer/stucking_cups_1-neus --name stucking_cups_pre_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_pre/renderer/stucking_cups_2-neus --name stucking_cups_pre_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_pre/renderer/stucking_cups_3-neus --name stucking_cups_pre_3
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_final/renderer/stucking_cups_0-neus --name stucking_cups_final_0
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_final/renderer/stucking_cups_1-neus --name stucking_cups_final_1
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_final/renderer/stucking_cups_2-neus --name stucking_cups_final_2
srun --gres=gpu:1 -p titanrtx python eval_nvs.py --gt testset_eval/stucking_cups --pr output_final/renderer/stucking_cups_3-neus --name stucking_cups_final_3