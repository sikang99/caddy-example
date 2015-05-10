# Go Programming Language

![Gopher](/gopher.png)

구글에서 개발한 새로운 언어인 Go를 배운다. 제대로 활용할 수 있을 때까지 익혀라.

### Diary
- 2015/04/10 : vim 설정에 많은 시간을 보내다. MSA에 대한 필요성이 증가하면서 Go를 주목받고 있다.
- 2015/03/09 : gomedia 패키지의 코딩을 시작하다.
- 2015/03/18 : 동적 패키지 로딩에 대해서 생각해보다. 고의 정적 컴파일 때문에 방법은 별도 수행을 시킨다.
- 2015/03/23 : Golang Samples를 통하여 cgo의 기본 동작개념을 익히다. import ()에서 이상한 점을 발견하다.
- 2015/03/30 : There is no casting in Go, there is type Conversion and Type assertion.

다음은 GOPATH에 설치되어 있는 패키지를 자동으로 모두 `...` 다시 설치하는 방법이다.
```
$ go get [pkg] ...
```
관련된 패키지를 모두 받을때는 끝에 `...`을 붙인다.
```
$ go get github.com/google...
```
현재 패키지가 종속된 모든 관련 패키지를 설치한다.
```
$ go get ./...
```


### News
* [Active Open Source Go Projects](http://pansop.com/1008/)
* [Building a Go Project](http://docs.travis-ci.com/user/languages/go/)
* [Graceful server restart with Go](http://blog.scalingo.com/post/105609534953/graceful-server-restart-with-go) : 이해필요
* [HTTPS and Go](https://www.kaihag.com/https-and-go/)
* [Concurrent Downloader in Go](http://brianpfeil.com/concurrent-downloader-in-go/) [github](https://github.com/pfeilbr/concurrent-downloader)
* [Getting Started with GopherJS](https://www.hakkalabs.co/articles/getting-started-gopherjs)
* [A practical guide to protocol buffers (Protobuf) in Go (Golang)](http://www.minaandrawos.com/2014/05/27/practical-guide-protocol-buffers-protobuf-go-golang/)


### General
* [Golang] [wikipedia](http://en.wikipedia.org/wiki/Go_%28programming_language%29)
  - [Package](http://golang.org/pkg/)
  - [Playground](http://play.golang.org/)
	- [Download](http://golang.org/dl/) - 1.4.2, (1.5)
  - [Go Talks](http://talks.golang.org/) - Slide, Gophercon
  - [GoSrc](http://gosrc.org) - GoDoc + Source view
  - [Reddit](http://www.reddit.com/r/golang/) - newsgroup
* Major Contributors
  - [Go](https://github.com/golang)
  - [Google](https://github.com/google) - cadvisor
  - [Docker](https://github.com/docker)
  - [CoreOS](https://github.com/coreos) - etcd, fleet
  - [Rancher.io](https://github.com/rancherio)
  - [HashiCorp](https://github.com/hashicorp) - consul
  - [The Apache Software Foundation](https://github.com/apache)
  - [Google Cloud Platform](https://github.com/GoogleCloudPlatform) - kubernetes
  - [Go Git Service](https://github.com/gogits)
* Basic Examples
  - [Go by Example](https://mmcgrana.github.io/2012/09/go-by-example-timers-and-tickers.html) - Timers and Tickers
  - [Golang Examples](http://golang-examples.tumblr.com/) - - Go Examples
  - [Go Patterns](https://www.new-bamboo.co.uk/blog/2015/02/10/go-patterns-timers-and-debouncers/) - Timers and Debouncers
  - [Going Go Programming](http://www.goinggo.net/)
  - [go-wiki](https://github.com/golang/go/wiki)
  - [Golang Samples](https://github.com/golang-samples) - basic, cipher, exec, godoc, gopher-3d, cgo, http, signal, testing, time, ...
  - [axgle/go](https://github.com/axgle/go) - google go lang samples
  - [Golang channels tutorial](http://guzalexander.com/2013/12/06/golang-channels-tutorial.html)
  - [gopages](https://code.google.com/p/gopages/) - A simple web framework that allow you to create web pages and embed codes in <?go ?> tags
* Playground Examples
  - [Wrapper types in Go are cleaner than C++](http://play.golang.org/p/ssz2AKIj_y)
  - [How to use interfaces in Go](http://jordanorelli.com/post/32665860244/how-to-use-interfaces-in-go)


* China Golang
  - [Golang 中国](http://golangtc.com/)
  - [Study Golang](http://studygolang.com/)

* japan Golang
  - [Quiita Golang](http://qiita.com/tags/golang)

### Features
* [Why does Go compile so quickly?](http://stackoverflow.com/questions/297663github.com/Scalingo/go-graceful-restart-example0/why-does-go-compile-so-quickly)
* [Five things that make Go fast](http://dave.cheney.net/2014/06/07/five-things-that-make-go-fast)
* [A few notes on choosing between Go and D for a quick project](http://forum.dlang.org/thread/mdtago$em9$1@digitalmars.com)


### Service
* [gocover.io](http://gocover.io) - Code coverage for golang packages
* [gopm.io](http://gopm.io/) - Gopm Resitry
* [emdbd.kidman.io](http://embd.kidoman.io/) - Golang Embedded Programming Framework
* [gobot.io](http://gobot.io/) - Golang Powered Robotics
* [drone.io](https://drone.io/) - Continuous Integration
* [quay.io](https://quay.io/) - Secure hosting for private Docker repositories
* [upper.io/db](https://upper.io/db) - common interface for interacting with different data sources
* [gogs.io/db](https://gogs.io) - A self-hosted Git service written in Go
* [tlk.io](https://tlk.io/) - A simple web chat
* [nats.io](http://nats.io/) - An open-source, high-performance, lightweight cloud messaging system
* [npf.io](http://npf.io/) - Go Nitpicks
* [gohugo.io](http://gohugo.io/) - A fast and modern staGoogle Cloud Platformtic engine
* [revel.github.io](http://revel.github.io/) - A high-productivity web framework for the Go language.
* [goji.io](https://goji.io/) - A web microframework for Golang
* [tyk.io](https://tyk.io/) - An open source, lightweight, fast and scalable API Gateway,
	[github](https://github.com/lonelycode/tyk)
* [devdocs.io/go](http://devdocs.io/go/) - Go Programming Language
* [codegansta.io](http://codegangsta.io/) - Awesome tools and screencasts for Go programmers
* [gocode.io](http://gocode.io/) - A Routine Mission - An Online Golang Gamegithub.com/Scalingo/go-graceful-restart-example
* [xorm.io](http://xorm.io/) - Simple & Powerful ORM Framework for Go Programming Language
* [goconvey.co](http://goconvey.co/) - cover, godoc, oracle
* [prometheus.io/](http://prometheus.io/) - An open-source service monitoring system and time series database
  - [github](https://github.com/prometheus/prometheus)
* [gopkg.in](http://labix.org/gopkg.in) - Stable APIs for theLogVoyage - logging SaaS written in GoLang Go language
* [FlatBuffers](https://google.github.io/flatbuffers/)
* [socrates.io/](http://socrates.io/) - online markdown processor
* [gogs.io](http://gogs.io/) - A self-hosted Git service written in Go,
  - [github](https://github.com/gogits/gogs)
* [bowery.io](http://bowery.io/) -
* [tsuru.io](https://tsuru.io/) - an extensible and open source Platform as a Service software
  - [github](https://github.com/tsuru)
* [webrocket.io](http://webrocket.io/)
  - [github](https://github.com/webrocket/webrocket)
* [hyflow-go](http://www.hyflow.org/hyflow-go/index.html) - a geo-replicated, main-memory, highly consistent datastore
* [Echo](http://labstack.github.io/echo/) - Fast HTTP router + micro web framework
* [GoDot](http://www.godotengine.org/) - Game engine
* [Monsti](http://www.monsti.org/) - a free and open source CMS written in Go
  - [github](https://github.com/monsti)
* [godrone.io](http://www.godrone.io/en/latest/) - alternative firmware for the Parrot AR Drone 2.0
* [goffee.io](http://goffee.io/) - Global uptime monitoring via Tor
* [goread.io](https://www.goread.io/) - Go Read is a web-based RSS reader.
* [tlks.io/golang](http://tlks.io/tag/golang)
* [https://talky.io/](https://talky.io/) - based on SimpleWebRTC, https://talky.io/techclub-go-lang
* [Kite: A Go Library for Writing Distributed Microservices](http://blog.koding.com/2015/01/flying-kites-in-go/)
  - [Kite: Library for writing distributed microservices](http://blog.gopheracademy.com/birthday-bash-2014/kite-microservice-library/)
  - [github](https://github.com/koding/kite)
* [http://circular.io/](http://circular.io/) - Circular, an open source Buffer app
  - [github](https://github.com/julien-c/Circular/)
* [raygun.io](https://raygun.io/) - Find bugs before your users do
* [stablelib](https://www.stablelib.com/) - LTS for go packages
* [Gondola](http://gondolaweb.com/) - The web framework for writing faster sites, faster


### Study
* [How to reduce compiled file size?](http://stackoverflow.com/questions/3861634/how-to-reduce-compiled-file-size)
  - `sudo apt-get install upx-ucl`
  - [pwaller/goupx](https://github.com/pwaller/goupx) - Fix golang ELF executables to work with upx
* [Service Discovery for Golang with DNS](http://txt.fliglio.com/2014/05/client-side-loadbalancing-with-consul/)
* [Golang Internals, Part 1: Main Concepts and Project Structure](http://blog.altoros.com/golang-part-1-main-concepts-and-project-structure.html)
* [Golang Internals, Part 2: Diving Into the Go Compiler](http://blog.altoros.com/golang-internals-part-2-diving-into-the-go-compiler.html)
* [k-NN Algorithm in Golang and Haskell](http://akgupta.ca/blog/2014/06/21/k-nn-algorithm-in-golang-and-haskell/) - 상당한 많어 언어에 대해 비교하고 있다. 당연, Go가 가장 우수하다는 것이지. 이 블로그는 알고리즘과 수리에 대한 것을 주로 다룬다.LogVoyage - logging SaaS written in GoLang
	[github](https://github.com/amitkgupta/nearest_neighbour)
* [Zen 3.1](http://zhen.org/), Powlabsered by Hugo - sequence, surgemq, others
* [Building Docker Images for Static Go Binaries](https://medium.com/@kelseyhightower/optimizing-docker-images-for-static-binaries-b5696e26eb07)
* [Deploying Go servers with Docker](http://blog.golang.org/docker)
	[github](https://github.com/golang/example)
* [ArdanStudios/gotraining](https://github.com/ArdanStudios/gotraining) - Go Training Class Material
* [shadowmint/go-static-linking](https://github.com/shadowmint/go-static-linking) - Demo of how to static link a c library to some go code.
* [Release Go code (and others) via Docker using Makefile](http://blog.charmes.net/2014/11/release-go-code-and-others-via-docker.html)
* [Create The Smallest Possible Docker Container](http://blog.xebia.com/2014/07/04/create-the-smallest-possible-docker-container/)
* [Building Docker Images for Static Go Binaries](https://medium.com/@kelseyhightower/optimizing-docker-images-for-static-binaries-b5696e26eb07)
  - [kelseyhightower/contributors](https://github.com/kelseyhightower/contributors)
  - [CenturyLinkLabs/golang-builder](https://github.com/CenturyLinkLabs/golang-builder)
* [Golang: Statically linked binary and tests for Cockroach](http://tschottdorf.github.io/linking-golang-go-statically-cgo-testing/)
* [Golang Tutotials](https://www.socketloop.com/tutorials/)
* [Go: Best Practices for Production Environments](http://peter.bourgon.org/go-in-production/)


일반적으로 1.3 시절의 정적 링크를 하는 방법이다.
```sh
$ CGO_ENABLED=0 go build -a -ldflags '-s'
$ CGO_ENABLED=0 go build -a -tags netgo -ldflags '-w' .github.com/Scalingo/go-graceful-restart-example
```
다음 방법도 안먹힌다.
```sh
$ go build --ldflags '-extldflags "-lm -static"'
```
실제로 scratch 이미지에서 동작시키기 위해서는 -installsuffix 옵션 (arg는 상관없음)를 추가해야 한다. 그 이유는 1.4에서 변경되었기 때문이다.
두가지 방법중에 아무거나 사용해도 된다고 한다.
```sh
$ go build -a -tags netgo -installsuffix netgo .
$ CGO_ENABLED=0 go build -a -installsuffix nocgo .
$ ldd webserver
	not a dynamic executable
```

Unix게열의 시스템에서 디버깅 정보를 없애는 방법은 다음과 같다.
```
$ go build -ldflags "-s" prog.go
```


-----------
### Vendors
* [Koding, Inc.](https://github.com/koding?page=2) - kite, cache, file, rabbitapi, rabbitmq, pubnub
  - [koding.com/](http://blog.koding.com/)
* [Google Samples](https://github.com/googlesamples) - cloud-polymer-go, identity-toolkit-go
* [Cloud Foundry](https://github.com/cloudfoundry)
* [Adobe](https://github.com/adobe) - brackets
* [Remind](https://github.com/remind101) - tugboat, stack, deploy


### Gophers
* [Rob Pike,robpike](https://github.com/robpike?tab=repositories) - ivy, unicode
* [Jaime Pillora,jpillora](https://github.com/jpillora?tab=repositories) - chisel, cloud-gox, spy go-ogle-analytics
* [Rafal Jeczalik,rjeczalik](https://github.com/rjeczalik?tab=repositories) - notify, gh, fs(gotree), which(gowhich,gofile,gobin), fakerpc
* [ebuchman](https://github.com/ebuchman?tab=repositories) - go-rpc-gen, debora
* [Felix Geisendörfer,felixge](https://github.com/felixge?tab=repositories) - go-xxd, godrone(parrot), go-redis,
  - [felixge.de](http://felixge.de/)
* [Kamil Kisiel,kisielk](https://github.com/kisielk?tab=repositories) - vigo, neo4j-go
* [Aditya Mukerjee,ChimeraCoder](https://github.com/ChimeraCoder?tab=repositories) - go-for-statistical-programming, gojson, goxml
* [Dustin H,djherbis](https://github.com/djherbis?tab=repositories) - fscache, buffer, nio, socket, mingle, redial, pool
* [Antoine Imbert,ant0ine](https://github.com/ant0ine?tab=repositories) - go-json-rest (example)
* [Mozilla Services](https://github.com/mozilla-services) - heka, pushgo, Heartbleed
* [Han-Wen Nienhuys,hanwen](https://github.com/hanwen?tab=repositories) - go-fuse, termite, usb
* [https://github.com/alecthomas?tab=repositories](https://github.com/alecthomas?tab=repositories) - kingpin, gometalinter, go_serialization_benchmarks, rapid, protobuf, servicebus
* [*Matt Jibson,mjibson*](https://github.com/mjibson?tab=repositories) - mog, goon, go-dsp, bosun.org
* [Googol Lee,googollee](https://github.com/googollee?tab=repositories) - go-socket.io, go-rest, go-pubsub, go-gcm
* [astaxie,astaxie](https://github.com/astaxie?tab=repositories) - *tap*, *beego*, build-web-application-with-golang, go-system-programming

------------
### Open Source
* [peterbourgon/gokit](https://github.com/peterbourgon/gokit) - A toolkit for Go in service-oriented architectures.  [gokit](http://gokit.io)
* [libgit2/git2go](https://github.com/libgit2/git2go) - Git to Go. Like McDonald's but tastier.
* [go-lang-plugin-org/go-lang-idea-plugin](https://github.com/go-lang-plugin-org/go-lang-idea-plugin) - Google Go language IDE built using the Intellij Platform

### System
#### Base
* [edsrzf/mmap-go](https://github.com/edsrzf/mmap-go) - A portable mmap package for Go
* [labix/gommap](http://labix.org/gommap)
* [jpillora/backoff](https://github.com/jpillora/backoff) - Simple backoff algorithm in Go (Golang)
* [gaigepr/lazylist](https://github.com/gaigepr/lazylist) - A Lazy Concurrent List-Based Set Algorithm in Go
* [djherbis/buffer](https://github.com/djherbis/buffer) - Composable Buffers for Go

#### Pooling
* [Jeffail/tunny](https://github.com/Jeffail/tunny) - A goroutine pool for golang
* [polaris1119/bitmap](Bitmap Data Structure In Golang) - Bitmap Data Structure In Golang
* [go-goast/goast](https://github.com/go-goast/goast) - goast is a Go AST utility with the aim of providing idiomatic meta-programming facilities for Go
* [droundy/gotgo](https://github.com/droundy/gotgo) - go language generics system
* [djherbis/pool](https://github.com/djherbis/pool) - #golang net.Conn pool

#### Device
* [https://github.com/hanwen/usb](https://github.com/hanwen/usb) - CGO bindings for libusb.

#### Logging
* [firstrow/logvoyage](https://github.com/firstrow/logvoyage) - logging SaaS written in GoLang

#### File System
* [https://github.com/bazil/fuse](https://github.com/bazil/fuse) - FUSE library for Go. http://bazil.org/fuse

#### Embedded
* [traetox/kegarator](https://github.com/traetox/kegarator) - A smart kegarator that tracks temperature and controls the compressor with a web interface and stats
* [traetox/goGPIO](https://github.com/traetox/goGPIO) - golang control over GPIO pins. Works great on raspberrypi and beaglebones


### Networking
#### Base
* [Configurable zero downtime daemon(TCP/HTTP/FCGI) framework write in golang](https://bitbucket.org/PinIdea/zero-downtime-daemon/) - for Gateway, Load Balancer, Stateless Service
* [gocircuit](http://www.gocircuit.org) -
* [firstrow/tcp_server](https://github.com/firstrow/tcp_server) - GoLang simple TCP server
* [zettio/weave](https://github.com/zettio/weave) - The Docker Network
* [whispering-gophers](https://code.google.com/p/whispering-gophers/) - Google I/O 2013 called "Whispering Gophers: networking programming in Go"

#### Tunneling
* [gopacket](https://code.google.com/p/gopacket) - Packet decoding for the Go programming language.
* [jpillora/chisel](https://github.com/jpillora/chisel) - A fast TCP tunnel over HTTP
* [q3k/crowbar](https://github.com/q3k/crowbar) - Tunnel TCP over a plain HTTP session
* [joewalnes/websocketd](https://github.com/joewalnes/websocketd) - Turn any program that uses STDIN/STDOUT into a WebSocket server
* [buger/gor](https://github.com/buger/gor) - HTTP traffic replay in real-time. Replay traffic from production to staging and dev environments.


#### Cache, Proxy
* [elazarl/goproxy](https://github.com/elazarl/goproxy) - An HTTP proxy library for Go
  - [Introducing GoProxy – a light, customizable HTTP Proxy written in Go](http://ripper234.com/p/introducing-goproxy-light-http-proxy/)
* [golang/groupcache](https://github.com/golang/groupcache) - a caching and cache-filling library, intended as a replacement for memcached in many cases
* [bradfitz/gomemcache](https://github.com/bradfitz/gomemcache) - Go Memcached client library
* [djherbis/fscache](https://github.com/djherbis/fscache) - Streaming File Cache for #golang
* [astaxie/bat](https://github.com/astaxie/bat) - Go implement CLI, cURL-like tool for humans

#### Communication
* [djherbis/socket](https://github.com/djherbis/socket) - Simple Socket.io alternative with #golang server
* [googollee/go-socket.io](https://github.com/googollee/go-socket.io) - socket.io library for golang, a realtime application framework
* [googollee/go-engine.io](https://github.com/googollee/go-engine.io) - engine.io for golang, a transport-based cross-browser/cross-device bi-directional communication layer
* [googollee/go-gcm](https://github.com/googollee/go-gcm) - Go for GCM(Google Cloud Messaging) to push message to android device
* [googollee/go-pubsub](https://github.https://www.socketloop.com/tutorials/com/googollee/go-pubsub) - Package pubsub implement the Publish/Subscribe messaging paradigm
* [vinceprignano/gochatapp](https://github.com/vinceprignano/gochatapp) - A Golang and Angular.js chat application using socket.io
* [google/flatbuffers](https://github.com/google/flatbuffers) - Memory Efficient Serialization Library, http://google.github.io/flatbuffers/
* [google/protobuf](https://github.com/google/protobuf) - Protocol Buffers - Google's data interchange format,
https://developers.google.com/protocol-buffers/
* [gorilla/rpc](https://github.com/gorilla/rpc) - A golang foundation for RPC over HTTP services, http://www.gorillatoolkit.org/pkg/rpc
* [marconi/phonebook](https://github.com/marconi/phonebook) - A RPC server and client using Thrift in Golang


### Graphics, GUI <img src="/go-opengl.png" height="50" >
* [OpenGL with Golang](https://github.com/go-gl)
  - 내 우분투 PC에서 OpenGL 2.1 example은 동작한다. 4.1은 안된다.
* [google/gxui](https://github.com/google/gxui) - An experimental Go cross platform UI library.
  - require libglew-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev (libglfw-dev)
  - [OpenGL SDK](https://www.opengl.org/sdk/)
  - [The OpenGL Extension Wrangler Library](http://glew.sourceforge.net/)
  - [GLFW](http://www.glfw.org/) - A multi-platform library for OpenGL, window and input, [github](https://github.com/glfw)

* [tildeleb/vogl](https://github.com/tildeleb/vogl) - Simple video player that uses OpenGL
* [miketheprogrammer/go-thrust](https://github.com/miketheprogrammer/go-thrust) - Cross Platform UI Kit powered by Blink/V8/Chromium Content Lib
* [mattn/go-gtk](https://github.com/mattn/go-gtk/) - Go binding for GTK
* [Codenator81/go-sdl2-intro](https://github.com/Codenator81/go-sdl2-intro) - Just play with sdl2 on Golang
  - `$ sudo apt-get install libsdl2-dev libsdl2-image-dev`
  - `$ go get github.com/veandco/go-sdl2, go-sdl2/sdl, go-sdl2/sdl_image`
* [veandco/go-sdl2](https://github.com/veandco/go-sdl2) - SDL2 binding for Go

### Game
* [Shoen/phaser_multiplayer_demo](https://github.com/Shoen/phaser_multiplayer_demo) - HTML5 Multiplayer with Phaser and Go
* [Azul3D](https://github.com/azul3d) - A 3D game engine written in Go!, http://azul3d.org


### Multimedia
* [srinathh/goanigiffy](https://github.com/srinathh/goanigiffy) - Utility to create an animated gif from frames extracted from a video (or any other sorted image set) with cropping, scaling, rotation & flip operations
* [gophergala/videq](https://github.com/gophergala/videq) - High quality video encoding for modern web in golang
* [ziutek/dvb](https://github.com/ziutek/dvb) - DVB/MPEG-TS library (pure Go)
* [tildeleb/mpeg-decoder](https://github.com/tildeleb/mpeg-decoder) - simple expositional mpeg-1 decoder written in pure go; not a production quality decoder
* [tildeleb/vogl](https://github.com/tildeleb/vogl) - Simple video player that uses OpenGL
* [tildeleb/mpeg-decoder](https://github.com/tildeleb/mpeg-decoder) - simple expositional mpeg-1 decoder written in pure go; not a production quality decoder
* [strukturag/spreed-webrtc](https://github.com/strukturag/spreed-webrtc) - WebRTC audio/video call and conferencing server
* [coreos/go-webrtc-datachannel](https://github.com/coreos/go-webrtc-datachannel) -
* [gophergala/videq](https://github.com/gophergala/videq) - High quality video encoding for modern web in golang
* [weberc2/media](https://bitbucket.org/weberc2/media/) - require libao-dev, libmpg123-dev
* [blackjack/webcam](https://github.com/blackjack/webcam)
* [nareix/mp4](https://github.com/nareix/mp4) - Golang mp4 lib
* [nareix/rtmp](https://github.com/nareix/rtmp) - Golang rtmp server
* [nareix/codec](https://github.com/nareix/codec) - Golang libav codec bindings (h264,aac)
* [nareix/mpegts](https://github.com/nareix/mpegts) - Mpegts stream decoder
* [nareix/maria](https://github.com/nareix/maria) - video server / m3u8 livestream / download youku,sohu videos / live m3u8 proxy
* [nareix/htsp](github.com/nareix/htsp/) - Golang htsp server
* [metachord/flv.go](github.com/metachord/flv.go) - FLV library for Go
* [metachord/flvsak](https://github.com/metachord/flvsak) - Tool for tagging FLV files
* [jteeuwen/go-vlc](https://github.com/jteeuwen/go-vlc) - Go bindings for libVLC
  - `$ sudo apt-get install libvlc-dev`
* [3d0c/gmf](https://github.com/3d0c/gmf) - Go Media Framework (old)
```
  $ git clone https://github.com/FFmpeg/FFmpeg ffmpeg
  $ cd ffmpeg
  $ ./configure --prefix=/usr/local/ffmpeg --enable-shared
  $ make
  $ sudo make install
  $ export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/ffmpeg/lib/pkgconfig/
  $ pkg-config --libs libavformatVim as Go language IDE
```
* [mjibson/nsf](https://github.com/mjibson/nsf) - Nintendo Sound Format for Go
* [mjibson/mog](https://github.com/mjibson/mog) - An audio player written in Go



### Language
* [GoErlang](https://github.com/goerlang) - Go, Erlang Go!
* [GopherJS](https://github.com/gopherjs) - Go to JavaScript
* [zxh0/jvm.go](https://github.com/zxh0/jvm.go) - A JVM written in GO...
* [lazytiger/go-v8](https://github.com/lazytiger/go-v8) - v8 javascript engine binding for golang
* [leocassarani/v8-go](https://github.com/leocassarani/v8-go) - V8 JavaScript engine bindings for Go
* [ry/v8worker](https://github.com/ry/v8worker) - Minimal golang binding to V8github


### Security
* [nareix/tls-example](https://github.com/nareix/tls-example) - Golang crypto/tls example. x509 certificate create and sign
* [go-authboss/authboss](https://github.com/go-authboss/authboss) - The boss of http auth.
* [captncraig/ssgo](https://github.com/captncraig/ssgo) - Utilities for easy single sign on with external services
* [deiwin/facebook](https://github.com/deiwin/facebook) - WIP - Facebook API wrapper in Go
* [jpillora/conncrypt](https://github.com/jpillora/conncrypt) - Symmetrically encrypt your Go net.Conns
* [jpillora/go-and-ssh](https://github.com/jpillora/go-and-ssh) - Go and the Secure Shell protocol

### Document
- [VonC/asciidocgo](https://github.com/VonC/asciidocgo) - Like asciidoctor, but in Go

### Database
* [ha/doozerd](https://github.com/ha/doozerd) - A consistent distributed data store.
* [google/cayley](https://github.com/google/cayley) - An open-source graph database
* [deiwin/imstor](github.com/deiwin/imstor) - A Golang image storage engine
* [PreetamJinka/catena](https://github.com/PreetamJinka/catena) - Catena is a storage engine for time series data. (not for production)
* [mozilla-services/heka](https://github.com/mozilla-services/heka/) - Data collectionPlugin 'vim-jp/vim-go-extra' and processing made easy

### Biology
* [biogo/biogo](https://github.com/biogo/biogo) - biogo is a bioinformatics library for Go

### Development
* [speedata/gogit](https://github.com/speedata/gogit) - Pure Go rsudo chmod a+x /usr/local/bin/weaveead access of a Git repository
* [speedata/decorate](github.com/speedata/decorate) - Go syntax highlighting framework
* [speedata/gohigh](github.com/speedata/gohigh) - Syntax highlighter written in GoSrc
* [rogpeppe/godef](https://github.com/rogpeppe/godef) - Print where symbols are defined in Go source code
* [nsf/gocode](https://github.com/nsf/gocode) - An autocompletion daemon for the Go programming language
* [deiwin/interact](https://github.com/deiwin/interact) - A Golang utility belt for interacting with the user over a CLI
* [jpillora/dedup](https://github.com/jpillora/dedup) - A cross platform command-line tool to deduplicate files, fast
* [alecthomas/gometalinter](https://github.com/alecthomas/gometalinter)- Concurrently run Go lint tools and normalise their output
* [mjibson/party](https://github.com/mjibson/party) - Local third party dependencies for Go


### Service
* [deiwin/luncher-api](https://github.com/deiwin/luncher-api) - An API for Luncher


### International
* [robpike/hira](github.com/robpike/hira) - Hira is a command to transliterate ASCII to Hiragana.
* [robpike/kana](https://github.com/robpike/kana) - Kana is a command to transliterate hiragana and katakana to ASCII.


### Information
* [Github Star Ranking](http://38elements.github.io/) - C, Go, Swift, Python, ...
  - [Go Github Star Ranking at 2015/03/17](http://38elements.github.io/2015/03/17/go-repository-github-star-ranking.html)
* [Awesome Go](http://getawesomeness.com/get/go) - [github](https://github.com/avelino/awesome-go)
* [Github Starred Repositories](http://cyrillschumacher.com/github-starred/)
* [Newspaper.IO for golang](http://www.newspaper.io/golang)
* [Go Newsletter](http://golangweekly.com/)
* [Flipboard for golang](https://flipboard.com/@amite/golang-45ta2nigz)
* [Youtube golang](https://www.youtube.com/user/gocoding)
* [Docker Hub for golang](https://registry.hub.docker.com/_/golang/),
	[github](https://github.com/docker-library/golang)
* spf13.com [golang](http://spf13.com/topics/golang/)
* [Go Language Resources](http://go-lang.cat-v.org/go-code) - end Oct. 2012
* [Go programming news and trend](http://pnat.s3-website-ap-northeast-1.amazonaws.com/go/)
* [A list of Go projects.](http://ntcn.net/blog/?p=8166) (old)
* [The Golang Magazine](https://flipboard.com/@yjinglee/the-golang-magazine-2c7dgao8z)
* [The Libs Club for Go](http://libs.club/golang/] - A Go (golang) toolbox to find the best packages for your next project
* [Prismatic golang](http://getprismatic.com/raw/golang)

### Awesome
* [fleveque/awesome-awesomes](https://github.com/fleveque/awesome-awesomes) - Awesome collection of awesome lists of libraries, tools, frameworks and software for any programming language :D
* [sindresorhus/awesome](https://github.com/sindresorhus/awesome) - A curated list of awesome lists


### Blogs
* [Vluxe](http://vluxe.io/) - A collection of interesting computer science and programming topics. Updated weekly.
* [sdubs.org](http://sdubs.org/) - Blogging all the bytes!, Junos
* [GoLang Basic](http://golang-basic.blogspot.kr/)
* [Go Blog](http://judsonwhite.com/golang/)
* [DevDocs for golang](http://devdocs.io/go/)
* [FOSDEM 2015 DevRoom Go](http://mirrors.dotsrc.org/fosdem/2015/devroom-go/)
* [HakkaLabs GO](https://www.hakka* 2014, "Go Programming Blueprints"labs.co/tags/go)
* [stackoverflow tagged to Go](http://stackoverflow.com/questions/tagged/go)
* [월풍도원 Go언어](http://www.dorajistyle.pe.kr/2015/04/go-golang.html)
* [강성원 블로그](http://kasw.blogspot.kr/search/label/go%20programming%20language)
* [Joinc Golang](http://www.joinc.co.kr/modules/moniwiki/wiki.php/man/12/golang)
* [Marconi Moreto Jr.](http://marconijr.com/posts/thrift-tutorial/) - Python, Golang, Javascript
* [djherbis](https://djherbis.github.io/#blog)
* [kaihag.com](https://www.kaihag.com/) - HTTPS and Go
* [toon.io/](http://toon.io/)
* [Richard Crowley](http://rcrowley.org/) - go talks

### Slides
* (slide) [RESTful Web Applications with Google Go](http://www.slideshare.net/TheMue/res-tful-web-applications-with-google-go)
* (slide) [Let's Go (golang)](http://www.slideshare.net/songaal/lets-go-45867246) - 나름 자세히 차근히 설명하고 있다.
* (presto) [Realtime and Go](http://goonaboat.com/#/)
* (present) [Writing a file system in Go](https://bazil.org/talks/2013-06-10-la-gophers/)
* (present) [go talks](http://present.go-steel-programmers.org/) - The Path to Go 1.1, Golang ORMs, The Martini Web Framework
* (present) [golang.kr](http://talks.golang.kr/2015) - go test
* (present) [Practical Go](http://techtalk.chobie.net/practicalgo.slide)
* (present) [10 things you (probably) don't know about Go](http://talks.golang.org/2012/10things.slide)
	- 이 정도는 반드시 이해해야 일정 수준이상일 것 같다.
* (present) [Talks](http://rcrowley.org/talks/)

* (video) [Embedded Go and Bluetooth Low Energy Hardware](http://confreaks.tv/videos/gophercon2014-embedded-go-and-bluetooth-low-energy-hardware)
Plugin 'vim-jp/vim-go-extra'

### Books
* 2012, "[An Introduction to Programming in Go](http://www.golang-book.com/)", [한글판](http://codingnuri.com/golang-book/), [github](https://github.com/thbar/golang-playground)
* 2012, "The Programming Language Go",
* 2012, *"Go Programming Language Phrasebook"*,
* 2012, *"[Programming in Go](http://www.qtrac.eu/gobook.html)"*,
* 2012, *"The Way to Go"*, [github](https://github.com/brianbs/The-Way-To-Go)
* 2014, "Mastering Concurrency in Go", Packt
* 2014, *"[Build Web Application with Golang](http://astaxie.gitbooks.io/build-web-application-with-golang/content/en/index.html)"*,
* 2014, *"Go Bootcamp"*, [site](http://www.golangbootcamp.com/book/intro)
* 2015, "Go Programming Blueprints", Packt
* 2015, "Go in Practice", Mannnig, [github](https://github.com/Masterminds/go-in-practice)
* 2015, "[Go in Action](http://www.goinactionbook.com/)", Mannnig,
* 2015, "Go: Up and Running", O'Reilly
* 2015, "[The Go Programming Language](http://www.gopl.io/)", Addison-Wesley
* 2015, "Go Web Programming",
* 2015, "Go Programming by Example" [Go by Example](https://gobyexample.com/)


### Search
* [GitHub](https://github.com/)
  - [Trending repositories for Go](https://github.com/trending?l=go)
  - [Trending developers for Go](https://github.com/trending/developers?l=go)
  - [Search](https://github.com/search) : [language:go `string`](https://github.com/search?utf8=%E2%9C%93&q=language%3Ago+string)
* [Libraries for Go](http://libraries.io/go)http://www.zeusedit.com/go.html
* [Go Walker](https://gowalker.org/)
* [Go Search](http://go-search.org/)
* [text.io for golang](http://www.texture.io/alphabetum?q=%23golang)
* [Go Index](https://godoc.org/-/index) - a list of 'go get'able packages on godoc.org
* [CoolGithubProjects](https://www.coolgithubprojects.com/) - [72h trending](https://www.coolgithubprojects.com/72top.php)

### DevEnv
#### Editors
* [IDEs and Plugins for Go](https://github.com/golang/go/wiki/IDEsAndTextEditorPlugins)
* [IDEs and Plugins for Go](https://code.google.com/p/go-wiki/source/browse/IDEsAndTextEditorPlugins.wiki?repo=wiki)
* [Cloud9](https://c9.io/) - Your development environment, in the cloud
* [Zeus IDE](http://www.zeusedit.com/go.html) - Windows
* [Brackets](http://brackets.io/) - from Adobe, Web Design : html, css
* [Komodo IDE](http://komodoide.com/) - [golang extension](http://komodoide.com/resources/languages/komodo--golang/)
* LiteIDE [X](https://github.com/visualfc/liteide) - [download](http://sourceforge.net/projects/liteide/files/)
* [Atom](http://atom.io) - from Github, Web, go, ...
  - [Atom Editor or Sublime Text](http://www.atomtips.com/atom-editor-vs-sublime-text/)
  - Go (golang) autocomplete https:// atom.io/packages/go-plus
```
go get -u -v github.com/nsf/gocode
go get -u -v github.com/golang/lint/golint
go get golang.org/x/tools/cmd/goimports
apm install go-plus
go get -u -v code.google.com/p/rog-go/exp/cmd/godef
apm install godef
go get code.google.com/p/go.tools/cmd/oracle
apm install go-oracle
```
  - base dev packages
```
apm install project-manager
apm install autocomplete-plus
apm install git-control
apm install go-to-line
```

#### Vim
* [Ubuntu powerline : shell, vim 등의 statusline 을 예쁘게...](http://humb1ec0ding.github.io/2013/11/26/ubuntu-powerline-beautify-the-stateline.html)
* [快適にGoを書くための設定たち - 2015 Spring](http://qiita.com/izumin5210/items/1f3c312edd7f0075b09c)
  - [vim-jp/vim-go-extra](https://github.com/vim-jp/vim-go-extra) - Extra Vim plugins for Go
* [Vim Setup](https://russdevel.wordpress.com/tag/vim-go-golang-gotags-ctags-exuberant-ctags-vundle-vim-go-tagbar-nerdtree/)
* [vimcasts.org](http://vimcasts.org/)
* [Vim as Go language IDE](http://farazdagi.com/blog/2015/vim-as-golang-ide/)
* [Generally, how do I “go to definition” in VIM? Then how do I with golang?](http://stackoverflow.com/questions/21125602/generally-how-do-i-go-to-definition-in-vim-then-how-do-i-with-golang)
- [ctag database for golang](http://stackoverflow.com/questions/8204367/ctag-database-for-golang)
* [Programming with Go in Vim](http://blog.myitcv.org.uk/2014/03/03/programming-with-go-in-vim.html)
```
$ go get -u github.com/nsf/gocode
$ go get -u code.google.com/p/rog-go/exp/cmd/godef
$ go get -u github.com/jstemmer/gotags
```
* [The Ultimate Vim Distribution](http://vim.spf13.com/)
* [An incomplete list of Go tools](http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/)
* [fatih/vim-go](https://github.com/fatih/vim-go) - Go development plugin for Vim, v1.0.3
* [dgryski/vim-godef](https://github.com/dgryski/vim-godef) - vim plugin providing godef support
- 함수명에서 gd라고 입력하면 해당하는 패키지의 소스로 이동한다. 빠져나오는 것은 :q로 나오면 된다.
* [kisielk/vigo](https://github.com/kisielk/vigo) - Vi in Go
* [Go in vim 삽질](http://dol9.tistory.com/224)
* [vim-go 환경 만들](http://ysoftman.blogspot.kr/2015/01/vim-go.html)
* [Adentures in Go](http://go-wise.blogspot.kr/)
* [scottdware/vim-slax](https://github.com/scottdware/vim-slax) - Slax syntax coloring for Vim
* [VimAwesome](http://vimawesome.com/) - vim plugins
* [dgryski/vim-godef](https://github.com/dgryski/vim-godef) - vim plugin providing godef support
* [nsf/gocode](https://github.com/nsf/gocode) - An autocompletion daemon for the Go programming language
* [An incomplete list of Go tools](http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/)github
* [jstemmer/gotags](https://github.com/jstemmer/gotags) - ctags-compatible tag generator for Go
* [mbrt/golang-vim-dev](https://registry.hub.docker.com/u/mbrt/golang-vim-dev/dockerfile/) - Go lang + tools + vim-go
* [Golang + vim dev setup in Docker](https://medium.com/@manishrjain/golang-vim-dev-setup-in-docker-5de7302684dc)
  - [Dev setup for golang with vim + plugins](https://bitbucket.org/manishrjain/godev)
  - docker : [mrjn/godev](https://registry.hub.docker.com/u/mrjn/godev/)
  - `$ docker run --rm -it rrjn/godev /bin/bash`


### Learning
수행함수의 파일명과 줄, 그리고 함수명 찍기

```
func foo () {
  Trace()
  Debug("")
}

// Trace prints file, line, func name
func Trace() {
  pc := make([]uintptr, 10)  // at least 1 entry needed
  runtime.Callers(2, pc)
  f := runtime.FuncForPC(pc[0])
  file, line := f.FileLine(pc[0])
  fmt.Printf("%s:%d %s\n", file, line, f.Name())
}

// Debug prints a debug information to the log with file and line.
func Debug(format string, a ...interface{}) {
  pc, file, line, _ := runtime.Caller(1)
  fname := runtime.FuncForPC(pc).Name()
  info := fmt.Sprintf(format, a...)

  fmt.Printf("[debug] %s:%d %s %s\n", file, line, fname, info)
}
```


### Personal
#### Vim을 위한 플러그인 설치
기본 플러그인을 설치한다.
```
$ mkdir -p ~/.vim/autoload ~/.vim/bundle
$ cd ~/.vim/autoload
$ git clone https://github.com/tpope/vim-pathogen.git
$ cd ~/.vimrc/bundle
$ git clone https://github.com/gmarik/Vundle.vim.git
```
Go 편집을 위한 부가 플러그인을 설치한다.
```
$ cd ~/.vim/bundle
$ git clone https://github.com/fatih/vim-go.git
$ git clone https://github.com/Valloric/YouCompleteMe.git
$ git clone https://github.com/majutsushi/tagbar.git
$ git clone https://github.com/scrooloose/nerdtree.git
$ git clone https://github.com/dgryski/vim-godef ~/.vim/bundle/vim-godef
```

#### Atom을 위한 플러그인 설치
```
$ apm install autocomplete-plus go-plus
```
- [go-plus](https://atom.io/packages/go-plus) (recommended)
- [autocomplete-plus](https://atom.io/packages/autocomplete-plus) (recommended)
- [autocomplete-snippets](https://atom.io/packages/autocomplete-snippets) (optional)


* 이전의 ~/.vimrc의 내용
```
" Vim for golang
execute pathogen#infect()

syntax enable  
filetype plugin on  
set modeline
set number  
syntax on
set omnifunc=syntaxcomplete#Complete
set mouse=a
set noautoindent
set ts=2 sts=2 sw=2

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

autocmd BufNewFile,BufReadPost *.go set filetype=go
autocmd FileType go nmap <leader>r :!go run %<CR>

" autocompletion <C-xo>
let g:go_disable_autoinstall = 0

let g:molokai_original = 1
"colorscheme molokai

" NerdTree
let g:nerdtree#enable_at_startup = 1
nmap <F7> :NERDTreeToggle<CR>

" gotags
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

nmap <F8> :TagbarToggle<CR>

" go-def
let g:godef_split=1
let g:godef_same_file_in_same_window=0
```
github.com/thbar/golang-playground
* 새로운 golang vimrc (requires go-vim and YCM using Vundle)
```
set number
set nocompatible
set guifont=Ubuntu\ Mono\ 11
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vimgithub.com/thbar/golang-playground
call vundle#begin()

" Vundle Plugins
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:--langdef=Go
--langmap=Go:.go
--regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/d,func/
--regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,var/
--regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,type/
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"noremap <Leader>s :update<CR>
au FileType go noremap <Leader>s :update<CR>:GoErrCheck<CR>
"au FileType go nmap <F5> :buffers<CR>:buffer<Space>
au FileType go nmap <F1> :GoInfo<CR>
au FileType go nmap <F2> :GoDef<CR>
au FileType go nmap <F3> :GoErrCheck<CR>
au FileType go nnoremap <F7> :GoFmt<CR>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <leader>d <Plug>(go-def)
au FileType go nmap <leader><s-d> <Plug>(go-doc)

" Show/Hide widgets in gvim
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

let g:go_fmt_fail_silently = 0
let g:go_auto_type_info = 1
set tabstop=4
```

* `~/.bashrc`의 내용
```sh
# ~/.bashrc
# golang environment
if [ -d $HOME/coding/go ]; then
	export GOLANG_VERSION=1.4.2
	export GOROOT=$HOME/coding/go/go$GOLANG_VERSION
	export GOPATH=$HOME/coding/go/import
	export MYHOME=$GOPATH/src/stoney

	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

	alias goroot='cd $GOROOT'
	alias gopath='cd $GOPATH'
	alias gohome='cd $MYHOME'
	alias gotest='cd $MYHOME/test'
	alias gohub='cd $GOPATH/src/github.com/'
	alias gobin='cd $GOPATH/bin'

	if [ -x $GOPATH/bin/hugo]; then
		alias gogo='cd $GOPATH/src/stoney/test/hugo'
	fi
fi
```

`ctags`, `vim`을 이용한 검색 이동을 제대로 하도록 만들었다.

- [go list, your Swiss army knife](http://dave.cheney.net/2014/09/14/go-list-your-swiss-army-knife)
- [Exuberant Ctags FAQ](http://ctags.sourceforge.net/faq.html)
- [Vim and Ctags](http://andrewradev.com/2011/06/08/vim-and-ctags/)
- [Vim documentation: tagsrch](http://vimdoc.sourceforge.net/htmldoc/tagsrch.html)

```sh
# ~/.vimrc
set tags=./tags,~/coding/go/go1.4.2/src

# ~/.bashrc
function goget () {
    if [ -z "$1" ]; then
        echo -e "\nUSAGE: goget [.|..|...|<pkg>]|[-u|-e]"
        echo -e "\t<pkg> : package name to download, pkg name or url style"
        echo -e "\t-u    : update package, same as -u option"
        echo -e "\t-e    : edit sources in <pkg> with atom"
        echo -e "\t-w    : open the <pkg> in the browser"
        echo -e "\t"
        return
    fi
    goget_pkg=${1##"https://"}
    goget_pkg=${goget_pkg##"github.com/"}
    goget_pkg="github.com/$goget_pkg"
    case "$2" in
    -w) chromium-browser $goget_pkg ;;
    -u) go get -v -u $goget_pkg ;;
    *)  go get -v $goget_pkg ;;
    esac
    case "$1" in
    .)  ;;
    ..) ;;
    *)
        cd `echo $GOPATH/src/$goget_pkg | sed 's/\.\.\.//'`
        if [ "$2" = "-e" ]; then
            atom
        else
            ls -alF
        fi
        ;;
    esac
}

function gofind () {
    if [ -z "$1" ]; then
        echo -e "\nUSAGE: gofind [<str>]"
        echo -e "\t<str> : package or any name, ex) *.slide, *usb*"
        echo -e "\t"
        return
    fi
    find $GOPATH/src -name "$1" -print
}

function goto () {
    dirs=`find $GOPATH/src -name "*$1*" -print`
    for dir in $dirs
    do
        if [ -d $dir ]; then
            cd $dir
            break;
        fi
    done
}

# change and list the directed directory
function to () {
    case "$1" in
    home)   cd $MYHOME && ls -CF ;;
    root)   cd $GOROOT && ls -CF ;;
    path)   cd $GOPATH && ls -CF ;;
    src)    cd $GOPATH/src/ && ls -CF ;;
    bin)    cd $GOPATH/bin && ls -CF ;;
    hub)    cd $GOPATH/src/github.com && ls -CF ;;
    test)   cd $GOPATH/src/stoney/test && ls -CF ;;
    hugo)   cd $GOPATH/src/stoney/hugo && ls -CF ;;
    media)  cd $GOPATH/src/stoney/gomedia && ls -CF ;;
    *)      echo -e "\nto [home|root|path|bin|hub|test|hugo|media]\n" ;;
    esac
}

function goto () {
    if [ -z "$1" ]; then
        echo -e "\nUSAGE: goto [.|..|<str>], 2015/04/08"
        echo -e "\t.     : remember the current directory"
        echo -e "\t..    : go back the designated directory"
        echo -e "\t<str> : find <str> in \$GOPATH and go to the directory"
        echo -e "\t"
        return
    fi
    case "$1" in
    .)  export goto_pwd=`pwd` ;;
    ..) cd $goto_pwd ;;
    *)
        dirs=`find $GOPATH/src -name "$1" -print`
        for dir in $dirs
        do
            if [ -d $dir ]; then
                cd $dir
                break;
            fi
        done
        ;;
    esac
}

function deps () {
    if [ -z `ls *.go` ]; then
      return
    fi
    echo "ctags for depending go packages ..."
    ctags -R *.go
    if [ $1 ]; then
        pkgs=`go list -f '{{ join .Deps "\n" }}'`
    else
        pkgs=`go list -f '{{ join .Imports "\n" }}'`
    fi
    for pkg in $pkgs
    do
        if [ -d $GOROOT/src/$pkg ]; then
            echo $GOROOT/src/$pkg
            ctags --append=yes -R $GOROOT/src/$pkg
        elif [ -d $GOPATH/src/$pkg ]; then
            echo $GOPATH/src/$pkg
            ctags --append=yes -R $GOPATH/src/$pkg
        fi
    done
}
```

`ctags`의 `ctrl-],t` 이동방식처럼 하도록 `godef`에서 유사하게 `ctrl-o,p` 키가 먹도록 수정하였다.
```
$ vi ~/.vim/bundle/vim-godef/plugin/godef.vim
> autocmd FileType go map <C-o> :call GodefUnderCursor()<cr>
> autocmd FileType go map <C-p> <C-w>q
```
