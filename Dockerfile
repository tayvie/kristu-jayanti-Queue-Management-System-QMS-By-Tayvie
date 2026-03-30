FROM php:8.2-apache

# Install PDO MySQL extension for your database class
RUN docker-php-ext-install pdo pdo_mysql

# Copy your code into the web server directory
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html
