# Manual setting up

-----------------------------------------------

# Install
```bash
apt install ntp
apt install ntpdate
```
# Configure for sync
```bash
ntpq -p
```
# Enable NTP
```bash
timedatectl set-ntp on
systemctl enable ntp
```
# Check status
```bash
systemctl status ntp
```
# Update 
```bash
tpdate -u 3.debian.pool.ntp.org
```

