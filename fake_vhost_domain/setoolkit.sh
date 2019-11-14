#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
#
# Prepare apache
cd /etc/apache2/sites-available 
mv 000-default.conf 000-default.conf.backup

# Creating vhost
cd /etc/apache2/sites-available/
	cat > setoolkit.conf << EOF
<VirtualHost *:80>
    DocumentRoot /root/.set/web_clone
<Directory /root/.set/web_clone>
        Options -Indexes +FollowSymLinks
        AllowOverride All
    </Directory>
    ErrorLog ${APACHE_LOG_DIR}/$fuck-error.log
    CustomLog ${APACHE_LOG_DIR}/$fuck-access.log combined
</VirtualHost>
EOF
systemct start apache2
	exit 0;
