# RPC and Serialization

## Status

### ~ 2013

- 2010 Google Protocol Buffers vs Apache Avro
- 2011 Comparison of Protobuff, Thrift, Avro, etc
- 2011 Protocol Buffers, Avro, Thrift & MessagePack
- 2011 Thrift-protobuf-compare Comparing various aspects of Serialization libraries on the JVM platform
- 2011 Using JAX-RS with Protocol Buffers for high-performance REST APIs
- 2012 Avro - More Than Just a Serialization Framework - CHUG - 20120416
- 2012 Thrift vs Protocol Buffers vs Avro - Biased Comparison
- 2012 Schema evolution in Avro, Protocol Buffers and Thrift
- 2012 [번역] 에이브로(Avro), 프로토콜 버퍼(Protocol Buffers) 그리고 스리프트(Thrift)의 스키마 변경(evolution)
- 2013 [Binary serialization formats](http://leopard.in.ua/2013/10/13/binary-serialization-formats/)

### 2014

- 2014 [Nine Things to Expect from HTTP/2](https://www.mnot.net/blog/2014/01/30/http2_expectations)
	- Same HTTP APIs
	- Cheaper Requests
	- Network- and Server-Friendliness
	- Cache Pushing : server push
	- Being Able to Change Your Mind : `RST_STREAM` frame
	- More Encryption
	- No More Text
	- It’ll Take Some Time to Get it Right
	- HTTP/3 and Beyond
- 2014 5 Reasons to Use Protocol Buffers Instead of JSON For Your Next Service
- 2014 ffjson: faster JSON serialization for Golang
- 2014 Simple Binary Encoding
- 2014 Reading Pickled Data in Go
- 2014 The right way to handle YAML in Go
- 2014 Cap'n Proto, FlatBuffers, and SBE
- 2014 FlatBuffers in .NET
- 2014 Scala Pickling 첫 사용기
- 2014 RPC over AMQP
- 2014 Go, REST APIs, and Pointers
- 2014 What's the difference between the Protocol Buffers and the Flatbuffers?
- 2014 Announcing support for Apache Thrift RPC
- 2014 Netty 4-based RPC System Development
- 2014 Announcing release of Microsoft Avro Library
- 2014 Google Protocol Buffers Libraries for C
- 2014 [Serialization In Go](http://www.ugorji.net/blog/serialization-in-go)

### 2015

- 2015 Flatbuffers for Golang: Fast and Fun Serialization
- 2015/02 gRPC announcement 
	- "highly performant, scalable APIs and microservices"
	- protobuf version 3.0 “proto3”, stripped down of proto2
	- Python, C++, C#, Objective-C, PHP, Ruby, Go, Java (both in generic and Android flavors), and JavaScript tailored to use with Node.js.
	- gRPC over HTTP2, "application/grpc[+proto|+json]"
	- gRPC Authentication : TLS 1.2 >=, OAuth 2.0
- 2015 Introducing gRPC, a new open source HTTP/2 RPC Framework
- 2015 Proxying gRPC With Nghttpx 
- 2015 Apache Thrift vs Protocol Buffers vs Fast Buffers
- 2015 Building HTTP/2 services with gRPC
- 2015 grpc: http2 & protobuf based rpc from Google with client libs in 10 languages (grpc.io) 
- 2015 구글의 HTTP 기반의 RPC 프로토콜 GRPC
- 2015 gRPCでgdbmにネットワークインタフェイスを持たせる
- 2015 Porter.io grpc/grpc 
- 2015 Golang JSON RPC Services using net/rpc/jsonrpc
- 2015 #gRPC: HTTP/2 — Proto 3— Micro Services tag team
	- IDL over Proto3 (binary standard) over HTTP/2(optional)
	- Microservice architecture patterns and best practices
- 2015 [gRPC](http://bitworking.org/news/2015/02/grpc) (video)
	- Google Data : based on Atom Publishing Protocol [RFC 5023]
	- XML over HTTP protocol
	- gRPC : 3rd Gen API system w/ protobuf and HTTP/2
- 2015 gRPC – Some Thoughts
- 2015 The Java gRPC implementation - HTTP/2 based RPC
- 2015 Introducing gRPC, a new open source HTTP/2 RPC Framework
- 2015 Microservices based webapplication in golang using grpc.
- 2015 [gRPC-JSON proxy](http://yugui.jp/articles/889)
	- gRPC(HTTP/2)와 REST(HTTP/1.1)의 적절히 결합하여 운영하는 것에 대한 것 
	- [gengo/grpc-gateway](https://github.com/gengo/grpc-gateway) - gRPC to JSON proxy generator
- 2015 [Weekly API.Report For March 2nd, 2015](http://apievangelist.com/2015/03/02/weekly-apireport-for-march-2nd-2015/)
	- gRPC, HTTP/2, IoT Small Things, Microservice, SPA, PDK(WordPress)
- 2015 [Difference between Microsoft's Bond and Google's Protocol Buffers](http://stackoverflow.com/questions/27879239/difference-between-microsofts-bond-and-googles-protocol-buffers)
- 2015 [Microsoft Open Sources Cross-platform Serialization Library – Bond](http://www.infoq.com/news/2015/02/MicrosoftBond)


## Information

### Some Notes

- Quantitive Comparisons of serialization
	- Whether schema definition is required or nor?
	- Whether schema compiler is required or not?
	- Whether serialization is based on binary or ascii?
	- Which programming languages are supported?

- The major differences between gRPC and Thrift are pretty simple:
	- This solves things with protobufs, Google's serialization library. protobufs has implementations in many more languages, its implementation is older, and it's a bit more compact than the default Thrift serialization format. It's also less expressive (e.g., protobufs can't distinguish between an empty collection and null, whereas Thrift can).
	- Thrift has a custom RPC format; gRPC just uses HTTP/2 with some slightly formalized REST generation from a given RPC interface. You honestly could accidentally be gRPC-compliant right now with a vanilla protobufs-over-HTTP/2 implementation.


### Slides

- 2010 [Protocol buffers](http://www.slideshare.net/fabricioepa/protocol-buffers-44187777)
- 2011 [Introduction to Thrift](http://www.slideshare.net/dvirsky/introduction-to-thrift)
- 2012 [Apache thrift-RPC service cross languages](http://www.slideshare.net/jimmy_lai/apache-thriftrpc-service-cross-languages)
- 2014 [Serialization in Go](http://www.slideshare.net/albertstrasheim/serialization-in-go) [pdf](./slide/2014-Serialization-in-Go.pdf)
- 2014 [JSON on Mobile: is there an Efficient Parser?](http://drops.dagstuhl.de/opus/volltexte/2014/4562/pdf/10.pdf) (paper)
	- 전체적으로 RPC와 Serialization에 대해 잘 설명하고 있다.
- 2015 [HTTP/2 Introduction](http://www.slideshare.net/walterliu7/http2-introduction)


### Base Info

- [Remote procedure call](http://en.wikipedia.org/wiki/Remote_procedure_call)
- [Comparison of data serialization formats](http://en.wikipedia.org/wiki/Comparison_of_data_serialization_formats)
- [Hessian (Web service protocol](http://en.wikipedia.org/wiki/Hessian_%28Web_service_protocol%29)



## Major Techs

### Google [Protocol Buffers](http://code.google.com/p/protobuf)

- Developers Guide
- Language Guide (proto3)
- Third-Party Add-ons for Protocol Buffers

### Google [gRPC](http://www.grpc.io/): [twitter](https://twitter.com/grpcio)

- A high performance, open source, general RPC framework that puts mobile and HTTP/2 first
- Powerful IDL : message, service
- Libraries in ten languages : C, C++, Java, Go, Node.js, Python, Ruby,Objective-C, PHP and C#
- HTTP/2

### Apache [Thrift](https://thrift.apache.org/), [apache/thrift](https://github.com/apache/thrift)

- a RPC framework designed to be efficient, and available across both OS platforms and programming languages
flexibility regarding transports (such as sockets, pipes, etc) and protocols (binary, JSON, even compressed), plus some more options like SSL or SASL support
- Actionscript 3.0, C++, CSharp, D, Delphi, Go, Graphviz, Haxe Framework, Haskell, Java, Javascript, Node.js, OCaml, Perl, PHP, Python, Ruby
- What is RPC framework and Apache Thrift?
- Thrift: The Missing Guide

### Apache [Avro](http://avro.apache.org/)

- Rich data structures.
- A compact, fast, binary data format.
- A container file, to store persistent data.
- Remote procedure call (RPC).
- Simple integration with dynamic languages. Code generation is not required to read or write data files nor to use or implement RPC protocols. Code generation as an optional optimization, only worth implementing for statically typed languages.
- schemas are defined with JSON

### MS [Bond](https://github.com/Microsoft/bond/)

- Pros :
	- Bond supports generics
	- Bond has different types to represent collections: vector<T>, map<T>, list<T>
	- Bond supports type-safe lazy deserialization (bonded<T>)
	- Bond supports multiple formats (fast binary, compact binary, XML, JSON) + marshaling and transcoding
- Cons :
	- Bond doesn't support different types for fixed and variable integer encoding. In Bond, the way how integers are encoded is determined by the output format (fast or compact), but in Protocol Buffers, there are integer types that always have fixed size: fixed32 and fixed64.
	- Bond doesn't support union types (oneof in Protocol Buffers)
	- Bond doesn't have Java implementation (yet)
- Why Bond
- [takemyoxygen/bond-performance-tests](https://github.com/takemyoxygen/bond-performance-tests) : 비슷한 데이터 크기로 protobuf 보다 40% 정도 더 빠르다.


## GitHub Repos

- [sikang99/grpc-example](https://github.com/sikang99/grpc-example) - grpc service example
- [grpc/grpc](https://github.com/grpc/grpc) - The C based gRPC (C++, Node.js, Python, Ruby, Objective-C, PHP, C#) 
- [eishay/jvm-serializers](https://github.com/eishay/jvm-serializers) - java serialization benchmarking
- [alecthomas/go_serialization_benchmarks](https://github.com/alecthomas/go_serialization_benchmarks) - Benchmarks of Go serialization methods
- [pquerna/ffjson](https://github.com/pquerna/ffjson) - faster JSON serialization for Go
- [DeDiS/protobuf](https://github.com/DeDiS/protobuf) - Reflection-based Protocol Buffers
- [gogo/protobuf](https://github.com/gogo/protobuf) - Protocol Buffers for Go with Gadgets, http://gogo.github.io
- [glycerine/go-capnproto](https://github.com/glycerine/go-capnproto) - Cap'n Proto library and parser for go
- [square/wire](https://github.com/square/wire) - Clean, lightweight protocol buffers for Android and Java. Wire Mobile Protocol Buffers
- [google/flatbuffers](https://github.com/google/flatbuffers) - Memory Efficient Serialization Library, http://google.github.io/flatbuffers/
- [jsonfx/jsonfx](https://github.com/jsonfx/jsonfx) - JsonFx v2.0 - JSON serialization framework for .NET, http://jsonfx.net/license
- [scala/pickling](https://github.com/scala/pickling) - Fast, customizable, boilerplate-free pickling support for Scala, http://lampwww.epfl.ch/~hmiller/pickling
- [laruence/yar](https://github.com/laruence/yar) - Light, concurrent RPC framework for PHP & C (java, python etc will be supported soon)
- [kentaro/grpc-gdbm](https://github.com/kentaro/grpc-gdbm) - A network interface to gdbm using grpc-go.
- [GeertJohan/go.httpjsonrpc](https://github.com/GeertJohan/go.httpjsonrpc) - HTTP JSON-RPC
- [dullgiulio/pingo](https://github.com/dullgiulio/pingo)  - Plugins for Go
- [gobson](https://labix.org/gobson) - BSON serialization for Go
- [gson-rmi](https://code.google.com/p/gson-rmi/) - A Java JSON-RPC implementation w/ transport framework
- [ugorji/go](https://github.com/ugorji/go) - idiomatic codec and rpc lib for msgpack, cbor, json, etc. msgpack.org[Go]
- [2tvenom/cbor](https://github.com/2tvenom/cbor) - Golang library for working with cbor binary format
 

## Glossary

### Format

- IDL (Schema Definition)
- representational state transfer (REST)
- TLV - IPv6
- ASN.1
- RFC-822
- ABNF
- HTML
- CSV
- XML
- JSON
- RDF
- Protobuf - Google 2008, ActiveMQ, netty-protobuf-rpc
- protostuff
- smile
- Simple Binary Encoding (SBE)
- Cap’n Proto
- FlatBuffers - Google
- MessagePack - Java serialization library, @Message annotation, 17 langs support
- Rugs On
- BERT - Binary ERlang Term, Erlang's binary serialization format
- [Cap’n Proto](https://capnproto.org/) - binary serialization
- [CBOR](http://cbor.io/) - RFC-7049, Concise Binary Object Representation
	- JSON, No schema

### RPC

- DCE-RPC
- ONC-RPC
- NFS/RPC (RFC 1094/1057)
- RMI - Java
- XStream - XML Java library, JSON/XML
- Kyro - Java
- SOAP - ad-hoc RPC over HTTP
- CORBA 
- JSON-RPC
- zerorpc
- net/rpc - golang
- [CRIU RPC](http://criu.org)
- [Cap’n Proto RPC](https://capnproto.org/rpc.html)
- [gRPC](http://www.grpc.io/) - google RPC based on HTTP/2
- [BERT-RPC](http://bert-rpc.org/) - BERT-RPC 1.0 Specification
- Apache Avro - Hadoop, Binary/JSON as RPC IDL, SASL profile
- Apache Thrift - 0.9.1(Ubuntu), 0.9.2, Facebook, Evernote, go support

