# Use Amazon Linux
FROM amazonlinux:2

# Install Apache
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy project files from repo to Apache root
COPY . /var/www/html/

# Expose port
EXPOSE 80

# Run Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
