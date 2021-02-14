FROM php:7.4-fpm

RUN apt-get update \
  && apt-get install -y --no-install-recommends libpq-dev \
  && docker-php-ext-install mysqli pdo_pgsql pdo_mysql \
  && apt-get install -y zip unzip git



# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./entry_point.sh /
RUN chmod +x /entry_point.sh

ARG ENV
ARG HOST_USER
ARG HOST_USER_GROUP

USER ${HOST_USER}:${HOST_USER_GROUP}

ENTRYPOINT ["/entry_point.sh"]

