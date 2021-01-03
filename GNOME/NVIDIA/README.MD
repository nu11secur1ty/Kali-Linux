# Drivers:

- - - ***Models:***

- - - Installing and detecting the software
```bash
apt update
apt -y install nvidia-detect
```
- - - Detecting
```bash
Detected NVIDIA GPUs:
01:00.0 VGA compatible controller [0300]: NVIDIA Corporation GT218M [NVS 3100M] [10de:0a6c] (rev a2)

Checking card:  NVIDIA Corporation GT218M [NVS 3100M] (rev a2)
Uh oh. Failed to identify your Debian suite.
```
- - - Installing
```bash 
apt update
apt -y install nvidia-driver
```
- - - reboot
```bash 
telinit 6
```
# NOTE:
- This will fix gnome-session desktop freezing for Lenovo Thinkpad T410

- BR
