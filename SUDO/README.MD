# Protect root from sudo!

![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/SUDO/logo/sudo_logo.png)

- - - Online patcher
1. - Login as root
```bash 
sudo su -
```

2. - Execute:
```bash
wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/SUDO/pass.pl
```
- then...

```perl
perl pass.pl
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/SUDO/omnium.pl | perl
```
3. Check:
```bash 
sudo su -
```
- - - Example:

![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/SUDO/logo/protect_root.png)

- - - user link

![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/SUDO/logo/protect_root_sudo_user.png)

- - - Login as `root`

![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/SUDO/logo/login_as_root.png)
