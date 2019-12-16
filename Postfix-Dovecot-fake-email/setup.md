root@mail:~# apt -y install dovecot-core dovecot-pop3d dovecot-imapd
root@mail:~# vi /etc/dovecot/dovecot.conf
# line 30: uncomment

listen = *, ::
root@mail:~# vi /etc/dovecot/conf.d/10-auth.conf
# line 10: uncomment and change ( allow plain text auth )

disable_plaintext_auth = no
# line 100: add

auth_mechanisms = plain login
root@mail:~# vi /etc/dovecot/conf.d/10-mail.conf
# line 30: change to Maildir

mail_location = maildir:~/Maildir
root@mail:~# vi /etc/dovecot/conf.d/10-master.conf
# line 96-98: uncomment and add

# Postfix smtp-auth
unix_listener /var/spool/postfix/private/auth {
    mode = 0666
    user = postfix
    group = postfix
}
root@mail:~# systemctl restart dovecot 
