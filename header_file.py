import numpy as np
np.set_printoptions(precision=4, suppress=True)
import nibabel as nib

func_img = nib.load('/home/moreilly/HCP_BIDS/sub-02/fmap/sub-02_fieldmap.nii.gz')

header = func_img.header
print(header.get_zooms())
#print(header)
