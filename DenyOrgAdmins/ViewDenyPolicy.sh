gcloud iam policies get Isolate_BQFLD \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID \
    --kind=denypolicies \
    --format=json