FROM centos:7

RUN yum -y install epel-release openssh-clients git
RUN yum install -y python3 python3-libs python3-devel python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install awscli youtube-dl --upgrade
RUN yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo
RUN yum -y install ffmpeg which
RUN command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
RUN command curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -
RUN curl -L get.rvm.io | bash -s stable
RUN /usr/local/rvm/bin/rvm install 3.0.0
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm use 3.0.0 && gem install r10k"
