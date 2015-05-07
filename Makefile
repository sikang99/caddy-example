.PHONY: all edit run test kill caddy make usage

PORT=8090
URL=http://localhost:$(PORT)

all: usage

edit e:
	vi index.html

run r:
	caddy -conf="Caddyfile" &
	tail -f log/access.log

test t:
	@echo ""
	@echo "make [t1|t2|t3]"
	@echo "  - t1, t2 : using curl"
	@echo "  - t3     : using h2spec"
	@echo ""

t1:
	curl -v $(URL)

t2:
	curl -v -XPOST $(URL) --http2

t3:
	h2spec -p $(PORT)

t4:
	http2check $(URL)

bench b:
	wrk -c 10 -t 5 $(URL)

view v:
	xdg-open $(URL)/blog


search s:
	hub-search --lang=go http/2

docker d:
	docker run --rm -it -p 2015:2015 darron/caddy
	#docker run --rm -it -p 2015:2015 darron/caddy caddy

kill k:
	killall caddy

readme md:
	vi README.md

caddy c:
	vi Caddyfile

make m:
	vi Makefile

git-init:
	git init
	git add README.md
	git -m "first commit"
	git remote add origin https://github.com/sikang99/caddy-example.git
	git push -u origin master

git-push gp:
	git init
	git add README.md Caddyfile Makefile index.html image/ blog/
	git commit -m "add data files"
	git push -u https://sikang99@github.com/sikang99/caddy-example master

usage:
	@echo ""
	@echo "make [edit|run|test|kill|caddy|make|git-push]"
	@echo ""

