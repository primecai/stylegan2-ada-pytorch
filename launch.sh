#!/bin/bash -l

echo Launching experiment $1
echo GPU $2

# CUDA_VISIBLE_DEVICES=$2 nohup python train.py --outdir=/home/shengqu/repos/stylegan2-ada-pytorch/training-runs --data=/media/data6/shengqu/datasets/acid/train/frames --gpus=1 --resume=/media/data6/shengqu/stylegan2/training-runs/ffhq-res512-mirror-stylegan2-noaug.pkl \
CUDA_VISIBLE_DEVICES=$2 nohup python train.py --outdir=/home/shengqu/repos/stylegan2-ada-pytorch/training-runs --data=/home/shengqu/data/lhq_256_rgbd --gpus=1 --resume=/home/shengqu/repos/stylegan2-ada-pytorch/lsundog-res256-paper256-kimg100000-noaug.pkl \
> log.out 2>&1 &
echo DETACH
