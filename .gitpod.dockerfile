FROM php:8.1-fpm

# Install MySQL client and phpmyadmin
RUN apt-get update && apt-get install -y mysql-client phpmyadmin

# Copy your project files here
COPY . /var/www/html

RUN mysql -u root -p"your_root_password" -e "CREATE DATABASE your_database_name;"
RUN mysql -u root -p"your_root_password" -e "GRANT ALL PRIVILEGES ON your_database_name.* TO 'your_username'@'localhost' IDENTIFIED BY 'your_password';"
RUN mysql -u root -p"your_root_password" -e "FLUSH PRIVILEGES;"

