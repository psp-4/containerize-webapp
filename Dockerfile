# From ubuntu latest base image
FROM ubuntu:latest


#Defining Variables
ARG tarball="clean.tar.gz"

# Author & Project Details
LABEL "Author"="Partha"
LABEL "Project"="softsite"

# Set environment variable to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Updating the package list and installing Apache2 server
RUN apt update && apt install apache2 -y

# Start the Apache2 server in foreground when the container runs
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

# Expose the port 80 to allow incoming web traffic
EXPOSE 80

# Set the working directory to the Apache document root
WORKDIR /var/www/html

# Define a volume for Apache logs
VOLUME /var/log/apache2

# Untar the tarball and add the contents to the specified directory
ADD ${tarball} /var/www/html/