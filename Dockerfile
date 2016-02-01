FROM alpine
MAINTAINER Gordon Franke <info@nevalon.de>

RUN apk add --update wget ca-certificates

RUN PHPMYADMIN_VERSION=4.5.4.1 && \
    wget -O- https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.gz | tar -xzf - \
        && mv phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages . \
        && rm -rf phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages \
        && rm -rf examples \
        && rm -rf setup \
        && rm -rf sql
