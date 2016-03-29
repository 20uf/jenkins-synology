FROM jenkins

MAINTAINER Michael C. <m@coulleret.pro>

USER root
RUN apt-get update && apt-get install -y sudo vim php5-cli php5-dev curl php-pear ant php5-common php5-xdebug wget  -y --force-yes

usermod -a -G sudo jenkins
RUN sed -i.bkp -e \
      's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
      /etc/sudoers

USER jenkins
