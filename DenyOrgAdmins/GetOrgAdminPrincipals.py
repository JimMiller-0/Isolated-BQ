"""
BEFORE RUNNING:
---------------
1. If not already done, enable the Identity and Access Management (IAM) API
   and check the quota for your project at
   https://console.developers.google.com/apis/api/iam
2. This sample uses Application Default Credentials for authentication.
   If not already done, install the gcloud CLI from
   https://cloud.google.com/sdk and run
   `gcloud beta auth application-default login`.
   For more information, see
   https://developers.google.com/identity/protocols/application-default-credentials
3. Install the Python client library for Google APIs by running
   `pip install --upgrade google-api-python-client`
4. Install the OAuth 2.0 client for Google APIs by running
   `pip install --upgrade oauth2client`
"""
from pprint import pprint

from googleapiclient import discovery
from oauth2client.client import GoogleCredentials

credentials = GoogleCredentials.get_application_default()

service = discovery.build('iam', 'v1', credentials=credentials)

# The resource name of the parent resource in one of the following formats:
# `` (empty string) -- this refers to curated roles.
# `organizations/{ORGANIZATION_ID}`
# `projects/{PROJECT_ID}`
parent = 'organizations/my-organization'  # TODO: Update placeholder value.

request = service.organizations().roles().list(parent=parent)
while True:
    response = request.execute()

    for role in response.get('roles', []):
        # TODO: Change code below to process each `role` resource:
        pprint(role)

    request = service.organizations().roles().list_next(previous_request=request, previous_response=response)
    if request is None:
        break