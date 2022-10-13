# EEGLAB-Artifact-Detection
Pipeline for using EEGLAB with EEGEXtract for unsupervised atrifact detection 

## Requirements
- Install the EEGExtract library (for EEG feature extraction) https://github.com/sari-saba-sadiya/EEGExtract
- Install the PyOD library (for automated outlier detection) https://pyod.readthedocs.io/en/latest/index.html 

## Pipeline
- Navigate to a folder with EEGLAB data (.set & .fdt files).
- Execute eeglab_to_mat to convert RRGLAB data to mat format
- Execute detect_outlier.ipynb to mark outlier trials
- Execute eeglab_reject_from_mat to reject trials marked as outliers from your original EEGLAB data (.set & .fdt files).

