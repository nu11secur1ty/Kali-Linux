# How to convert a video file to an animated GIF on Linux:

- - - Install required software:
```bash
sudo apt install ffmpeg gifsicle imagemagick
```

- - - Custom directory, convert the video file to a series of small images:
```bash
mkdir /tmp/gif/
```
- - - Command for already done directory:
```bash
sudo ffmpeg -i Videos/Screencast_04-26-2020_09\:35\:15\ PM.mp4 /home/nu11secur1ty/oo.gif
```

- - - Custom convert
```bash
nu11secur1ty@kali:~$ ffmpeg -ss 61.0 -t 2.3 -i Videos/Screencast_04-26-2020_09\:55\:46\ PM.mp4 -f gif /home/nu11secur1ty/oo.gif
```
- - - Recommended:
```bash
sudo ffmpeg -i Videos/Screencast_04-26-2020_09\:55\:46\ PM.mp4 -r 3 -s 800x500 /home/nu11secur1ty/oo.gif
```

