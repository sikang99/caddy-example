# Container Technology

요즘 유행하고 있는 대표적인 컨테이너 기술인 도커관련 생태계를 알아본다.

## Diary

- 2015/04/02 : 도커로 컴파일하고 도커로 배포하는 방법을 익히다.
- 2015/03/09 : 서비스를 자동으로 동작시키는 형태로 도커를 운영할 수 있어야 하는데 그러기 위해선, systemd가 필요하다.
- 2015/03/04 : 도커의 사용법이 익숙해지고 있다. 도커와 마이크로서비스와 밀접한 관계가 있는 것 같다.
- 2015/03/03 : 최근, 도커의 활용성을 넓히기 위하여
Machine, Swarm, Compose라는 3가지 오케스트레이션 도구들이 새로이 발표 지원되고 있다.

## General

* [Docker] - Linux container engine,
		[github](https://github.com/docker/docker),
		[wikipedia](http://en.wikipedia.org/wiki/Docker_\(software\))
	- [Dockerfile Project](http://dockerfile.github.io) - a central repository of Dockerfile,
		[github](https://github.com/dockerfile)
	- [Docker System Status](https://status.docker.com/)
* Docker Tools
	- [Machine](https://docs.docker.com/machine/) - Machine management for a container-centric world,
		[github](https://github.com/docker/machine)
	- [Swarm](https://docs.docker.com/swarm/) - Docker-native clustering system,
		[github](https://github.com/docker/swarm)
	- [Compose](https://docs.docker.com2/compose) - replace Fig,
		[github](https://github.com/docker/compose)
	- [Open vSwitch](http://openvswitch.org/) - Production Quality, Multilayer Open Virtual Switch,
		[github](https://github.com/openvswitch)
* [CoreOS] - Rocket, based on Chrome OS
	- [App Container](https://github.com/appc)
* [RancherOS] - A minimalist distro designed explicitly to run Docker,
	[github](https://github.com/rancherio/os)
* Apache [Mesos] - A distributed systems kernel
	- Mesosphere Datacenter Operating System (DCOS)
* Google [Kubernetes] - Manage a cluster of Linux containers,
	[github](https://github.com/googlecloudplatform/kubernetes)
* Google cAdviser - Analyzes resource usage and performance characteristics of running containers,
	[github](https://github.com/google/cadvisor)
* [Clive] -  Unikernel written in Go (Golang)
* [Shippable] - Hosted CI solution built on Docker with Webhooks.
* [Werker] - Hosted CI solution built on Docker with Webhooks.
* [Packer] - creating identical machine images for multiple platforms from a single source configuration,
	[github](https://github.com/mitchellh/packer)
* [Boot2Docker] - Lightweight Linux for Docker,
	[github](https://github.com/boot2docker/boot2docker)
	- It runs completely from RAM, is a small ~24MB download and boots in ~5s (YMMV)
	- uses port 2376, the registered IANA Docker SSL port
* [LXC](http://en.wikipedia.org/wiki/LXC) - Linux Containers
* RedHat [OpenShift]
	- [geard](http://openshift.github.io/geard/) - Simple container management across systems
* [systemd](http://www.freedesktop.org/wiki/Software/systemd/) - System and Service Manager,
	[wikipedia](http://en.wikipedia.org/wiki/Systemd), [fedora](https://fedoraproject.org/wiki/Systemd)
* [Vagrant](http://www.vagrantup.com),
	[wikipedia](http://en.wikipedia.org/wiki/Vagrant_\(software\))
* [Drone](http://drone.io) - Drone is a Continuous Integration platform built on Docker, written in Go,
	[github](https://github.com/drone/drone)
* [gophercloud](http://gophercloud.io/) - an open-source library for working with OpenStack clouds in golang,
	[github](https://github.com/rackspace/gophercloud) - The Go SDK for Openstack
* [tsuru](https://tsuru.io) - Open source Platform as a Service (PaaS),
	[github](https://github.com/tsuru/tsuru)


### Information for Docker

* [Data Center Operating System](http://datacenteroperatingsystem.io/)
* [veggiemonk/awesome-docker](https://github.com/veggiemonk/awesome-docker)
* [Sandboxing proprietary applications with Docker](http://www.jann.cc/2014/09/06/sandboxing_proprietary_applications_with_docker.html)
	- [Running GUI Applications](http://www.jann.cc/2014/09/06/sandboxing_proprietary_applications_with_docker.html#running-gui-applications)
* [Docker Containers on the Desktop](https://blog.jessfraz.com/posts/docker-containers-on-the-desktop.html)
	- GUI가 필요한 Chome을 도커로 돌릴 수 있다는 것이 아주 좋다.
	- [can you run GUI apps in a docker container?](http://stackoverflow.com/questions/16296753/can-you-run-gui-apps-in-a-docker-container)
* [How to set up networking between Docker containers](http://xmodulo.com/networking-between-docker-containers.html) - Weave
* 2015/03/03 [Swarm - The Docker Clustering Engine!](http://linuxforafrica.org/Docs/2015/03/docker-swarm/)
* 2015/03/15: [Docker, Rails, & Docker Compose together in your development workflow](http://blog.carbonfive.com/2015/03/17/docker-rails-docker-compose-together-in-your-development-workflow/)
* [Google Kubernetes – Container Cluster Manager](http://www.yongbok.net/blog/google-kubernetes-container-cluster-manager/)
* [On-demand activation of Docker containers with systemd](https://developer.atlassian.com/blog/2015/03/docker-systemd-socket-activation/)
* [DevOps and Docker](http://blog.sei.cmu.edu/post.cfm/devops-docker-015)
* [How to centralize Logs from Docker Containers](https://www.loggly.com/blog/centralize-logs-docker-containers/)
* How We Use Docker For Continuous Delivery –
	[Part 1](http://contino.co.uk/use-docker-continuously-deliver-microservices-part-1/),
	[Part 2](http://contino.co.uk/use-docker-continuous-delivery-part-2/)
* [Linux Containers and technologies](http://containerops.org/)
* [The Docker Ecosystem Tutotials](https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-an-introduction-to-common-components)
	- The Docker Ecosystem: An Introduction to Common Components January 26, 2015
	- The Docker Ecosystem: An Overview of Containerization January 26, 2015
	- The Docker Ecosystem: Service Discovery and Distributed Configuration Stores January 26, 2015
	- The Docker Ecosystem: Networking and Communication January 26, 2015
	- The Docker Ecosystem: Scheduling and Orchestration January 26, 2015
* [Heavily ARMed after major upgrade: Raspberry Pi with Docker 1.5.0](http://blog.hypriot.com/heavily-armed-after-major-upgrade-raspberry-pi-with-docker-1-dot-5-0)
* [Kubernetes: Google's Docker Orchestration Engine](https://www.packtpub.com/books/content/kubernetes-googles-open-docker-orchestration-engine)
	- 도커 자체적으로 제작한 것과 경쟁을 해야 하는 것인가?
* [Orchestrating Docker with Machine, Swarm and Compose](https://blog.docker.com/2015/02/orchestrating-docker-with-machine-swarm-and-compose/)
	- 이것들로 Docker의 약점을 파고들었던 CoreOS와의 한판 싸움이 시작될 듯 하다.
* [Docker Containers on the Desktop](https://blog.jessfraz.com/posts/docker-containers-on-the-desktop.html)
* [A Quick Guide to Using Docker-compose (Previously Fig)](https://larry-price.com/blog/2015/02/26/a-quick-guide-to-using-docker-compose-previously-fig/)
	- docker-compose를 활용하는 신속한 도커 이미지 제작에 대한 것
* [Docker Releases Container Orchestration Bundle for Download](http://adtmag.com/articles/2015/02/26/docker-container-orchestration-bundle.aspx)
	- beta versions of Docker Machine and Docker Swarm, and the 1.1 version of Docker Compose
	- Twelve drivers are available in this beta: Amazon Elastic Compute Cloud, Digital Ocean, Google Cloud Platform, IBM Softlayer, Microsoft Azure, Microsoft Hyper-V, OpenStack, Rackspace Cloud, VirtualBox, VMware Fusion, VMware vCloud Air and VMware vSphere
* After Docker: [Unikernels and Immutable Infrastructure](https://medium.com/@darrenrush/after-docker-unikernels-and-immutable-infrastructure-93d5a91c849e)
	- 전체적인 개념과 관련 정보가 잘 정리되어 있다. 가끔 읽어볼 필요가 있다.
	- Unikernel은 App이 컴파일, 링크된후 커널을 포함되어 배포될 수 있도록 한다.
* [Understanding Modern Service Discovery with Docker](http://progrium.com/blog/2014/07/29/understanding-modern-service-discovery-with-docker/)
* [Docker and the PID 1 zombie reaping problem](https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/)
* [오라클 리눅스, 도커 사용자들 노린다](http://www.zdnet.co.kr/news/news_view.asp?artice_id=20150206162526)
* [환상 금물…도커에 대해 알아야 할 것들](http://www.zdnet.co.kr/news/news_view.asp?artice_id=20140812121328)


### Information for CoreOS

* [Experimenting with CoreOS, confd, etcd, fleet, and CloudFormation](http://marceldegraaf.net/2014/04/24/experimenting-with-coreos-confd-etcd-fleet-and-cloudformation.html)


### Information for Drawbridge

* MS [Drawbridge](http://research.microsoft.com/en-us/projects/drawbridge/)
* [The Docker Virtual Machine Extension for Linux on Azure](http://azure.microsoft.com/en-us/documentation/articles/virtual-machines-docker-vm-extension/)


### Information for SDN

* [Docker offers big opportunity for software-defined networking](http://thoughtsoncloud.com/2014/12/can-enterprise-portable-network-docker-opportunity-sdn/)
* [Docker performance monitoring](http://blog.sflow.com/2014/06/docker-performance-monitoring.html) - sflow


### Docker for ARM Devices

* [Docker Pirates ARMed with explosive stuff](http://blog.hypriot.com/) - HypriotOS
* (video) [Docker Kitematic controls Raspberry Pi 2 running Docker 1.5.0](https://www.youtube.com/watch?v=yHytb1k3TfM)
* [Connecting Kitematic to an external Docker Engine running on a Raspberry Pi](http://blog.kitematic.com/post/114866595734/connecting-kitematic-to-an-external-docker-engine)
* [pahud/btsync-arm](https://registry.hub.docker.com/u/pahud/btsync-arm/) - running BitTorrent Sync on ARM-based RaspberryPI with Docker, based on [HypriotOS](http://blog.hypriot.com/)
	- [pahud/btsync-arm](https://github.com/pahud/btsync-arm)


## Handling

* [Yongbok Blog](http://www.yongbok.net/blog/) - Docker expert, OS
	- [ruo91/docker-building-your-own-bridge.sh](https://gist.github.com/ruo91/3180814477e4e785877a) -
Shell script for building your own bridge in docker
* [Docker Korea](http://forum.docker.co.kr/) - Meetup


##  Slides

* 황상철, [DevOps with Docker](http://www.slideshare.net/k16wire/devops-with-docker-45512521) - 간결한 설명
* Jeremy Brown, [Docker and DevOps - Why it matters](http://www.slideshare.net/tenfourty/2015-02-06-sabeo-techxperts-docker-and-devops-why-it-matters)
	- Waterfall, Agile, Lean, Continuous Integration, Delivery, Deployment, Operation
* [Talks given by Elliott Stoneham](https://github.com/elliott5/talks)

## Books
* O'Reilly, "A Field Guide to the Distributed Development Stack", [pdf](https://s3.amazonaws.com/orm-atlas-media/dds-field-guide.pdf)
* O'Reilly, "Customizing Chef", [pdf](http://www.thomascookgroup.com/wp-content/uploads/2014/10/Customizing_Chef.pdf)
* Docker Ecosystem 2014, [pdf](http://comp.photo777.org/wp-content/uploads/2014/09/Docker-ecosystem-7.01.pdf)
* Docker Ecosystem, Feed Overview, [pdf](https://gallery.mailchimp.com/c8f11e463fad001a2b061f1f1/files/Tracxn__Docker_Ecosystem_Report_01.pdf)
* 루비페이퍼, "더 도커북"
* 길벗, [가장 빨리 만나는 도커(Docker) 출간 및 원고 공개](http://pyrasis.com/private/2014/11/30/publish-docker-for-the-really-impatient-book)
* O'Reilly, "Introduction to Docker: First Steps for Containerizing Software Applications",
[video](http://player.oreilly.com/videos/9781491916179?toc_id=197359)
* [Docker in Practice – A Guide for Engineers](https://zwischenzugs.wordpress.com/2015/03/14/docker-in-practice-a-guide-for-engineers/)
	- [github](https://github.com/docker-in-practice)

### Tests

* [NATS](http://nats.io/) - is an open-source, high-performance, lightweight cloud messaging system
```
$ docker run --name my_gnatsd -d apcera/gnatsd
$ docker inspect my_gnastd
...
"Entrypoint": [
	"/gnatsd",
	"-p",
	"4222",
	"-m",
	"8333"
...
"IPAddress": "172.17.0.5",
```
This image includes EXPOSE 4222 8333

```
# Go client
$ go get github.com/apcera/nats

# Servers
$ go get github.com/apcera/gnatsd
```

```
$ cd $GOPATH/github.com/apcera/nats/example
$ go build nats-pub.go
$ go build nats-sub.go

$ ./nats-sub -s tcp://172.17.0.5:4222 Test
Listening on [Test]
$ ./nats-pub -s tcp://172.17.0.5:4222 Test "Are you there?"
[#1] Received on [Test]: 'Are you there?'
```


### Tips
* 도커에 관련된 환경변수
```
export DOCKER_HOST=unix://var/run/docker.sock
export DOCKER_CERT_PATH=
export DOCKER_TLS_VERIFY=1
```

* 계정을 docker 그룹에 등록시키면 sudo를 하지 않아도 된다.
```
$ sudo addgroup <user> docker
$ docker ps -a
```
* 도커허브에 계정을 등록했다.
```
$ docker login
Username: stoney
Password: <basic>
Email: sikang99@gmail.com

$ cat ~/.dockercfg
{
	"https://index.docker.io/v1/": {
	"auth": "c3RvbmV5OmthbmcxMTIx",
	"email": "sikang99@gmail.com"
}
```
* 컨테이너, 이미지 한번에 지우기
```
$ sudo docker rm $(docker ps -aq)
$ sudo docker rmi -f $(docker images -aq)
```

* (none) 이미지만 지우기
```
$ docker rmi `docker images -a | grep none | awk '{ print $3 }'`
$ docker rmi `docker images -f dangling=true | awk '{ print $3 }'`
$ docker rmi `docker images -fq dangling=true`

$ docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs docker rm
```

* 쉘 기반의 컨테이너 돌리기 (동작후 컨테이너 삭제)
```
$ docker run --rm -it centos bash
```
* 유용한 쉡 함수
```
#!/bin/bash

docker_nuke() {
	docker ps -q | xargs docker stop
	docker ps -q -a | xargs docker rm
}

docker_rmi_none() {
	docker images | grep '<none>' | \
	awk '{ print $3 }' | \
	xargs docker rmi -f
}

docker_go() {
	docker run --rm -t -i $@
```

* Makefile for docker operation
```make
all: usage
#       @echo "$@ $<"

ps:
	docker images -a
	docker ps -a
	docker-machine ls

machine:
	docker-machine env dev
	docker-machine config dev
	docker-machine ls

clean:
	@docker stop `docker ps -aq`
	@docker rm `docker ps -aq`
	@docker ps -a

clobber:
	@docker rmi `docker images -aq`
	@docker images -a

version v:
	docker version
	docker-machine -v
	docker-compose --version

search:
	docker search --stars=2 erlang

# Launching a Linux container
ubuntu centos oraclelinux:
	docker run --rm -it $@:latest /bin/bash
	@docker ps -a

# Lauching a container for develop environment
golang:
	docker run --rm --name golang -it -e GOROOT=/usr/src/go -v ~/coding/go/import:/go golang:latest /bin/bash
	@docker ps -a

rust-pre:
	docker run -it sunng/rust-nightly /bin/bash

rust:
	docker run --rm --name rust -it -v ~/coding/rust:/mnt/project sunng/rust-nightly /bin/bash
	@docker ps -a

# Conventional part in makefile
make m:
	vi Makefile

usage:
	@echo ""
	@echo "usage: make [run|ps|version]"
	@echo ""
	@echo " ubuntu - run Ubuntu container"
	@echo " golang - run Golang container"
	@echo " rust - run Rust container"
	@echo " version - show versions of docker tools"
	@echo ""
```


### Tools

* [netvarun/docket](https://github.com/netvarun/docket) - Docket - Custom docker registry that allows for lightning fast deploys through bittorrent
* [spotify/docker-gc](https://github.com/spotify/docker-gc) - Docker garbage collection of containers and images
* [socketplane/docker-ovs](https://github.com/socketplane/docker-ovs) - Open vSwitch for Docker

## Search

* GitHub [Trending repositories for golang](https://github.com/trending?l=go)
* StackOverflow [Docker Help](http://stackoverflow.com/search?q=docker)


[Docker]:http://www.docker.com
[CoreOS]:http://www.coreos.com
[Mesos]:http://mesos.apache.org
[RancherOS]:http://rancher.com/announcing-rancher-os/
[Kubernetes]:http://kubernetes.io/
[Clive]:http://lsub.org/ls/clive.html
[Shippable]:http://shippable.com/
[Werker]:http://wercker.com/
[Packer]:http://www.packer.io/
[Boot2Docker]:http://boot2docker.io/
[OpenShift]:http://www.openshift.org/

