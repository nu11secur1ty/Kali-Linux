import requests
from stem import Signal
from stem.control import Controller
import time
import subprocess
import os

class Colors:
    RED = '\033[31m'
    GREEN = '\033[32m'
    YELLOW = '\033[33m'
    BLUE = '\033[34m'
    MAGENTA = '\033[35m'
    CYAN = '\033[36m'
    WHITE = '\033[37m'
    RESET = '\033[0m'


def Intro():
    print(f"""{Colors.GREEN}
⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣷⣶⣤⣄⣈⣉⣉⣉⣉⣉⣉⣉⣁⣤⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣠⣶⣾⡏⢀⡈⠛⠻⠿⢿⣿⣿⣿⣿⣿⠿⠿⠟⠛⢁⠀⢶⣤⣀⠀⠀⠀
⠀⢠⣿⣿⣿⣿⡇⠸⣿⣿⣶⣶⣤⣤⣤⣤⣤⣤⣤⣶⣶⣿⡿⠂⣸⣿⣿⣷⡄⠀
⠀⢸⣿⣿⣿⣿⣿⣦⣄⡉⠛⠛⠛⠿⠿⠿⠿⠛⠛⠛⢉⣁⣤⣾⣿⣿⣿⣿⡷⠀
⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀
⠀⠀⠀⠀⠈⠙⠛⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠛⠛⠉⠁⠀⠀⠀⠀
⢀⡤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⢤⡀
⣾⡁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣤⣤⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣷
⢿⣧⡀⠀⠀⠀⢀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⡀⠀⠀⠀⢀⣼⡿
⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁
⠀⠀⠈⠙⠛⠛⠛⠛⠛⠛⠛⠉⠁⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠛⠛⠋⠁⠀⠀
          {Colors.RESET}
          - SMSend -
         {Colors.BLUE} By Sytaxus / cmdSNR {Colors.RESET}
    Instructions: This tool may {Colors.RED} limitations{Colors.RESET}.
    - In regards to questions, open an issue in the github repo
    - Check the https://github.com/sytaxus/SMSend-Anon-SMS-Sender/ , for full documentation if stuck.
""")
    
def cls_scrn():
    if os.name == 'nt':
        _ = os.system('cls')
    else:
        os.system('clear')

def connect_vpn_proton(config_path, username, password):
    try:
        with open('vpn_auth.txt', 'w') as auth_file:
            auth_file.write(f"{username}\n{password}\n")
        os.chmod('vpn_auth.txt', 0o600)  

        process = subprocess.Popen(
            ['sudo', 'openvpn', '--config', config_path, '--auth-user-pass', 'vpn_auth.txt', '--auth-nocache'],
            stdout=subprocess.DEVNULL, 
        )
        time.sleep(5)  
        return process
    except Exception as e:
        print(f"Failed to connect to VPN: {e}")
        return None

def check_connectivity(ip='8.8.8.8'):
    try:
        subprocess.check_output(['ping', '-c', '4', ip])
        return True
    except subprocess.CalledProcessError:
        print('No internet connection available..')
        return False


def disconnect_vpn_proton():
    subprocess.run(['sudo', 'pkill', 'openvpn'])
    time.sleep(5)  



def request_sms(phone, message):
    try:
        resp = requests.post('https://textbelt.com/text', {
            'phone': phone,
            'message': message,
            'key': 'textbelt',
        })
        print(resp.json() if resp.status_code == 200 else f"HTTP Error {resp.status_code}: {resp.text}")
    finally:
        print('Finished.\n - SMSend. - SyTaxus.')


def multi_sms(vpn_directory, file_name_phone_num, message):
    print("NOTE: EACH PHONE NUMBER WILL BE USING 1 VPN. Example: If you have 2 phone numbers in the file name and 1 .ovpn file in the vpn directory, then only ONE SMS will be sent.")

    if not check_connectivity():
        print("No internet connection available before VPN connection. Aborting operation.")
        return

    credentials_file = input('Enter the VPN credentials file name: ')
    try:
        with open(credentials_file, 'r') as file:
            username = file.readline().strip()
            password = file.readline().strip()

        with open(file_name_phone_num, 'r') as file:
            phone_numbers = [line.strip() for line in file if line.strip()]

        print(f"Searching for VPN configs in: {vpn_directory}")
        vpn_files = [os.path.join(vpn_directory, f) for f in os.listdir(vpn_directory) if f.lower().endswith('.ovpn')]

        if not vpn_files:
            print("No VPN configuration files found in the directory.")
            return

        print(f"Found {len(vpn_files)} VPN config file(s).")

        if len(vpn_files) < len(phone_numbers):
            print(f"Warning: Not enough VPN configs for the number of phone numbers. Only the first {len(vpn_files)} numbers will be sent.")
            answ = input('Do you want to proceed with the available VPNs? (Y/n): ').lower()
            if answ == 'n':
                print("Operation aborted.")
                return
            phone_numbers = phone_numbers[:len(vpn_files)]

        for phone, vpn in zip(phone_numbers, vpn_files):
            print(f"Sending SMS to {phone} using VPN config {vpn}")
            if connect_vpn_proton(vpn, username, password) is not None:
                if check_connectivity():
                    request_sms(phone, message)
                    print('SMS sent....')
                else:
                    print("Internet connection lost after VPN connection. Aborting SMS send.")
                disconnect_vpn_proton()
            else:
                print(f"Failed to connect using {vpn}, skipping...")

    except Exception as e:
        print(f"An error occurred in multi_sms: {e}")

def Begin():
    cls_scrn()
    Intro()
    try:
        available_choices = input(f'{Colors.BLUE}SELECT BY NUMBER:{Colors.RESET}\n1. Send ONE SMS.\n2. Send MULTIPLE SMS. (VPNs config required.)\n\nChoose > ')
        message = input('Your custom message (LINKS ARE NOT ALLOWED DUE TO API limitations.): ')
        
        if available_choices == '1':
            region = input('Enter phone region/prefix (For example +1 for US/Canada): ')
            phone_no_prefix = input('Enter phone number (Not Prefix Included): ')
            check = []

            http_detected = 0
            o = message.split()
            for i in o:
                if 'http' in i or '.com' in i:
                        http_detected += 1

            for i in region:
                check.append(i)
            if len(check) > 3:
                print('Country prefix invalid! (Cannot exceed 3 characters.)')
            elif http_detected >= 1:
                print('Links are not allowed due to free api limitations.')
            else:
                full_number = region + phone_no_prefix
                request_sms(full_number,message)
        elif available_choices == '2':
            vpn_directory = input('Enter PATH to VPN config files directory: ')
            file_name = input('Enter file name with phone numbers. (ONE NUMBER PER LINE INCLUDING PREFIX, EX: +15555555555): ')
            multi_sms(vpn_directory,file_name,message)
            
    except Exception as e:
        print(f'Invalid. Error: {e}')

if __name__ == "__main__":
    Begin()
