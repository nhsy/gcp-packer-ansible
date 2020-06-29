docker run --rm -ti \
    -e "GOOGLE_APPLICATION_CREDENTIALS=/root/projects/$(basename "$PWD")/$GOOGLE_APPLICATION_CREDENTIALS" \
    -e "GCP_PROJECT=$GCP_PROJECT" \
    -v "$(pwd)":/root/projects/$(basename "$PWD") \
    -v "$(pwd)"/.ssh:/root/.ssh \
    -v "$(pwd)"/.config/gcloud:/root/.config/gcloud \
    -w /root/projects/$(basename "$PWD") \
    dizzyplan/gcp-devops
