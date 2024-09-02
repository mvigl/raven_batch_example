import h5py
import numpy as np
import torch
import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument('--lr', type=float,  help='learning rate',default='0.001')
parser.add_argument('--bs', type=int,  help='batch size',default='512')
parser.add_argument('--ep', type=int,  help='epochs',default='100')
parser.add_argument('--num_workers', type=int,  help='num_workers',default='12')
parser.add_argument('--mess', help='message',default='Scratch_Xbb_hl')
parser.add_argument('--config', help='config',default='/Users/matthiasvigl/Documents/Physics/EndToEnd/public/Finetune_hep/config/ParT_Xbb_hlf_config.yaml')
parser.add_argument('--data', help='data',default='/Users/matthiasvigl/Documents/Physics/EndToEnd/public/data/test_list.txt')
parser.add_argument('--data_val', help='data_val',default='/Users/matthiasvigl/Documents/Physics/EndToEnd/public/data/test_list.txt')
parser.add_argument('--project_name', help='project_name',default='FM_SBI')
parser.add_argument('--subset',  type=float, help='njets_mlp',default=1)
parser.add_argument('--api_key', help='api_key',default='r1SBLyPzovxoWBPDLx3TAE02O')
parser.add_argument('--ws', help='workspace',default='mvigl')
parser.add_argument('--checkpoint',  help='training-checkpoint',default='')#'/raven/u/mvigl/public/run/Xbb/models/Xbb_lr0.01_bs512_subset0.1.pt')
parser.add_argument('--start_epoch', type=int, help='start_epoch',default=0)
parser.add_argument('--out', help='out directory',default='/raven/u/mvigl/public/run/Scratch_Xbb_hl')

args = parser.parse_args()

print(' job run ')