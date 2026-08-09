#!/usr/bin/python3
# Author @nu11secur1ty - Fixed version with boot cleanup

import os
import subprocess

def run_command(cmd):
    """Изпълнява команда и показва изхода"""
    print(f"\n[+] Изпълнявам: {cmd}")
    result = os.system(cmd)
    if result != 0:
        print(f"[-] Командата завърши с грешка: {result}")
    return result

def get_space_info():
    """Показва информация за свободното място в /boot"""
    print("\n[+] Свободно място в /boot:")
    os.system('df -h /boot')
    print("\n[+] Инсталирани ядра:")
    os.system('ls -la /boot/vmlinuz-* 2>/dev/null | wc -l')

def cleanup_boot():
    """Почиства /boot от стари ядра"""
    print("\n[!] ВНИМАНИЕ: Почиствам /boot от стари ядра")
    
    # Вземаме текущото работещо ядро
    current_kernel = os.uname().release
    print(f"[+] Текущо ядро: {current_kernel}")
    
    # Списък с всички инсталирани ядра
    cmd = "dpkg --list | grep -E 'linux-image-[0-9]' | awk '{print $2}'"
    result = subprocess.getoutput(cmd)
    kernels = result.split('\n')
    
    # Изтриваме стари ядра (запазваме текущото и последното)
    for kernel in kernels:
        if kernel and current_kernel not in kernel:
            print(f"[+] Премахвам старо ядро: {kernel}")
            run_command(f'sudo apt purge -y {kernel}')
    
    # Ръчно почистване на остатъчни файлове
    print("\n[+] Ръчно почистване на /boot...")
    run_command('sudo rm -f /boot/initrd.img-*.old-dkms')
    run_command('sudo rm -f /boot/initrd.img-*.*.*-kali*')
    run_command('sudo rm -f /boot/vmlinuz-*.*.*-kali*')
    
    # Също почистваме временните файлове
    run_command('sudo apt autoclean -y')
    run_command('sudo apt clean -y')
    
    print("\n[+] Свободно място след почистване:")
    os.system('df -h /boot')

def fix_packages():
    """Основна функция за оправяне на пакетите"""
    
    print("="*60)
    print("   FIX SCRIPT - Почистване на /boot и обновяване")
    print("="*60)
    
    # 1. Показваме текущото състояние
    get_space_info()
    
    # 2. Почистваме /boot
    cleanup_boot()
    
    # 3. Оправяме пакетите стъпка по стъпка
    commands = [
        'dpkg --configure -a',
        'apt --fix-broken install -y',
        'apt install -f -y',
        'apt update --fix-missing -y',
        'apt update -y',
        'apt full-upgrade -y',
        'apt autoremove -y',
        'apt dist-upgrade -y',
        'apt -y full-upgrade -y'
    ]
    
    for cmd in commands:
        run_command(cmd)
    
    # 4. Генерираме initramfs наново
    print("\n[+] Генерирам нов initramfs...")
    run_command('sudo update-initramfs -u -k all')
    
    # 5. Финален ъпдейт
    run_command('apt update --fix-missing -y')
    run_command('apt autoremove -y')
    
    print("\n" + "="*60)
    print("[✓] Процесът завърши!")
    print("="*60)
    
    # Показваме финално състояние
    get_space_info()
    
    print("\n[!] Ако все още има грешки, изпълни ръчно:")
    print("    sudo dpkg --configure -a")
    print("    sudo apt --fix-broken install -y")

if __name__ == "__main__":
    try:
        fix_packages()
    except KeyboardInterrupt:
        print("\n[-] Процесът беше прекъснат от потребителя")
    except Exception as e:
        print(f"\n[-] Грешка: {e}")
