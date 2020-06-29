# gcp-packer-ansible
This example uses the packer ansible provisioner to create a GCP compute image.

## Setup

[1] Create docker container
```shell script
docker build -t centos7-ansible .
```

[2] Export environment variables, using a relative path for GOOGLE_APPLICATION_CREDENTIALS
```shell script
export GOOGLE_APPLICATION_CREDENTIALS=./keys/service_account.json
export GCP_PROJECT=PROJECT_ID
```

## Test playbook 
[1] Test playbook inside docker container
```shell script
./docker-test.sh
```

## Create image
[1] Start docker ansible control node
```shell script
./docker-run.sh
```

[2] Create packer image
```shell script
packer build centos.json
```
