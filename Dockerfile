FROM trafex/php-nginx:latest

# Install composer from the official image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Run composer install to install the dependencies
#RUN composer install --optimize-autoloader --no-interaction --no-progress

USER root

# needed for laravel
RUN apk --no-cache add \
  php8-xmlwriter \
  php8-fileinfo \
  php8-tokenizer
