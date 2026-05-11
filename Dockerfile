FROM php:8.3-apache

ENV APACHE_DOCUMENT_ROOT=/var/www/html

RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libonig-dev \
    default-mysql-client \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libzip-dev \
    libmagickwand-dev \
    imagemagick \
    unzip \
    curl \
    msmtp-mta \
    ca-certificates \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm \
    && docker-php-ext-install -j"$(nproc)" mysqli mbstring curl gd fileinfo zip exif \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && a2enmod rewrite headers expires deflate \
    && rm -rf /var/lib/apt/lists/*

COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php/custom.ini /usr/local/etc/php/conf.d/zz-kiptalk.ini
COPY docker/entrypoint.sh /usr/local/bin/kiptalk-entrypoint

RUN chmod +x /usr/local/bin/kiptalk-entrypoint

COPY . /var/www/html

ENTRYPOINT ["kiptalk-entrypoint"]
CMD ["apache2-foreground"]
