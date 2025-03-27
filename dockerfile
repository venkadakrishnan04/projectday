#use ubuntu as the base image
FROM ubuntu:latest

#update package list and install Apache
RUN apt update && apt install -y apache2

#copy the HTML fil to the Apache web root
COPY index.html /var/www/html/index.html

#Expose port 80 for HTTP traffic
EXPOSE 80

#start Apache in the foreground
CMD ["apachectl1","-D","FOREGROUND"]
