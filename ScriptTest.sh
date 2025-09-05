#!/bin/bash
#SBATCH -N 1
#SBATCH --ntask-per-node=20
#SBATCH --time=01:00:00
#SBATCH --partition=cpu
#SBATCH --mem=16GB 
#SBATCH --error=%J.err
#SBATCH --output=%J.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=shashi.kumar@iitgn.ac.in
cd $SLURM_SUBMIT_DIR
pip install -r requirements.txt
python3 test_classical_gan_s&p500.py