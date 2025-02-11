#!/bin/bash
#SBATCH -p cs -A cs -q csug
#SBATCH -c4 --mem=4g
#SBATCH --gres gpu:1 
module load nvidia/cuda-11.0 
module load nvidia/cudnn-v8.0.180-forcuda11.0 
python train_composition_classification.py
python train_image_cropping.py

