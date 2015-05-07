.PHONY: all edit run test kill caddy make usage

all: usage

edit e:
	vi index.html

run r:
	caddy -conf="Caddyfile"

test t:
	caddy -conf="Caddyfile" &
	#curl http://localhost:8090 --http2
	curl -v http://localhost:8090

bench b:
	wrk http://localhost:8090

view v:
	xdg-open http://localhost:8090/blog

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

