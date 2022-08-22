#!/bin/bash -l

echo Launching experiment $1
echo GPU $2

# CUDA_VISIBLE_DEVICES=$2 nohup python3 train_con.py --curriculum=celeba \
#                                             --output_dir='/media/data6/shengqu/pix2nerf' \
#                                             --dataset_dir='/media/data6/shengqu/datasets/img_align_celeba' \
#                                             --encoder_type='CCS' \
#                                             --recon_lambda=5 \
#                                             --ssim_lambda=1\
#                                             --vgg_lambda=1 \
#                                             --pos_lambda_gen=15 \
#                                             --lambda_e_latent=1 \
#                                             --lambda_e_pos=1 \
#                                             --cond_lambda=1 \
#                                             --load_encoder=1 \
#                                             --wandb_name=$1 \
#                                             --wandb_project='pix2nerf' \
#                                             --wandb_entity='hexagonprime' \
CUDA_VISIBLE_DEVICES=$2 nohup python train.py --outdir=/media/data6/shengqu/stylegan2/training-runs --data=/media/data6/shengqu/datasets/acid/train/frames --gpus=1 \
> log.out 2>&1 &
echo DETACH
