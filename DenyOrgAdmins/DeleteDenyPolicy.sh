gcloud iam policies delete isolatebqfld \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID \
    --kind=denypolicies