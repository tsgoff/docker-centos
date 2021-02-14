FROM centos:7

RUN yum -y install epel-release openssh-clients git
RUN yum install -y python3 python3-libs python3-devel python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install awscli youtube-dl --upgrade
RUN yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo
RUN yum -y install ffmpeg
