# HTTP/2

이제 표준화가 완료된 http/2를 기본적으로 이해하고 잘 다루어야 한다.

### HTTP/2
* [HTTP/2](https://http2.github.io/) - home page for HTTP/2
	- [GitHub](https://github.com/http2) - spec, implementations, test, ...
	- [FAQ](http://http2.github.io/faq/) - HTTP/2 Frequently Asked Questions
	- [Spec](https://http2.github.io/http2-spec/) - Hypertext Transfer Protocol version 2

* [HTTP/2 Japan Community](http://http2.info/)
	- [GitHub](https://github.com/http2jp)

* [Go + HTTP/2](https://http2.golang.org/)

* Mozillar [Networking/http2](https://wiki.mozilla.org/Networking/http2)


### Golang
* [bradfitz/http2](https://github.com/bradfitz/http2) - HTTP/2 support for Go
* [Jxck/http2](https://github.com/Jxck/http2) - http2 implementation in Go
* [grpc/grpc-go](https://github.com/grpc/grpc-go) - The Go language implementation of gRPC. HTTP/2 based RPC
* [xyproto/algernon](https://github.com/xyproto/algernon) - HTTP/2 web server that can serve Markdown and dynamic Lua scripts
* [xyproto/http2check](https://github.com/xyproto/http2check) - Utility for checking if a given server supports HTTP/2
* [xyproto/snusnu](https://github.com/xyproto/snusnu) - Simple HTTP/2 webserver with support for Markdown
* [oleksandr/bonjour](https://github.com/oleksandr/bonjour) - mDNS/DNS-SD (also know as Apple Bonjour) library for Go (in pure Go)


### Rust
* [mlalic/solicit](https://github.com/mlalic/solicit) - An HTTP/2 implementation in Rust


### Slides
* [Http2 right now](http://www.slideshare.net/bagder/http2-right-now-fosdem2015)
* [Http2.0 Guide 2013-08-14](http://www.slideshare.net/Jxck/http20-guide-http2study-20130814)
* [SPDY & HTTP2.0 & QUIC 2013-08-28](http://www.slideshare.net/Jxck/spdy-http2-quic-bpstudy-20130828)
* [HTTP & HTML & Web](http://www.slideshare.net/PeterREgli/http-html-web)
* [SPDY and HTTP/2](http://www.slideshare.net/FabianFrankDe/spdy-43482773)



### Information
* [Google plans to propose its QUIC network protocol, which delivers HTTP over UDP, as an Internet standard](http://venturebeat.com/2015/04/17/google-plans-to-propose-its-quic-network-protocol-which-delivers-http-over-udp-as-an-internet-standard/)
* [The state and rate of HTTP/2 adoption](http://daniel.haxx.se/blog/2015/03/31/the-state-and-rate-of-http2-adoption/)
* [HTTP/2 for a Faster Web](https://cascadingmedia.com/insites/2015/03/http-2.html)
* [HTTP/2: The future of the Web demystified](http://www.infoworld.com/article/2895409/networking/http2-future-web-demystified.html)
* [HTTP/2 finished, coming to browsers within weeks](http://arstechnica.com/information-technology/2015/02/http2-finished-coming-to-browsers-within-weeks/)
* [Architecting Websites For The HTTP/2 Era](https://ma.ttias.be/architecting-websites-http2-era/)
* [Can HTTP/2 Replace MQTT?](http://timkellogg.me/blog/2015/02/20/can-http2-replace-mqtt/)
* [H2O Tutorial](https://calomel.org/h2o.html)
* [How NGINX Plans to Support HTTP/2](http://nginx.com/blog/how-nginx-plans-to-support-http2/)
* [QUIC – Making Web Browsing Even Faster and Improving over SPDY](http://yucianga.info/?p=819)
* [Google shares gRPC as alternative to REST for microservices](http://opensource.com/bus/15/3/google-grpc-open-source-remote-procedure-calls)
* [HTTP Streaming in Golang](http://dmathieu.com/articles/development/golang-streaming/)
* [Hypertext Transfer Protocol version 2](http://www.lightrains.com/blog/hypertext-transfer-protocol-version-2)
* [Key Differences between HTTP/1.0 and HTTP/1.1](http://www8.org/w8-papers/5c-protocols/key/key.html)
* [Initial Results from the Adaptive Media Streaming over HTTP/2 Trial](http://www.bbc.co.uk/rd/blog/2015/01/initial-results-from-the-adaptive-media-streaming-over-http-2-trial)
* [HTTP/2: A QUICK LOOK](http://blog.scottlogic.com/2014/11/07/http-2-a-quick-look.html)
* [Architecting Websites For The HTTP/2 Era](https://ma.ttias.be/architecting-websites-http2-era/)
* [Making the Web Faster with HTTP 2.0](http://queue.acm.org/detail.cfm?id=2555617)
* [HTTP/2 Considerations and Tradeoffs](https://insouciant.org/tech/http-slash-2-considerations-and-tradeoffs/)
* [SPDY, HTTP/2, QUIC protocol](http://www.programering.com/a/MTN0MDNwATg.html)


### Security
* [TLS in HTTP/2](http://daniel.haxx.se/blog/2015/03/06/tls-in-http2/)


### Multimedia
* [Adaptive Media Streaming over HTTP/2 Trial](http://www.bbc.co.uk/rd/blog/2014/12/adaptive-media-streaming-over-http-2-trial)
* [HTTP/2.0 and DASH: Planning Tomorrow's Improved Video Delivery](http://www.streamingmedia.com/Articles/Editorial/Featured-Articles/HTTP-2.0-and-DASH-Planning-Tomorrows-Improved-Video-Delivery-98653.aspx)

### Blogs
* [mark nottingham](https://www.mnot.net/) - HTTP, HTTP/2

### Proxy
* [Varnish HTTP/2.0](https://www.varnish-cache.org/docs/trunk/phk/http20.html#varnish)
* [Squid HTTP/2.0](http://wiki.squid-cache.org/Features/HTTP2)

### Servers
* [Caddy](https://caddyserver.com/) - HTTP/2 web server made for Human, written in golang
* [Trusted](http://trusterd.org/) - HTTP/2 Web Server scripting with mruby using nghttp2 and mruby-http2
* [Algernon](http://algernon.roboticoverlords.org/) - HTTP/2 web server with built-in support for Lua, Markdown, GCSS and Amber
	- [https://github.com/xyproto/algernon](https://github.com/xyproto/algernon)

### Books
* High Performance Browser Networking
	- [Chapter 12. HTTP/2](http://chimera.labs.oreilly.com/books/1230000000545/ch12.html)
