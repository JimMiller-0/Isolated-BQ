gcloud iam policies update isolatebqfld \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID  \
    --kind=denypolicies \
    --policy-file=policy1.json