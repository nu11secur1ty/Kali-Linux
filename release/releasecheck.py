#!/usr/bin/python3
from bs4 import BeautifulSoup
import requests
# import os, os.path, csv

listingurl = "https://cdimage.kali.org/"
response = requests.get(listingurl)
release = BeautifulSoup(response.text, "html.parser")

print(release)
