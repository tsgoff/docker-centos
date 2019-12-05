FROM centos

RUN yum -y install epel-release openssh-clients
RUN yum install -y python36 python36-libs python36-devel python36-pip
RUN pip3 install --upgrade pip
RUN pip3 install awscli --upgrade
