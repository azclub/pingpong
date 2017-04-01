# Ping Pong Scoring Tracker
Keep track of ping pong scoring. Cause I can't remember the scoring when I am in the game and I got a lot of free time to kill.

Build OpenCV from source #Not available in playbook yet
```
LOCAL
ansible-playbook -i hosts site.yml --tags=opencv

RASPBERRY PI
cd opencv && mkdir build
cd build && cmake ../
make -j4
sudo make install
sudo ldconfig
```

access the camera board
```
sudo modprobe bcm2835-v4l2
```

## Phase 1
Record and stream Video

Reference:
http://raspberrypi.stackexchange.com/questions/27041/record-and-stream-video-from-camera-simultaneously
http://www.jeffreythompson.org/blog/2014/11/13/installing-ffmpeg-for-raspberry-pi/
https://trac.ffmpeg.org/wiki/StreamingGuide

Dev Log:
Really want to use `ffmpeg` to stream the video from pi cam module

Requirement:
A: I need video streaming to setup the camera and debug.
DONE:
  - On PI run `stream` (added alias to pi shell)
  - ON target machine open VLC and get stream on udp:@0.0.0.0:3000

B: I need to record videos to build the score tracking software in phrase 2
PLAN:
  Let's add another command alias to output file from pi cam like `record`

Nice to have:
C: I need motion detect feature which does the following:
-- Lets build this after B is done

SKIP: Send email to me when active.
- Not needed right now. it's much flexible to just ssh and recored as I need to
SKIP: Upload video to dropbox when the ping pong session is end.
- Not needed right now. Easier to just store it on the pi and copy it to my machine as needed

## Phase 2
I've got the video of ppl playing ping pong. Let's build the software so it output correct scoring.

I should create a software to analysis the game on my workstation to ease the debugging process.

DONE: build opencv3 on pi
https://github.com/Tes3awy/OpenCV-3.2.0-Compiling-on-Raspberry-Pi

## Phase 3
The minimal requirements are finish. Let set it up in the ping pong room and see how it goes.
