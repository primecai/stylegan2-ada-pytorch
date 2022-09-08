#!/bin/bash -l

echo Launching experiment $1
echo GPU $2

CUDA_VISIBLE_DEVICES=$2 nohup python train.py --outdir=/media/data6/shengqu/stylegan2/training-runs --data=/media/data6/shengqu/datasets/acid/train/frames --gpus=1 --resume=/media/data6/shengqu/stylegan2/training-runs/ffhq-res512-mirror-stylegan2-noaug.pkl \
> log.out 2>&1 &
echo DETACH
