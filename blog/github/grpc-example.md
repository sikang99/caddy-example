# Simple gRPC service example

## Notice

It requires the new version of `protobuf` supporting `proto3` and `grpc`.
First, check the `protoc` compiler as follows.

	$ protoc --version
	libprotoc 3.0.0

## Install

    $ go get github.com/sikang99/grpc-example

## Development

refer `Makefile` if you know how to build, use, and test.
	
	$ make 
	Makefile for grpc-example, by Stoney Kang, sikang99@gmail.com

	make [proto|build|run|kill|test]
   	- proto : compile interface spec
   	- build : compile client/server
   	- run   : start the server and exec client
   	- kill  : stop the server


compile IDL proto of gRPC.
	
	$ make proto

build client and server programs

	$ make build

run and test the service
	
	$ make run
	$ make test

## Usage

start to run the server and use any number of clients

	$ server/server &
	$ client/client add [name] [age]
	$ client/client get [id]
	$ client/client update [id]
	$ client/client delete [id]
	$ client/client list [age]

## Roadmap

- integrate client and server into one program
- utilize bolt db and other sql dbs

## History

- 2015/05/04 : write handling funcs for boltdb
- 2015/05/02 : add code for server testing by client
- 2015/05/01 : list support search with condition optionally
- 2015/04/30 : start to code with mattn/grpc-example


## Reference

#### Go

- [Travis-CI example for Go](https://github.com/atotto/travisci-golang-example)
- [Learning Golang with Testing](http://jordenlowe.com/title/Learning_Golang_with_Testing)
- [Making a RESTful JSON API in Go](http://thenewstack.io/make-a-restful-json-api-go/)
- [Testing Techniques, Google I/O 2014](https://talks.golang.org/2014/testing.slide#1)
- [Going back to Go (golang)](http://paulosuzart.github.io/blog/2014/07/07/going-back-to-go/)
- [Go - how do I dump the struct into the byte array without reflection?](http://stackoverflow.com/questions/12854125/go-how-do-i-dump-the-struct-into-the-byte-array-without-reflection)
- [Golang : How to reverse elements order in map?](https://www.socketloop.com/tutorials/golang-how-to-reverse-elements-order-in-map)

#### gRPC

- [gRPC-JSON Proxy](http://yugui.jp/articles/889)
- [mattn/grpc-example](https://github.com/mattn/grpc-example)

### Protocol Buffers (protobuf)

- [Language Guide (proto3)](https://developers.google.com/protocol-buffers/docs/proto3)
- [Language Guide](https://developers.google.com/protocol-buffers/docs/proto)
- [Protocol Buffers を利用した RPC、gRPC を golang から試してみ](http://mattn.kaoriya.net/software/lang/go/20150227144125.htm) 
- [Protobuf](http://fileformats.archiveteam.org/wiki/Protobuf)
- [Third-Party Add-ons for Protocol Buffers](https://github.com/google/protobuf/wiki/Third-Party-Add-ons)

### Database

- [PaulMaddox/golang-db-pool-pattern](https://github.com/PaulMaddox/golang-db-pool-pattern)
- [Bolt — an embedded key/value database for Go](https://www.progville.com/go/bolt-embedded-db-golang/)

## License

MIT

