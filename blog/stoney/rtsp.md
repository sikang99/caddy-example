# RTSP

## Reference
관계된 사이트들은 다음과 같다.

* [gortsp](https://github.com/lbl52001/gortsp) - 
RTSP server framework which migrate from net/http package
* [camrecord](https://github.com/optman/camrecord) - 
remote record ip-cam video into file through rtsp.
* [go-airplay](https://github.com/joelgibson/go-airplay) -
AirPlay Server

아래와 같이 하면 오류가 난다. iOS 환경을 기준으로 한 것 같다.
```
$ sudo apt-get install clang-3.5
$ ln -s /usr/bin/clang-3.5 /usr/bin/clang
$ cd $GOPATH/github.com/joelgibson/go-airplay
$ CC=clang go run serv.go
```

## Search
주기적으로 아래의 사이트들에서 확인해보록 하자.

* Go Search : http://go-search.org/search?q=rtsp

