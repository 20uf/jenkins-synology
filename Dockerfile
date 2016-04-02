FROM jenkins:latest

MAINTAINER Michael C. <m@coulleret.pro>

USER root
RUN apt-get update && apt-get install -y sudo vim php5-cli php5-dev curl php-pear ant php5-common php5-xdebug wget docker.io rsync -y --force-yes

RUN usermod -a -G sudo jenkins
RUN sed -i.bkp -e \
      's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
      /etc/sudoers

RUN mkdir -p /tmp/WEB-INF/plugins

# Install required jenkins plugins.
RUN curl -L https://updates.jenkins-ci.org/latest/checkstyle.hpi -o /tmp/WEB-INF/plugins/checkstyle.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/cloverphp.hpi -o /tmp/WEB-INF/plugins/cloverphp.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/crap4j.hpi -o /tmp/WEB-INF/plugins/crap4j.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/dry.hpi -o /tmp/WEB-INF/plugins/dry.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/htmlpublisher.hpi -o /tmp/WEB-INF/plugins/htmlpublisher.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/jdepend.hpi -o /tmp/WEB-INF/plugins/jdepend.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/plot.hpi -o /tmp/WEB-INF/plugins/plot.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/pmd.hpi -o /tmp/WEB-INF/plugins/pmd.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/violations.hpi -o /tmp/WEB-INF/plugins/violations.hpi
RUN curl -L https://updates.jenkins-ci.org/latest/xunit.hpi -o /tmp/WEB-INF/plugins/xunit.hpi

# Docker 
RUN curl -L https://updates.jenkins-ci.org/latest/docker-build-publish.hpi -o /tmp/WEB-INF/plugins/docker-build-publish.hpi

USER jenkins
