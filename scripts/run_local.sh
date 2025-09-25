**scripts/run_local.sh**
```bash
#!/usr/bin/env bash
set -e
# MPI (Python)
mpirun -np 4 python3 src/main.py
# ou MPI (C/C++):
# mpirun -np 4 ./bin/proj
# ou CUDA (teste unitário):
# ./bin/proj