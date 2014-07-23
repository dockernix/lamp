# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Artem Kobrin "kobrin.artem@gmail.com"

# Install packages
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 mysql-server php5-mysql git supervisor 

# Add image configuration and scripts
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 3306
CMD ["/usr/bin/supervisord"]
