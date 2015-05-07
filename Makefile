.PHONY: all edit run test kill caddy make usage

REPO=caddy-example
PORT=8090
URL=https://localhost:$(PORT)

all: usage

edit e:
	vi index.html

run r:
	caddy -conf="Caddyfile" &
	@tail -f log/access.log

test t:
	@echo ""
	@echo "make [t1|t2|t3|t4]"
	@echo "  - t1, t2 : using curl"
	@echo "  - t3     : using h2spec"
	@echo "  - t4     : using http2check"
	@echo ""

t1:
	#curl -v $(URL)
	curl -v --insecure $(URL)

t2:
	#curl -v -XPOST $(URL) --http2
	curl -v --insecure -XPOST $(URL) --http2

t3:
	h2spec -p $(PORT)

t4:
	http2check $(URL)/README.md

bench b:
	wrk -c 10 -t 5 $(URL)

view v:
	#xdg-open $(URL)/blog
	#chromium-browser --disable-web-security $(URL)/blog
	chromium-browser --allow-running-insecure-content $(URL)/blog


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

# ----------------------------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make git-[init|push]"
	@echo "   - git-init(gi) : init repo in github.com"
	@echo "   - git-push(gp) : push upload to github.com"
	@echo ""

git-init gi:
	git init
	git add README.md
	git -m "first commit"
	git remote add origin https://github.com/sikang99/$(REPO).git
	git push -u origin master

git-push gp:
	git init
	git add README.md Caddyfile Makefile index.html image/ blog/
	git commit -m "add data files"
	git push -u https://sikang99@github.com/sikang99/$(REPO) master

gencert:
	openssl req -x509 -newkey rsa:4096 -keyout sec/key.pem -out sec/cert.pem -days 9999 -nodes

# ----------------------------------------------------------------------------------------------
usage:
	@echo ""
	@echo "make [edit|run|test|kill|caddy|make|git]"
	@echo ""

