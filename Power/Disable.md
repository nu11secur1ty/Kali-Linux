# Disable Suspend And Hibernation
- - - Kali Linux 2020.4
```bash
systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
systemctl restart systemd-logind.service
```
- - - Check
```bash
systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
```
