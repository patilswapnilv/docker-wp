# Use the official WordPress image with PHP 8.1 from Docker Hub
FROM wordpress:php8.1-apache

# Install any additional PHP extensions if needed
# RUN docker-php-ext-install pdo pdo_mysql

# Copy the existing WordPress files to the container
COPY . /var/www/html

# Remove the wp-content directory
RUN rm -rf /var/www/html/wp-content

# Clone the wp-content from GitHub
RUN git clone https://github.com/patilswapnilv/example-wp-content.git /var/www/html/wp-content

# Expose the port the app runs on
EXPOSE 80

# Set the entrypoint to start Apache
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
