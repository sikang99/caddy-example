# Web Technology

[WebRTC]:http://www.webrtc.org
[RTCWeb]:http://ietf.org


## General
* [WebRTC] - Web based Real-Time Communication
	- W3C
* [RTCWeb] - Protocols for WebRTC
* [ORTC (Object RTC)](http://ortc.org/) - ORTC Mobile, Server, Web

### Information
* [HTML5 Weekly](http://html5weekly.com/)
* [Enterprise Web Development: From Desktop to Mobile](http://enterprisewebbook.com/)
* [amalia.js](http://ina-foss.github.io/amalia.js/) - Metadata enriched HTML5 video player

#### (Web Audio)
* [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
* [Mixing Positional Audio and WebGL](http://www.html5rocks.com/en/tutorials/webaudio/positional_audio/)

#### (WebWorker)


#### (WebRTC)
* [Testing WebRTC](https://test.webrtc.org/)
* [WebRTC Experiment & Demo](https://www.webrtc-experiment.com/) -
	[github](https://github.com/muaz-khan/WebRTC-Experiment)
* [WebRTC.is](http://blog.webrtc.is/) - WebRTC News, Views and APIs
* [GDG-Korea/WebRTCOnGAE](https://github.com/GDG-Korea/WebRTCOnGAE) - 개인용 영상통화만들기 (WebRTC+GAE)

#### (WebVR)
* [WebVR Weekly](http://www.webvrweekly.com/)
* [MozVR](http://mozvr.com/)

#### (WebGL)
* [Learning WebGL](http://learningwebgl.com/blog/)
* [Introducing NumGL - A WebGL library for fast image/video processing](http://jonolive.blogspot.kr/2015/01/introducing-numgl-webgl-library-for.html)


### Software
#### Open Source (WebRTC)
* [ktyacke/respoke-webrtc-preso](https://github.com/ktyacke/respoke-webrtc-preso) - Example source code from Communicate All the Things Presenation
* [respoke/apollo](https://github.com/respoke/apollo) - IM, group chat, and video calls built on Respoke
https://www.respoke.io
* [mozilla/webrtc](https://github.com/mozilla/webrtc)
* [orca.js](http://www.orcajs.org/) - open real-time communications API,
	[github](https://github.com/orcajs)
* [webrtc2sip](https://github.com/orcajs) - Smart SIP and Media Gateway to connect WebRTC endpoints,
	[code](http://code.google.com/p/webrtc2sip/)
* [easyRTC](http://easyrtc.com/)
* [Intel XDK WebRTC](https://software.intel.com/en-us/html5/webrtc-client-and-server)
	[github](https://github.com/gomobile/sample-webrtc-video-client)
* [WebRTC codelab](https://bitbucket.org/webrtc/codelab)
	[source](https://bitbucket.org/webrtc/codelab/src)
* [OpenWebRTC](http://www.openwebrtc.io)
	- [EricssonResearch/openwebrtc](https://github.com/EricssonResearch/openwebrtc) - A mobile-first WebRTC client framework for building native apps
* [mehrvarz/rtcchat](https://github.com/mehrvarz/rtcchat) - webrtc p2p chat go golang stun websocket
* [rfc5766-turn-server](https://code.google.com/p/rfc5766-turn-server/)
	- [download](http://turnserver.open-sys.org/downloads/v3.2.5.6/)

#### Open Source (WebVR)
* [borismus/webvr-boilerplate](https://github.com/borismus/webvr-boilerplate) - A starting point for web-based VR experiences that work in both Cardboard and Oculus.
http://smus.com/responsive-vr/
* [MozVR](https://github.com/mozvr)

#### Open Source (WebGL)
* [jongomez/numgl](https://github.com/jongomez/numgl) - Live JS Fiddle examples inside


#### WebRTC in golang
* [strukturag/spreed-webrtc](https://github.com/strukturag/spreed-webrtc) - WebRTC audio/video call and conferencing server
* [saljam/webcam](https://github.com/saljam/webcam) - WebRTC based one-way camera streaming
	- 컴파일이 안된다. C++ 소스에 문제가 있다.

#### Comm tools in golang
* [rsms/gotalk](https://github.com/rsms/gotalk) - Async peer communication protocol & library (Good!)
* [asim/go-micro](https://github.com/asim/go-micro) - A microservices client/service library based on http-rpc protobuf
	- GoogleCloudPlatform is required

#### Commercial
* [Janus](http://janus.conf.meetecho.com/index.html) - the general purpose WebRTC Gateway
	- [github](https://github.com/meetecho/janus-gateway)
* [simpleWebRTC](https://simplewebrtc.com/) - Build WebRTC in five minutes
* [WebRTC Client on Mobile & Server implementation](https://software.intel.com/en-us/html5/webrtc-client-and-server)
* [Kurento](http://www.kurento.org/) - WebRTC Media server
	[github](https://github.com/kurento)
* [Eyeball Networks](http://www.eyeball.com/)

### Information
* 2015/04/18: [JSFiddle/WebCam Test](http://jsfiddle.net/eap27rhq/13/)
* 2015/02/17: [Streaming / broadcasting Live Video call to non webrtc supported browsers and media players](https://altanaitelecom.wordpress.com/2015/02/17/streaming-broadcasting-live-video-call-to-non-webrtc-supported-browsers-and-media-players/)
* 2014/09/30: [IIT – ORTC API Update Panel](http://www.cio2cmo.com/iit-ortc-api-update-panel/)
* 2014/09/04: [What is ORTC: A WebRTC Competitor, WebRTC 2.0 or WebRTC 1.1?](https://bloggeek.me/ortc-webrtc/)
* 2014/06/10: [The WebRTC Landscape Infographic – June 2014](http://www.cio2cmo.com/webrtc-landscape-infographic-june-2014/)


### Testing
* 2014/09/04: [Streaming H.264 from Gstreamer to Firefox](http://comments.gmane.org/gmane.comp.mozilla.devel.media/1216)



## Books
* 2014, "Real-Time Communication with WebRTC", O'Reilly
* 2014, "WebRTC Integrator's Guide", Packt


### WebRTC Server
#### Kurento WebRTC Media Server
```
$ sudo add-apt-repository ppa:kurento/kurento
$ wget -O - http://ubuntu.kurento.org/kurento.gpg.key | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install kurento-media-server

$ sudo service kurento-media-server start
$ sudo service kurento-media-server stop
```
