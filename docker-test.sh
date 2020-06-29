docker run --rm -ti \
    -v "$(pwd)":/root/projects/$(basename "$PWD") \
    -v "$(pwd)"/.ssh:/root/.ssh \
    -v "$(pwd)"/.config/gcloud:/root/.config/gcloud \
    -w /root/projects/$(basename "$PWD") \
    centos7-ansible ansible-playbook --connection=local -i 127.0.0.1, playbooks/centos.yml
