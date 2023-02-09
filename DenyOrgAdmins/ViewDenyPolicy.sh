gcloud iam policies get isolatebqfld \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID \
    --kind=denypolicies \
    --format=json