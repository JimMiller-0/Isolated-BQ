gcloud iam policies update IsolateBQFLD \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID  \
    --kind=denypolicies \
    --policy-file=deny-permissions.json