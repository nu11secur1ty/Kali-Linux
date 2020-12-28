.
```bash
systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
systemctl restart systemd-logind.service
```
