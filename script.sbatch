#!/bin/bash

#SBATCH --nodes=1

#SBATCH --ntasks-per-node=1

#SBATCH --cpus-per-task=1

#SBATCH --time=11:00:00
#SBATCH --partition=cpu_short
#SBATCH --mem=8GB

#SBATCH --job-name=ZMB
#SBATCH --chdir=/gpfs/data/bershteynlab/EMOD/citrod01/SouthAfrica
#SBATCH --mail-type=END

#SBATCH --mail-user=daniel.citron@nyulangone.org

#SBATCH --output=/gpfs/data/bershteynlab/EMOD/citrod01/SouthAfrica/slurm_%j.out

module purge
module load singularity/3.7.1
module load git/2.49.0
module load python/cpu/3.6.5
source "$HOME/environments/dtk-tools-p36/bin/activate"
export PYTHONPATH="$HOME/environments/dtk-tools-p36/lib/python3.6/site-packages"
which python; python --version

python run_scenarios.py -c optim_script_08jan2020.py --resample-method provided --samples resampled_parameter_sets_short.csv --output-dir test_1 --suite-name test_1 --table scenarios.csv
