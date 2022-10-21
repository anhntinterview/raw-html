FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

# Change directory
RUN cd /var/www/html

# Download website
RUN wget https://codeload.github.com/anhntinterview/raw-html/zip/refs/heads/master

# Unzip folder
RUN unzip master

# Copy files into html directory
RUN cp -r raw-html-master/* /var/www/html/

# Remove unneccessary files
RUN rm -rf raw-html-master master

# Export port 80 on the container
EXPOSE 80

# Set the default application that will start when the container 
ENTRYPOINT ["/user/sbin/httpd", "-D", "FOREGROUND"]