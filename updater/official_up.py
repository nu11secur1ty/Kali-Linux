#!/usr/bin/env python3
# Author @nu11secur1ty
# Converted by nu11secur1tyAI

import subprocess
import sys

def run_command(command):
    """Run a shell command and handle potential errors."""
    print(f"[*] Executing: {command}")
    try:
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"[!] Error executing command: {command}")
        sys.exit(e.returncode)

def main():
    # Update package lists
    run_command("apt update -y")
    
    # Fix and install missing dependencies
    run_command("apt install -f -y")
    run_command("apt --fix-broken install -y")
    run_command("apt --fix-missing install -y")
    
    # Remove unused packages
    run_command("apt autoremove -y")
    
    # Dist upgrade
    print("# Dist upgrade")
    run_command("apt dist-upgrade -y")
    run_command("apt -y full-upgrade -y")
    
    # Configure unpacked packages
    run_command("dpkg --configure -a")
    
    # Final cleanup and full upgrade pass
    run_command("apt --fix-broken install -y")
    run_command("apt install -f -y")
    run_command("apt autoremove -y")
    run_command("apt full-upgrade -y")

if __name__ == "__main__":
    main()
