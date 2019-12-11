# Install dovecot
```bash
apt install dovecot-common dovecot-imapd
```
# Edit Dovecot main configuration file to allow IMAP, POP3 and LMPT protocols. Edit file /etc/dovecot/dovecot.conf

```bash
protocols = imap pop3 lmtp
```
# Install Postfix
```bash
apt install postfix
```
