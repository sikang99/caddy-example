## Use Caddy server

### Purpose

Let's learn how to use Caddy web server and check its functionalities.

### Test

install curl

	$ sudo apt-get install curl
	$ curl --version
	curl 7.38.0 (x86_64-pc-linux-gnu) libcurl/7.38.0 OpenSSL/1.0.1f zlib/1.2.8 libidn/1.28 librtmp/2.3
	Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rt

to test http/2 it requires more newer version of curl

	$ curl -v http://localhost:8090/ --http2

### Benchmark

	$ wrk http://localhost:8090/

### Reference

- [cURL](http://curl.haxx.se/) - HTTP testing tool
- [wrk](https://github.com/wg/wrk) - HTTP benchmarking tool
- [Caddy](https://caddyserver.com/) - The HTTP/2 Web Server


