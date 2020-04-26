# How to convert a video file to an animated GIF on Linux:

- - - Install required software:
```bash
sudo apt install ffmpeg gifsicle imagemagick:
```

- - - Custom directory, convert the video file to a series of small images:
```bash
mkdir /tmp/gif/
```
- - - Command for already done directory:
```bash
sudo ffmpeg -i Videos/Screencast_04-26-2020_09\:35\:15\ PM.mp4 /home/nu11secur1ty/oo.gif
```
- - - Combine these images together into a GIF animation:
```bash
nu11secur1ty@kali:~$ sudo gifsicle -d 10 -loop /home/nu11secur1ty/oo.gif
```
- - - Optimise the GIF animation so the file size is smaller:
      convert -layers Optimize animation.gif animation_optimized.gi
