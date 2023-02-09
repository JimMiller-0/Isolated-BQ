gcloud iam policies delete IsolateBQFLD \
    --attachment-point=cloudresourcemanager.googleapis.com/folders/$FOLDER_ID \
    --kind=denypolicies