FROM php:8.2-fpm-alpine

ENV TZ Asia/Tokyo

RUN apk update
RUN set -ex \
    && apk --no-cache add postgresql-dev autoconf
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_pgsql pdo_mysql pgsql intl mysqli

# Xdebugをインストールした後、依存パッケージを削除
RUN apk add --no-cache --virtual .xdebug-deps $PHPIZE_DEPS linux-headers \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && apk del -f .xdebug-deps

# Xdebugの設定
RUN echo 'xdebug.mode=develop,debug,coverage' >> /usr/local/etc/php/conf.d/99-xdebug.ini


# 保守用ツールのインストール
RUN apk add --no-cache lsof sysstat procps iotop mtr net-tools bind-tools iptables strace

COPY ./docker/app/php.ini /usr/local/etc/php/php.ini

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html