#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
#
# Prepare apache
mv /etc/apache2/sites-available /etc/apache2/sites-available.backup

echo "Type your fake domain, for example: 'kurec.com'"
read fuck

	mkdir -p /var/www/$fuck/public_html
cd /var/www/$fuck/public_html/
	cat > index.html << EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Welcome to your fucking production</title>
  </head>
  <body>
    <h1>Success! Welcome to your fucking production $fck.com set up completed!</h1>
  </body>
</html>
EOF
# Creatin vhost
chown -R www-data: /var/www/$fuck
cd /etc/apache2/sites-available/
	cat > $fuck.conf << EOF
<VirtualHost *:80>
    ServerName $fuck.com
    ServerAlias www.$fuck
    DocumentRoot /var/www/$fuck/public_html

    <Directory /var/www/$fuck/public_html>
        Options -Indexes +FollowSymLinks
        AllowOverride All
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/$fuck.com-error.log
    CustomLog ${APACHE_LOG_DIR}/$fuck-access.log combined
</VirtualHost>
EOF

a2ensite $fuck
systemctl restart apache2

cd /etc/
	echo "Type you IP"
	read IP
		cat >> hosts << EOF
$IP $fuck
EOF
	systemctl restart apache2
	exit 0;
