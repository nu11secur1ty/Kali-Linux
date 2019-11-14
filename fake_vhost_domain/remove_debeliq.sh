#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
#
# Fix apache
cd /etc/apache2/sites-available
mv 000-default.conf.backup 000-default.conf

echo "Type your fake domain, which you want to remove for example: 'kurec.com'"
read fuck_off

	rm -rf /var/www/$fuck_off

echo "Type your conf which you want to remove for example: kurec.com.conf"
read gad_mrusen
rm -rf /etc/apache2/sites-available/$gad_mrusen
systemctl restart apache2
	echo "Choice the line number which you want to delete"
		cat -n /etc/hosts
		echo "Copy and paste this command in to your session with your line number
		for example: sed -i '5d' /etc/hosts"
		exit 0;
