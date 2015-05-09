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
- 2013 Binary serialization formats

### 2014

- 2014 Nine Things to Expect from HTTP/2
	- Same HTTP APIs
	- Cheaper Requests
	- Network- and Server-Friendliness
	- Cache Pushing : server push
	- Being Able to Change Your Mind : RST_STREAM frame
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

- 2015 gRPC (video)
	- Google Data : based on Atom Publishing Protocol [RFC 5023]
	- XML over HTTP protocol
	- gRPC : 3rd Gen API system w/ protobuf and HTTP/2
- 2015 gRPC – Some Thoughts
- 2015 The Java gRPC implementation - HTTP/2 based RPC
- 2015 Introducing gRPC, a new open source HTTP/2 RPC Framework
- 2015 Microservices based webapplication in golang using grpc.
- 2015 gRPC-JSON proxy
	- gRPC(HTTP/2)와 REST(HTTP/1.1)의 적절히 결합하여 운영하는 것에 대해
	- gengo/grpc-gateway - gRPC to JSON proxy generator
- 2015 Weekly API.Report For March 2nd, 2015
	- gRPC, HTTP/2, IoT Small Things, Microservice, SPA, PDK(WordPress)
- 2015 Difference between Microsoft's Bond and Google's Protocol Buffers [closed]
- 2015 Microsoft Open Sources Cross-platform Serialization Library – Bond




## Major Techs

### Google Protocol Buffers 
- Developers Guide
- Language Guide (proto3)
- Third-Party Add-ons for Protocol Buffers

### Google gRPC: [twitter]
- A high performance, open source, general RPC framework that puts mobile and HTTP/2 first
- Powerful IDL : message, service
- Libraries in ten languages : C, C++, Java, Go, Node.js, Python, Ruby,Objective-C, PHP and C#
- HTTP/2

### Apache Thrift, [apache/thrift]
- a RPC framework designed to be efficient, and available across both OS platforms and programming languages
flexibility regarding transports (such as sockets, pipes, etc) and protocols (binary, JSON, even compressed), plus some more options like SSL or SASL support
- Actionscript 3.0, C++, CSharp, D, Delphi, Go, Graphviz, Haxe Framework, Haskell, Java, Javascript, Node.js, OCaml, Perl, PHP, Python, Ruby
- What is RPC framework and Apache Thrift?
- Thrift: The Missing Guide

### Apache Avro
- Rich data structures.
- A compact, fast, binary data format.
- A container file, to store persistent data.
- Remote procedure call (RPC).
- Simple integration with dynamic languages. Code generation is not required to read or write data files nor to use or implement RPC protocols. Code generation as an optional optimization, only worth implementing for statically typed languages.
- schemas are defined with JSON

### MS Bond
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
- takemyoxygen/bond-performance-tests : 비슷한 데이터 크기로 40% 정도 더 빠르다.


## GitHub Repos
- [grpc/grpc] - The C based gRPC (C++, Node.js, Python, Ruby, Objective-C, PHP, C#) 
- [eishay/jvm-serializers] - java serialization benchmarking
- [alecthomas/go_serialization_benchmarks] - Benchmarks of Go serialization methods
- [pquerna/ffjson] - faster JSON serialization for Go
- [DeDiS/protobuf] - Reflection-based Protocol Buffers
- [gogo/protobuf] - Protocol Buffers for Go with Gadgets, http://gogo.github.io
- [glycerine/go-capnproto] - Cap'n Proto library and parser for go
- [square/wire] - Clean, lightweight protocol buffers for Android and Java. Wire Mobile Protocol Buffers
- [google/flatbuffers] - Memory Efficient Serialization Library, http://google.github.io/flatbuffers/
- [jsonfx/jsonfx] - JsonFx v2.0 - JSON serialization framework for .NET, http://jsonfx.net/license
- [scala/pickling] - Fast, customizable, boilerplate-free pickling support for Scala, http://lampwww.epfl.ch/~hmiller/pickling
- [laruence/yar] - Light, concurrent RPC framework for PHP & C (java, python etc will be supported soon)
- [kentaro/grpc-gdbm] - A network interface to gdbm using grpc-go.
- [GeertJohan/go.httpjsonrpc] - HTTP JSON-RPC
- [dullgiulio/pingo]  - Plugins for Go
- [gobson] - BSON serialization for Go
- [gson-rmi] - A Java JSON-RPC implementation w/ transport framework
 

