# Streaming Protocols

HTTP/(TCP) > RTMP/(TCP) > RTSP/(UDP,TCP,HTTP)

HLS -> MPEG-DASH


----------
## General

관련된 상황과 내용을 잘 파악하고 있어야 한다.
- [Live streaming web audio and video](https://developer.mozilla.org/en-US/Apps/Build/Audio_and_video_delivery/Live_streaming_web_audio_and_video) - RTSP/2.0, DASH, MSE
- [Video Streaming Technology Overview: Historical Background, Current State And The Latest Trends](http://blog.dataart.com/video-streaming-technology-overview-historical-background-current-state-and-the-latest-trends/)

일반적으로 와우자 서버를 사용하여 서비스하고 있다.
- [Android Streaming Live Camera Video to Web Page](http://www.androidhive.info/2014/06/android-streaming-live-camera-video-to-web-page/)
- [Live Streaming- HLS + RTSP using Video.js (Wowza Server)](http://stackoverflow.com/questions/25981523/live-streaming-hls-rtsp-using-video-js-wowza-server)
- [IP Camera Streaming | H.264 RTSP IP Streaming](http://www.streamingvideoprovider.com/rtsp-ip-camera-streaming.html)


-------
## HTTP

[HyperText Transport Protocol](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)

### Reference

- [Golang Multipart File Upload Example](http://matt.aimonetti.net/posts/2013/07/01/golang-multipart-file-upload-example/)

### GitHub
 
- [zoggdotorg/river](https://github.com/zoggdotorg/river) - A simple webcam server for a raspberry pi and a USB webcam.


-------
## RTSP

- [Real-Time Streaming Protocol](http://en.wikipedia.org/wiki/Real_Time_Streaming_Protocol) - usually used in CCTV

### Reference

관계된 사이트들은 다음과 같다.
- [RTSP in Raspberry Pi](http://completet.logdown.com/posts/2014/07/16/rtsp-in-raspberry-pi)

### GitHub

- [beatgammit/rtsp](https://github.com/beatgammit/rtsp) - rtsp implementation in Go
- [lbl52001/gortsp](https://github.com/lbl52001/gortsp) - RTSP server framework which migrate from net/http package
- [optman/camrecord](https://github.com/optman/camrecord) - remote record ip-cam video into file through rtsp.
- [joelgibson/go-airplay](https://github.com/joelgibson/go-airplay) - AirPlay Server

아래와 같이 하면 오류가 난다. iOS 환경을 기준으로 한 것 같다.

```
$ sudo apt-get install clang-3.5
$ ln -s /usr/bin/clang-3.5 /usr/bin/clang
$ cd $GOPATH/github.com/joelgibson/go-airplay
$ CC=clang go run serv.go
```

- [AxisCommunications/locomote-video-player](https://github.com/AxisCommunications/locomote-video-player) - Media Player in Adobe Flash with RTSP support
- [fyhertz/libstreaming](https://github.com/fyhertz/libstreaming) - A solution for streaming H.264, H.263, AMR, AAC using RTP on Android


### Search

주기적으로 아래의 사이트들에서 확인해보록 하자.

- Go Search : http://go-search.org/search?q=rtsp


-------
## RTMP

[Real-Time Messaging Protocol](http://en.wikipedia.org/wiki/Real_Time_Messaging_Protocol) by Adobe

### Reference


### GitHub

- [zhangpeihao/gortmp](https://github.com/zhangpeihao/gortmp) - Implement RTMP protocol by golang


-------
## DAAP

[Digital Audio Access Protocol](http://en.wikipedia.org/wiki/Digital_Audio_Access_Protocol)

### Reference


### GitHub

- [nickbp/adaapd-golang-old](https://github.com/nickbp/adaapd-golang-old) - Abandoned golang version of a DAAP media server.
- [grantmd/go-airplay](https://github.com/grantmd/go-airplay) - An Apple Airplay client in Go (golang)
- [lsowen/mdns](https://github.com/lsowen/mdns) - Simple mDNS client/server library in Golang


## MPEG-DASH
### Reference

- [DASH Forum Software](http://dashif.org/software/)

### GitHub

- [Dash-Industry-Forum/dash.js](https://github.com/Dash-Industry-Forum/dash.js) - A reference client implementation for the playback of MPEG DASH via Javascript and compliant browsers.

## HLS
### Reference
### GitHub







