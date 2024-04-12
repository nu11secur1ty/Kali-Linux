# spoofinger (SMS Bulk)
spoofinger is a tool written in Python3 that allows you to send bulk SMS via the Textbelt API.

# Use
* Step 1: Add [Textbelt API](https://textbelt.com/purchase/?generateKey=1) in [config.py](https://github.com/pablokbg/Sulk/blob/main/config.py) file.
```
# API textbelt.com
API_KEY = ""
```
* Step 2: Add the phone numbers (including extension) of the targets in the [numbers.txt](https://github.com/pablokbg/Sulk/blob/main/numbers.txt) file.
```
+34XXXXXXXXX
+33XXXXXXXXX
......
```
* Step 3: Execute Sulk
```
python Sulk.py
```

# Notes
* It is not recommended to use the free API, as it only allows you to send one sms to one recipient per day.
* When you purchase the KEY API, remember to select 'worldwide' to be able to send SMS to any recipient regardless of their location.
* The tool has been tested on linux systems and on windows systems with powershell.
