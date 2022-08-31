FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/
#COPY entrypoint.sh /entrypoint.sh
EXPOSE 80
#RUN chmod +x ./entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
#CMD [“apachectl”, “-D”, “FOREGROUND”]