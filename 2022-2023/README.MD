## Kali Linux *

## NOTE: **For installation**

If you use USB to install Kali, you must use the [DD](https://www.kali.org/docs/usb/live-usb-install-with-windows/) from [`Rufus`](https://rufus.ie/en/) recording a bootable USB!

## UPDATING:

## Add repo 2023
```bash
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list
```
## Online update...
```curl
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/2022-2023/Updating-Kali/k1.py | python3
```
## More:
- - - Fix gnome-desktop if you need:

```bash
apt --reinstall install kali-desktop-gnome -y
```

