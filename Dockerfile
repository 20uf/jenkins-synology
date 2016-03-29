FROM jenkins

MAINTAINER Michael C. <m@coulleret.pro>

USER root
RUN apt-get update && apt-get install -y sudo vim php5-cli php5-dev curl php-pear ant php5-common php5-xdebug wget  -y --force-yes

ADD set_sudo.sh /set_sudo.sh
RUN chmod +x /*.sh
CMD ["/set_sudo.sh"]

EXPOSE 22

USER jenkins
