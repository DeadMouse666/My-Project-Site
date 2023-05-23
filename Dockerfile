FROM php:8-cli

#RUN docker-php-ext-install pdo mysql pdo-mysql

RUN apt-get update && apt-get install -y curl git zip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /app
ADD . .

RUN composer install

CMD ["php" , "-S" , "0.0.0.0:8000" , "-t", "/app/public"]