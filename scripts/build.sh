#!/usr/bin/env bash
set -e
# Ex.: módulo/ambiente local; no SD use "module load" equivalente
# MPI (C/C++):
# mpicc -O3 -fopenmp -o bin/proj src/main.c
# MPI (Python):
pip install -r env/requirements.txt
# CUDA:
# nvcc -O3 -o bin/proj src/main.cu
echo "Build ok"