#!/bin/bash
# -----------------------------Name of the job-------------------------
#SBATCH --job-name=serial_example
#-----------------------------Mail address-----------------------------
#SBATCH --mail-user=coralia.manzanillapech@wur.nl
#SBATCH --mail-type=END
#-----------------------------Output files-----------------------------
#SBATCH --output=output_%j.txt
#SBATCH --error=error_output_%j.txt
#-----------------------------Other information------------------------
#SBATCH --comment='Some comments'
#-----------------------------Required resources-----------------------
#SBATCH --time=1-00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10000

#-----------------------------Environment, Operations and Job steps----

#ml legacy
#ml Java
#java -jar SnifferAnalyzer.jar herd_robot101.csv herd_sniffer101_Loggy_42s_FD1.txt 42

module load groups
module --ignore_cache load WUR/ABGC/SnifferAnalyzer

sniffer_analyzer herd_robot101.csv herd_sniffer101_Loggy_42s_FD1.txt 42
