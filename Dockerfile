FROM centos:7

LABEL name=centos7-ansible

RUN \
    yum install centos-release-ansible-29 -y && \
    yum install ansible -y && \
    ansible --version

