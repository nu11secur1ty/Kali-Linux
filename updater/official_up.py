#!/usr/bin/python3
# Author @nu11secur1ty - Fixed version with boot cleanup

import os
import subprocess

def run_command(cmd):
    """Execute command and display output"""
    print(f"\n[+] Executing: {cmd}")
    result = os.system(cmd)
    if result != 0:
        print(f"[-] Command failed with error: {result}")
    return result

def get_space_info():
    """Display free space information for /boot"""
    print("\n[+] Free space in /boot:")
    os.system('df -h /boot')
    print("\n[+] Installed kernels:")
    os.system('ls -la /boot/vmlinuz-* 2>/dev/null | wc -l')

def cleanup_boot():
    """Clean /boot from old kernels"""
    print("\n[!] WARNING: Cleaning /boot from old kernels")
    
    # Get current running kernel
    current_kernel = os.uname().release
    print(f"[+] Current kernel: {current_kernel}")
    
    # List all installed kernels
    cmd = "dpkg --list | grep -E 'linux-image-[0-9]' | awk '{print $2}'"
    result = subprocess.getoutput(cmd)
    kernels = result.split('\n')
    
    # Remove old kernels (keep current and latest)
    for kernel in kernels:
        if kernel and current_kernel not in kernel:
            print(f"[+] Removing old kernel: {kernel}")
            run_command(f'sudo apt purge -y {kernel}')
    
    # Manual cleanup of leftover files
    print("\n[+] Manual cleanup of /boot...")
    run_command('sudo rm -f /boot/initrd.img-*.old-dkms')
    run_command('sudo rm -f /boot/initrd.img-*.*.*-kali*')
    run_command('sudo rm -f /boot/vmlinuz-*.*.*-kali*')
    
    # Also clean temporary files
    run_command('sudo apt autoclean -y')
    run_command('sudo apt clean -y')
    
    print("\n[+] Free space after cleanup:")
    os.system('df -h /boot')

def fix_packages():
    """Main function to fix packages"""
    
    print("="*60)
    print("   FIX SCRIPT - /boot cleanup and system update")
    print("="*60)
    
    # 1. Show current status
    get_space_info()
    
    # 2. Clean /boot
    cleanup_boot()
    
    # 3. Fix packages step by step
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
    
    # 4. Regenerate initramfs
    print("\n[+] Generating new initramfs...")
    run_command('sudo update-initramfs -u -k all')
    
    # 5. Final update
    run_command('apt update --fix-missing -y')
    run_command('apt autoremove -y')
    
    print("\n" + "="*60)
    print("[✓] Process completed!")
    print("="*60)
    
    # Show final status
    get_space_info()
    
    print("\n[!] If errors still persist, run manually:")
    print("    sudo dpkg --configure -a")
    print("    sudo apt --fix-broken install -y")

if __name__ == "__main__":
    try:
        fix_packages()
    except KeyboardInterrupt:
        print("\n[-] Process interrupted by user")
    except Exception as e:
        print(f"\n[-] Error: {e}")
