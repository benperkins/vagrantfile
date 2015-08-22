#    ___             ___         _   _
#   | _ ) ___ _ _   | _ \___ _ _| |_(_)_ _  ___
#   | _ \/ -_) ' \  |  _/ -_) '_| / / | ' \(_-<
#   |___/\___|_||_| |_| \___|_| |_\_\_|_||_/__/
#   V1.0 | A default Vagrant configuration with a provision bootstrap.
#

#!/usr/bin/env bash

# Install apache and PHP via apt-get.
apt-get install -y apache2 php5 php5-mcrypt php5-mysql

# Download and move composer for PHP package management.
curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Create a default Virtual Host for Apache.
VHOST=$(cat <<EOF
<VirtualHost *:80>
    DocumentRoot "/var/www/html/public"
    <Directory "/var/www/html/public">
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOF
)

# Copy the default Virtual Host in to the Apache directory.
echo "${VHOST}" > /etc/apache2/sites-available/000-default.conf

# Enable Apache and PHP modules.
a2enmod rewrite
php5enmod mcrypt

# Restart Apache to complete the installation process.
service apache2 restart
