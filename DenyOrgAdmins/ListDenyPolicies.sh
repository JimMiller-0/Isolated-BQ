gcloud iam policies list \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID  \
    --kind=denypolicies \
    --format=json