import subprocess

from ldm.base_utils import save_pickle

uids=['cha_1', 'cha_2', 'cha_3', 'cha_4', 'cha_5', 'cha_6', 'cha_7', 'cha_8', 'cha_9', 'cha_10',  
      'cha_16', 'cha_17', 'cha_21', 'cha_22', 'cha_23', 'cha_24', 'bird', 
      'cup', 'duck', 'fish', 'girl', 'girl_2', 'girl_3', 'girl_4', 'house', 'house_2', 
      'man', 'milk', 'pencil', 'rocket', 'santa','sheep', 'table']

for uid in uids:
    cmds = ['/home/rudfo0203/blender-3.2.2-linux-x64/blender','--background','--engine','CYCLES','--python','blender_script.py','--',
            '--object_path',f'my_dataset_2/{uid}/{uid}.glb',
            '--output_dir','./training_examples_2/input','--camera_type','random']
    subprocess.run(cmds)

    cmds = ['/home/rudfo0203/blender-3.2.2-linux-x64/blender','--background','--engine','CYCLES','--python','blender_script.py','--',
            '--object_path',f'my_dataset_2/{uid}/{uid}.glb',
            '--output_dir','./training_examples_2/target','--camera_type','fixed']
    subprocess.run(cmds)

save_pickle(uids, f'training_examples_2/uid_set.pkl')