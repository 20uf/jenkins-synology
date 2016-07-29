FROM jenkins:latest

MAINTAINER Michael COULLERET <michael@coulleret.pro>

USER root

RUN apt-get update && apt-get install -y sudo vim php5-cli php5-dev curl php-pear ant php5-common wget lftp rsync -y --force-yes
RUN sudo apt-get install rubygems -y --force-yes
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
RUN apt-get install nodejs -y --force-yes

RUN npm install -g bower

RUN gem install capistrano-ext
RUN gem install 'capistrano-strategy-copy-with-triggers'

RUN usermod -a -G sudo jenkins
RUN sed -i.bkp -e \
      's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
      /etc/sudoers

USER jenkins
