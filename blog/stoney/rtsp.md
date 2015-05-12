# Streaming Protocols

HTTP/(TCP) > RTMP/(TCP) > RTSP/(UDP,TCP,HTTP)

-------
## HTTP

HyperText Transport Protocol

### Reference

- [Golang Multipart File Upload Example](http://matt.aimonetti.net/posts/2013/07/01/golang-multipart-file-upload-example/)

### GitHub
 
- [zoggdotorg/river](https://github.com/zoggdotorg/river) - A simple webcam server for a raspberry pi and a USB webcam.


-------
## RTSP

Real-Time Streaming Protocol - usually used in CCTV

### Reference

관계된 사이트들은 다음과 같다.

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

### Search

주기적으로 아래의 사이트들에서 확인해보록 하자.

- Go Search : http://go-search.org/search?q=rtsp


-------
## RTMP

Real-Time Message Protocol by Adobe

### Reference

- [zhangpeihao/gortmp](https://github.com/zhangpeihao/gortmp) - Implement RTMP protocol by golang


-------
## DAAP

[Digital Audio Access Protocol](http://en.wikipedia.org/wiki/Digital_Audio_Access_Protocol)

### Reference



### GitHub

- [nickbp/adaapd-golang-old](https://github.com/nickbp/adaapd-golang-old) - Abandoned golang version of a DAAP media server.
- [grantmd/go-airplay](https://github.com/grantmd/go-airplay) - An Apple Airplay client in Go (golang)
- [lsowen/mdns](https://github.com/lsowen/mdns) - Simple mDNS client/server library in Golang


