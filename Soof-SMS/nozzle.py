#!/usr/bin/python
#nozzle 2024 by nu11secur1ty

import requests
import os
import colorama
from colorama import Fore, Back, Style

print(Fore.RED + 'WARNING: Only one SMS for one number daily and WITHOUT adding URL address, for security reasons!\n')
print(Style.RESET_ALL)


print(Fore.GREEN + "Give the target phone, for example: +5525255255252\n")
phone = input()
print(Style.RESET_ALL)


print(Fore.YELLOW + "the message:\n")
mess = input()
print(Style.RESET_ALL)

## Sending of the message
resp = requests.post('https://textbelt.com/text', {
  'phone': phone,
  'message': mess,
  'key': 'textbelt',
})
print(resp.json())
