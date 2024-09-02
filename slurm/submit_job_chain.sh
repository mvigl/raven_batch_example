#!/bin/bash

# Default input arguments
EXPROOT="/raven/u/mvigl/raven_batch_example"
OUTDIR="/raven/u/mvigl/raven_batch_example/out"
JOBTIME="00:10:00" # Wall clock limit (max. is 24 hours)
TLIMIT=23.6
NUMJOBS=1
# Parse input arguments
while getopts ":m:t:e:j:r" o; do
    case "${o}" in
        r)
            EXPROOT=${OPTARG}
            ;;
    o)
        OUTDIR=${OPTARG}
        ;;
    j)
            NUMJOBS=${OPTARG}
            ;;
    esac
done

LOG_FILE="job_script.log"
ERR_FILE="job_script_error.log"


config="/raven/u/mvigl/raven_batch_example/Finetune_hep/config/ParT_Xbb_hlf_config.yaml"
checkpoint="/raven/u/mvigl/raven_batch_example/run/Scratch_Xbb_hl/models/Scratch_Xbb_hl_lr0.001_bs256_subset1.0_epoch_3_Val_loss_0.12223292887210846.pt"
mess="Scratch_Xbb_hl"
data="/raven/u/mvigl/raven_batch_example/Finetune_hep/config/train_list.txt"
data_val="/raven/u/mvigl/raven_batch_example/Finetune_hep/config/val_list.txt"
out="/raven/u/mvigl/raven_batch_example/run/Scratch_Xbb_hl"
bs=256
se=4

#subset=0.1
#nohup sbatch --job-name="$mess${subset}" --time="${JOBTIME}" single_job.sbatch "$config" "$checkpoint" "$mess" "$data" "$subset" "$data_val" "$out" "$bs" >> "$LOG_FILE" 2>> "$ERR_FILE" &
#disown -h

subset=1
nohup sbatch --job-name="$mess${subset}" --time="${JOBTIME}" single_job.sbatch "$config" "$checkpoint" "$mess" "$data" "$subset" "$data_val" "$out" "$bs" "$se" >> "$LOG_FILE" 2>> "$ERR_FILE" &
disown -h

exit 0
