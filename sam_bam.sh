#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=1:00:00
#SBATCH --job-name=MYJOB
#SBATCH --output=slurm_%j.out
module load samtools/intel/1.9
for read in ./*.sam
do
  view -bS ${read}.sam > ${read::-4}.bam
done
