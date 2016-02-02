# phpMyAdmin docker image

It contains only phpmyadmin and can be use as docker data container and [nginx](https://hub.docker.com/_/nginx/) and [php-fpm](https://hub.docker.com/_/php/) for example.

[![Build Status](https://travis-ci.org/gimler/docker-phpmyadmin.svg?branch=master)](https://travis-ci.org/gimler/docker-phpmyadmin)

it is heavy inspired by the official docker image [phpmyadmin/docker](https://github.com/phpmyadmin/docker) but without the php and webserver stuff.

## Hints

### PHP Container

Your php container should include the following extensions installed:

 * zip
 * bz2
 * mbstring
 * mysqli

## Usage behind reverse proxys
Set the variable ``PMA_ABSOLUTE_URI`` to the fully-qualified path (``https://pma.example.net/``) where the reverse proxy makes phpMyAdmin available.

## Environment variables summary

* ``PMA_ARBITRARY`` - when set to 1 connection to the arbitrary server will be allowed
* ``PMA_HOST`` - define address/host name of the MySQL server
* ``PMA_PORT`` - define port of the MySQL server
* ``PMA_HOSTS`` - define comma separated list of address/host names of the MySQL servers
* ``PMA_USER`` and ``PMA_PASSWORD`` - define username to use for config authentication method
* ``PMA_ABSOLUTE_URI`` - define user-facing URI
