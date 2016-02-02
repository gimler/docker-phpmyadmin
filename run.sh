#!/bin/sh
set -x

if [ ! -f /opt/phpmyadmin/config.secret.inc.php ] ; then
    cat > /opt/phpmyadmin/config.secret.inc.php <<EOT
<?php
\$cfg['blowfish_secret'] = '`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1`';
EOT
fi
