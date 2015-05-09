# Raspberry Pi

(2015/03/25) 카메라 모듈(개발키트에 붙이면서 불량이 난 듯)이 불량인 경우가 있다.

```
$ raspistill -o test.jpg
mmal: Received unexpected camera control callback event, 0x4f525245
```

### General
#### Raspberry Pi Foundation
  - [github](https://github.com/raspberrypi)
  - [RPi Hub](http://elinux.org/RPi_Hub)
* Device Models : A, A+, B, B+(BCM2835), B2(BCM2836)

* [Make:](http://makezine.com/) - Magazine
* [xbian](http://www.xbian.org/) - XBMC
* [PiTV](http://pitv.pw/) - Smart STB with RPi
	- [github](https://github.com/philplckthun/PiTV)
* [openFrameworks](http://openframeworks.cc/) - cross platform open source toolkit for creative coding in C++
	- [github](https://github.com/openFrameworks-arm)

#### Arduino
* [Embrio](http://www.embrio.io/) - A visual, real-time development tool for Arduino programming (Windows)

```
$ sudo apt-get install arduino
```



### Reading
* (2015/03/25) [Make a DIY Compact Camera Using Raspberry Pi](http://petapixel.com/2015/03/25/make-a-diy-compact-camera-using-raspberry-pi/)


### Information
* [Raspberry Pi Stack Exchange](http://raspberrypi.stackexchange.com/)
* [How to Send Raspberry Pi Push Notifications Triggered by PIR Motion Detector](http://videos.cctvcamerapros.com/raspberry-pi/send-push-notifications-pir-motion-detector.html) - RPi2
* [Building a Raspberry Pi 2 WebRTC camera](http://www.rs-online.com/designspark/electronics/blog/building-a-raspberry-pi-2-webrtc-camera)
  - [meetecho/janus-gateway](https://github.com/meetecho/janus-gateway)
* [The native WebRTC extension for the UV4L Streaming Server](http://www.linux-projects.org/modules/news/article.php?storyid=174)
- [RPi Cam Web Interface](http://www.raspberrypi.org/forums/viewtopic.php?f=43&t=63276)
- [Simple h.264 HLS Server, audio too](http://www.raspberrypi.org/forums/viewtopic.php?f=43&t=54669)
- [Native WebRTC extension for UV4L now ready!](http://www.raspberrypi.org/forums/viewtopic.php?f=43&t=105019)

* [Enabling KVM virtualization for Raspberry Pi 2](http://blog.flexvdi.es/2015/03/17/enabling-kvm-virtualization-on-the-raspberry-pi-2/)


### Multimedia
* [Streaming Video With RaspberryPi](http://www.tmplab.org/wiki/index.php/Streaming_Video_With_RaspberryPi)
* [How to install FFMPEG, Libx264, LibRTMP, LibAACPlus, LibVPX on the Raspberry Pi (Debian “Wheezy” ARMHF)](http://owenashurst.com/?p=242)


### Go for Raspberry Pi
* [luismesas/goPi](https://github.com/luismesas/goPi) - A library for using Raspberry Pi on Golang
* [robdimsdale/garagepi](https://github.com/robdimsdale/garagepi) - Golang webserver to display output of Raspberry Pi camera module and trigger gpio
* [aqua/raspberrypi](https://github.com/aqua/raspberrypi) - Go packages for tinkering with raspberry pi boards
* [efarres/GoRaspberry](https://github.com/efarres/GoRaspberry) - Go Raspberry Pi - BCM2835 C Library
* [ddrager/go-pi](https://github.com/ddrager/go-pi) - Raspberry Pi-Golang playground
* [jig/docker-golang-run-raspi](https://github.com/jig/docker-golang-run-raspi) - Raspberry Pi version of docker-golang-run-raspi
* [galaktor/gorf24](https://github.com/galaktor/gorf24) - Golang bindings for RF24 (Raspberry Pi) libraries
* [biorisk/panpigo](https://github.com/biorisk/panpigo) - Control pianobar on a Raspberry Pi using a golang based webserver
* [willogden/rover](https://github.com/willogden/rover) - Robotics using Raspberry Pi, Golang and AngularJS
* [HappyFox/robot](https://github.com/HappyFox/robot) - Raspberry Pi Golang based robotics libs
* [overeemm/gotimelapse](https://github.com/overeemm/gotimelapse) - Create time-lapse pictures with golang on Raspberry PI
* [robdimsdale/garagepi](https://github.com/robdimsdale/garagepi) - Golang webserver to display output of Raspberry Pi camera module and trigger gpio
* [giullianomorroni/home-control-client](https://github.com/giullianomorroni/home-control-client)
* [rafkhan/pi](https://github.com/rafkhan/pi) - Raspberry pi GPIO API for golang



### Github for Raspberry Pi
* [Raspberry Pi](https://github.com/raspberrypi) - firmware, linux, userland, noobs, maynard
* [Hexxeh](https://github.com/Hexxeh) - rpi-update, rpi-firmware
* [asb](https://github.com/asb) - raspi-config, wayland-rpi
* [Adafruit Industries](https://github.com/adafruit)
* [element14](https://github.com/element14)
* [Simon Monk](https://github.com/simonmonk) - The Raspberry Pi Cookbook
* [MAKE](https://github.com/Make-Magazine)
* [WiringPi](https://github.com/WiringPi) - GPIO library
* [esrlab](https://github.com/esrlabs/) - Android Transport
* [XBian](https://github.com/xbianonpi) - XBMC for RPi
* [openFrameworks-arm](https://github.com/openFrameworks-arm)
* [PubNub](https://github.com/pubnub)


#### Sources
* [ccrisan/motionPie](https://github.com/ccrisan/motionPie) - A video surveillance OS for single board computers
* [RaspberryPints/RaspberryPints](https://github.com/RaspberryPints/RaspberryPints) - A digital signage version of the common chalkboard-based taplist
* [esrlabs/AndroidTransporterPlayer](https://github.com/esrlabs/AndroidTransporterPlayer) - MediaPlayer for the Raspberry Pi
* [codemonkeyricky/piracast](https://github.com/codemonkeyricky/piracast) - An implementation of Miracast on the Raspberry Pi
* [lab11/raspberrypi-cc2520](https://github.com/lab11/raspberrypi-cc2520) - Code, hardware, and instructions to use the TI CC2520 with the Raspberry Pi



### Practices
For Raspberry 2, the WebRTC extension for the Streaming Server is also available:
```
$ sudo apt-get install uv4l-webrtc
```

```
$ sudo modprobe bcm2835-v4l2
$ v4l2-ctl --list-devices
```

```
$ raspistill -o test.jpg
$ raspivideo -d
```

```
$ sudo apt-get install dcfldd
```
