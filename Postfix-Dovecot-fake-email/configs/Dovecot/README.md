# Edit Dovecot main configuration file to allow IMAP, POP3 and LMPT protocols. Edit file ***/etc/dovecot/dovecot.conf***

```css
protocols = imap pop3 lmtp
```

# Edit Mailbox location for mail users. Edit file ***/etc/dovecot/conf.d/10-mail.conf***

```css
mail_location = maildir:~/Maildir
```

# Edit authentication process. Edit file ***/etc/dovecot/conf.d/10-auth.conf***

```css
disable_plaintext_auth = yes

auth_mechanisms = plain login
```

# Edit master process. Add an Postfix Unix Listener in service auth. Edit file ***/etc/dovecot/conf.d/10-master.conf***

```css
service auth {
  ...
  unix_listener /var/spool/postfix/private/auth {
    mode = 0660
    user = postfix
    group = postfix
  }
  ...
}
```
