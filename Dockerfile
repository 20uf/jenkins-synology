FROM jenkins

MAINTAINER Michael C <m@coulleret.pro>

USER root
RUN apt-get update && apt-get install -y php5-cli php5-dev php5-curl curl php-pear ant

USER jenkins
