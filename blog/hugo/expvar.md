+++
Categories = ["Development", "GoLang"]
Description = "expvar"
Tags = ["Development", "golang"]
date = "2015-02-27T23:43:16+09:00"
menu = "main"
title = "expvar package"

+++
expvar
-
[expvar](http://golang.org/pkg/expvar/) 패키지는 http로 서버의 상태를 알수 있도록 
상태변수를 손쉽게 정의하고 사용할 수 있도록 해주는 패키지이다.
결과는 JSON 형식으로 보여준다.

```
$ curl http://localhost:8080/debug/vars | python -m json.tool
```

아래의 샘플소스들은 다 돌려보고 기본을 이해할 필요가 있다.
https://bitbucket.org/tebeka/go-wise/src


아래는 hugo 사용을 편하게 하기 위한 만든 Makefile이다.
```
# Makefile for hugo operation`

run r:
	hugo server -w

config c:
	vi config.toml

new n:
	hugo new post/new.md
	vi content/post/new.md

view v:
	xdg-open http://localhost:1313

make m:
	vi Makefile
```


