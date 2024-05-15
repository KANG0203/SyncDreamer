import subprocess

from ldm.base_utils import save_pickle

uids=['yoshi', 'takodachi']

for uid in uids:
    cmds = ['/home/rudfo0203/blender-3.2.2-linux-x64/blender','--background','--engine','CYCLES','--python','blender_script.py','--',
            '--object_path',f'shadeless/{uid}.glb',
            '--output_dir','./shadeless_examples/input','--camera_type','random']
    subprocess.run(cmds)

    cmds = ['/home/rudfo0203/blender-3.2.2-linux-x64/blender','--background','--engine','CYCLES','--python','blender_script.py','--',
            '--object_path',f'shadeless/{uid}.glb',
            '--output_dir','./shadeless_examples/target','--camera_type','fixed']
    subprocess.run(cmds)

save_pickle(uids, f'shadeless_examples/uid_set.pkl')