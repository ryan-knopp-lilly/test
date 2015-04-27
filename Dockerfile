
RUN echo "Installing tutum/apache-php"
FROM tutum/apache-php

RUN echo "Installing site"
ADD /site /var/www/site

# Update the default apache site with the config we created.
ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
 
# By default, simply start apache.
CMD /usr/sbin/apache2ctl -D FOREGROUND