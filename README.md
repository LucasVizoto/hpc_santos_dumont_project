# Projeto HPC — Processamento Paralelo de Imagens DICOM

## Visão Geral
Este projeto implementa um pipeline de processamento de imagens médicas no formato DICOM, utilizando programação paralela com MPI (Message Passing Interface) para otimizar a performance em ambientes de computação de alto desempenho (HPC), como o supercomputador Santos Dumont. O pipeline é projetado para ler, anonimizar, aplicar filtros, comprimir e salvar imagens DICOM de forma distribuída entre múltiplos processos.

## Requisitos
- Python 3.8+
- Bibliotecas Python: `pydicom`, `numpy`, `pillow`, `mpi4py`
- Um ambiente com MPI instalado (como Open MPI ou MPICH)
- SLURM (para execução em clusters como o Santos Dumont)

## Como Rodar Localmente

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/LucasVizoto/hpc_santos_dumont_project.git
    cd hpc_santos_dumont_project
    ```

2.  **Instale as dependências:**
    ```bash
    pip install -r requirements.txt
    ```

3.  **Execute o script:**
    O script `run_local.sh` exemplifica como executar o processo com `mpirun`. Ele distribui a tarefa entre 4 processos.
    ```bash
    bash scripts/run_local.sh
    ```

## Como Rodar no Santos Dumont (usando SLURM)

Para submeter o trabalho ao cluster, utilize o script de submissão do SLURM. Este script configura o ambiente, define o número de nós/tarefas e executa o programa.

```bash
sbatch scripts/submit.sh
