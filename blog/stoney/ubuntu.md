# Ubuntu

* [리눅스 커널 개발을 위한 Vim + ctags + cscope + taglist 설정](https://ysoh.wordpress.com/2012/04/09/%EB%A6%AC%EB%88%85%EC%8A%A4-%EC%BB%A4%EB%84%90-%EA%B0%9C%EB%B0%9C%EC%9D%84-%EC%9C%84%ED%95%9C-vim-%EC%84%A4%EC%A0%95-vimrc/)


`~/.bashrc`에서 alias대신 function을 사용하도록 수정하자.
```sh
# alias gosrc='cd $GOPATH/src/'
function gosrc () {
    cd $GOPATH/src/$1
    ls -aCF
}

# alias gohub='cd $GOPATH/src/github.com/'
function gohub () {
    cd $GOPATH/src/github.com/$1
    ls -aCF
}
```

설치하면 유용한 유틸리티 패키지들
```
$ sudo apt-get install dcfldd sshfs
$ sudo apt-get install tree hexer ctags
```

```
$ sudo apt-get install asciidoc
$ man asciidoc a2x
```


Ubuntu package commands
https://help.ubuntu.com/community/AptGet/Howto

```
$ dpkg -L clang-3.5
```
설치된 패키지의 상황을 알아본다. PKG_CONFIG_PATH 변수를 사용해야될 수도 있을지 모른다.
아래의 디렉토리에 .pc라는 파일들이 존재한다.
```
$ export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/lib/pkgconfig
$ cat /usr/lib/x86_64-linux-gnu/pkgconfig/json.pc
prefix=/usr
exec_prefix=${prefix}
libdir=${prefix}/lib/x86_64-linux-gnu
includedir=${prefix}/include

Name: json-c
Description: JSON implementation in C
Version: 0.11.99
Requires:
Libs:  -L${libdir} -ljson-c
Cflags: -I${includedir}/json-c

```

```
$ pkg-config --list-all
pixman-1                       Pixman - The pixman library (version 1)
iso-codes                      iso-codes - ISO country, language, script and currency codes and translations
gmodule-export-2.0             GModule - Dynamic module loader for GLib
cucul                          caca - Colour ASCII-Art library
libevent_pthreads              libevent_pthreads - libevent_pthreads adds pthreads-based threading support to libevent
gstreamer-interfaces-0.10      GStreamer Interfaces Library - Interfaces for GStreamer elements
cairo-svg                      cairo-svg - SVG surface backend for cairo graphics library
libdrm_intel                   libdrm_intel - Userspace interface to intel kernel DRM services
recordproto                    RecordProto - Record extension headers
gnutls                         GnuTLS - Transport Security Layer implementation for the GNU system
...
```

도커에서 sudo를 사용하지 않고 docker 명령을 사용하는 방법
```
$ sudo groupadd docker
$ sudo gpasswd -a ${USER} docker
$ sudo service docker restart
```

### 한글 처리
* [우분투 14.04 한영 변환, 한글입력](http://ngee.tistory.com/326)
* [박정규 bagjunggyu 님의 블로그](http://bagjunggyu.blogspot.kr/) - 한글화 전문가
  - [Ubuntu 14.04 LTS 내게 맞게 설정하기](http://blog.daum.net/bagjunggyu/154)
* [HDD 추가하기 (Ubuntu 14.04 64bit)](http://whatwant.tistory.com/686)


### Information
* [How can I create an alias for cd and ls?](http://askubuntu.com/questions/16106/how-can-i-create-an-alias-for-cd-and-ls)
* [Installation/FromUSBStick](https://help.ubuntu.com/community/Installation/FromUSBStick)
* [Install Angry IP scanner in Ubuntu 14.04](http://www.sysads.co.uk/2014/07/install-angry-ip-scanner-in-ubuntu-14-04/)
* [Upstart Intro, Cookbook and Best Practises](http://upstart.ubuntu.com/cookbook/)


### Notebooks
* [5 of the Best Ubuntu Pre Installed Laptops in 2014](http://www.htpcbeginner.com/ubuntu-pre-installed-laptops-2014/)
* [DELL 래티튜드 3540 PRO (정품)](http://prod.danawa.com/info/?pcode=2882047&relationMenuType=koost)
* [iCOMS](http://icoms.kr/main/)
  - [HP 파빌리온 14-N266TX (500GB)](http://icoms.kr/product/productView.php?nProdCode=2506754#) - 62만원, 리눅스
* 한성컴퓨터 [A35X ForceRecon 3457S2](http://www.monsterlabs.co.kr/shop/product_detail.html?pd_no=12095) - 86만원, 79만원(현금)
  - [다나와 가격](http://prod.danawa.com/info/?pcode=2954742&keyword=A35X+ForceRecon+3457S2)
