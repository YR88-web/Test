FROM gitpod/workspace-full:latest

# Install PHP and MySQL extensions
RUN apt-get update && apt-get install -y --no-install-recommends \
    php7.4-mysql \
    php7.4-mbstring \
    php7.4-curl \
    php7.4-json

# Optionally, install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Run any necessary build/setup commands
# RUN composer install

# Set the default command to run
# CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]