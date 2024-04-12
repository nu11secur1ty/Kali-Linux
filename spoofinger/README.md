# spoofinger (SMS Bulk)
spoofinger is a tool written in Python3 that allows you to send bulk SMS via the Textbelt API.

# Use
* Step 1: Add [Textbelt API](https://textbelt.com/purchase/?generateKey=1) in [config.py](https://github.com/nu11secur1ty/Kali-Linux/blob/master/spoofinger/config.py) file.
```
# API textbelt.com
API_KEY = ""
```
* Step 2: Add the phone numbers (including extension) of the targets in the [numbers.txt](https://github.com/nu11secur1ty/Kali-Linux/blob/master/spoofinger/numbers.txt) file.
```
+131231233313
+123213331312
+131231233313
```
* Step 3: Execute spoofinger
```
python spoofinger.py
```

# Notes:

* It is not recommended to use the free API, as it only allows you to send one SMS to one recipient per day.
* When you purchase the KEY API, remember to select 'worldwide' to be able to send SMS to any recipient regardless of their location.
* The tool has been tested on Linux systems and Windows systems with Powershell.
