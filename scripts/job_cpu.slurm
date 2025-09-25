#!/bin/bash
#SBATCH --job-name=proj_cpu
#SBATCH --output=results/%x_%j.out
#SBATCH --error=results/%x_%j.err
#SBATCH --time=00:20:00
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
# #SBATCH --partition=cpu # ajuste conforme fila/partição disponível no SD
# module load mpi python/3.10 # ajuste para o SD
echo "Iniciando em $(date)"
srun python3 src/main.py