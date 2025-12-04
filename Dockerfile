FROM alpine:3.23.0

LABEL maintainer="Gordon Franke <info@nevalon.de>"

RUN apk add --update wget=1.25.0-r1 ca-certificates=20250911-r0

WORKDIR /opt/phpmyadmin

RUN PHPMYADMIN_VERSION=5.2.3 && \
    wget -O- https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.gz | tar -xzf - \
        && mv phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages/* . \
        && rm -rf phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages \
        && rm -rf examples \
        && rm -rf setup \
        && rm -rf js/jquery/src \
        && rm -rf sql

VOLUME /opt/phpmyadmin

COPY config.inc.php /opt/phpmyadmin/config.inc.php
COPY run.sh /run.sh
RUN chmod u+rwx /run.sh

CMD ["/run.sh"]
