#!/bin/bash
# Organize Subject Data into BIDS format
# Input

cd ~/HCP_BIDS/

for SUBJECT in $1; do
	mkdir sub-${SUBJECT}
	cd sub-${SUBJECT}
	mkdir anat func dwi fmap code "source" derivatives

	#Setup anat folder
	cp ~/HCP_Subjects/$SUBJECT/Struct/MNINonLinear/T1w_restore.1.60.nii.gz ~/HCP_BIDS/sub-${SUBJECT}/sub-${SUBJECT}_T1w.nii.gz
	touch ~/HCP_BIDS/sub_${SUBJECT}/func/sub_${SUBJECT}_T1w.json

	#Setup func folder
	cp ~/HCP_Subjects/$SUBJECT/REST1/unprocessed/7T/rfMRI_REST1_PA/${SUBJECT}_7T_rfMRI_REST1_PA.nii.gz ~/HCP_BIDS/sub-${SUBJECT}/func/sub-${SUBJECT}_task-rest_bold.nii.gz
	cp ~/HCP_Subjects/$SUBJECT/REST1/unprocessed/7T/rfMRI_REST1_PA/${SUBJECT}_7T_rfMRI_REST1_PA_SBRef.nii.gz ~/HCP_BIDS/sub-${SUBJECT}/func/sub-${SUBJECT}_task-rest_sbref.nii.gz
	touch ~/HCP_BIDS/sub_${SUBJECT}/func/sub_${SUBJECT}_task-rest_bold.json

	#Setup fmap folder
	cp ~/HCP_Subjects/$SUBJECT/REST1/unprocessed/7T/rfMRI_REST1_PA/${SUBJECT}_7T_SpinEchoFieldMap_AP.nii.gz
	cp ~/HCP_Subjects/$SUBJECT/REST1/unprocessed/7T/rfMRI_REST1_PA/${SUBJECT}_7T_SpinEchoFieldMap_PA.nii.gz
	touch ~/HCP_BIDS/sub_${SUBJECT}/func/sub_${SUBJECT}_dir-j-_epi.json
	

done

