gcloud iam policies create isolatebqfld \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID  \
    --kind=denypolicies \
    --policy-file=deny-permissions.json