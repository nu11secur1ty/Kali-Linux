# Enable Suspend And Hibernation

```bash
systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
systemctl restart systemd-logind.service
```
- - - Check
```bash
systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
```
