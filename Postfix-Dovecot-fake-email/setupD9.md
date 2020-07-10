# Debian 9
----------------------------------------------------------------------

```bash
kali:~# apt -y install dovecot-pop3d dovecot-lmtpd dovecot-imapd dovecot-common 
kali:~# apt -y install postfix
```
kali:~# vim /etc/dovecot/dovecot.conf

# line 30: uncomment
```bash
listen = *, ::
```
kali:~# vim /etc/dovecot/conf.d/10-auth.conf

# line 10: uncomment and change ( allow plain text auth )
```bash
disable_plaintext_auth = no
```
# line 100: add
```bash
auth_mechanisms = plain login
```
kali:~# vim /etc/dovecot/conf.d/10-mail.conf

# line 30: change to Maildir
```bash
mail_location = maildir:~/Maildir
```
kali:~# vim /etc/dovecot/conf.d/10-master.conf

# line 96-98: uncomment and add

# Postfix smtp-auth
```bash
unix_listener /var/spool/postfix/private/auth {
    mode = 0666
    user = postfix
    group = postfix
}
```
kali:~# systemctl restart dovecot 

kali:~# systemctl restart postfix
