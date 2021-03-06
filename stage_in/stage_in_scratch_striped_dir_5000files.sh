#!/bin/bash
#SBATCH -p debug
#SBATCH -N 1
#SBATCH --qos=premium
#SBATCH -t 00:01:00
#SBATCH -o stage_in_scratch_striped_dir.out

#DW jobdw capacity=200GB access_mode=striped type=scratch
#DW stage_in source=/global/cscratch1/sd/djbard/model0112 destination=$DW_JOB_STRIPED/model0112   type=directory
echo "number of files in the input dir:"
ls -lrta /global/cscratch1/sd/djbard/model0112 | wc
echo "input dir size:"
du -h --max-depth=1 /global/cscratch1/sd/djbard/model0112 

echo "number of files in the BB dir:"
ls -lrta  $DW_JOB_STRIPED/model0112 | wc
echo "BB dir size:"
du -h --max-depth=1  $DW_JOB_STRIPED/model0112
