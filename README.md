# Kali-Linux hacks and setup
- - - current release

[![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/release/KaliLinux2020.4.png)](https://www.kali.org/downloads/)

- - - Download single inode
```bash
apt install subversion -y
svn checkout https://github.com/nu11secur1ty/Kali-Linux/trunk/$inode
```

-------------------------------------------------------------------------------------------
# Introduce:
Is Kali Linux Right For You?

As the distribution’s developers, you might expect us to recommend that everyone should be using Kali Linux. The fact of the matter is, however, that Kali is a Linux distribution specifically geared towards professional penetration testers and security specialists, and given its unique nature, it is NOT a recommended distribution if you’re unfamiliar with Linux or are looking for a general-purpose Linux desktop distribution for development, web design, gaming, etc.

While Kali Linux is architected to be highly customizable, don’t expect to be able to add random unrelated packages and repositories that are “out of band” of the regular Kali software sources and have it Just Work. In particular, there is absolutely no support whatsoever for the apt-add-repository command, LaunchPad, or PPAs. Trying to install Steam on your Kali Linux desktop is an experiment that will not end well. Even getting a package as mainstream as NodeJS onto a Kali Linux installation can take a little extra effort and tinkering.

Even for experienced Linux users, Kali can pose some challenges. Although Kali is an open-source project, it’s not a wide-open source project, for reasons of security. The development team is small and trusted, packages in the repositories are signed both by the individual committer and the team, and — importantly — the set of upstream repositories from which updates and new packages are drawn is very small. Adding repositories to your software sources that have not been tested by the Kali Linux development team is a good way to cause problems on your system.

In addition, misuse of security and penetration testing tools within a network, particularly without specific authorization, may cause irreparable damage and result in significant consequences, personal and/or legal. “Not understanding what you were doing” is not going to work as an excuse.

However, if you’re a professional penetration tester or are studying penetration testing with a goal of becoming a certified professional, there’s no better toolkit — at any price — than Kali Linux.

`Even for experienced Linux users, Kali can pose some challenges. Although Kali is an open-source project, it’s not a wide-open source project, for reasons of security. The development team is small and trusted, packages in the repositories are signed both by the individual committer and the team, and — importantly — the set of upstream repositories from which updates and new packages are drawn is very small. Adding repositories to your software sources that have not been tested by the Kali Linux development team is a good way to cause problems on your system.`


-------------------------------------------------------------------------------------------

## Online Official Updater of the latest version:
- - `root`
```bash
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/online.sh | bash
```

- - `NONE root`

```bash
sudo curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/online.sh | bash
```
or

### NOTE: 
- - Please login as root before you execute the command!
- 
```python
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/official_up.py | python3
```
demo:
![](https://github.com/nu11secur1ty/Kali-Linux/blob/master/Docs/UpKaliLinux-2022.2.gif)
