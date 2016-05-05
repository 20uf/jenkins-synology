FROM jenkins:2.1

MAINTAINER Michael C. <m@coulleret.pro>

USER root
RUN apt-get update && apt-get install -y sudo vim php5-cli php5-dev curl php-pear ant php5-common wget lftp rsync -y --force-yes
RUN apt-get install nodejs-legacy -y --force-yes
RUN curl -L --insecure https://www.npmjs.org/install.sh | bash
RUN npm install -g bower

RUN usermod -a -G sudo jenkins
RUN sed -i.bkp -e \
      's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
      /etc/sudoers

USER jenkins
