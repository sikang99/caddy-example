.PHONEY: edit make usage

EDITOR=vi

all: usage

edit e:
	@echo ""
	@echo "make [rpc|http2|golang|docker|linux|ubuntu|readme]"
	@echo ""

rpc:
	$(EDITOR) rpc.md

linux:
	$(EDITOR) linux.md

ubuntu:
	$(EDITOR) ubuntu.md

http2:
	$(EDITOR) http2.md

readme md:
	$(EDITOR) README.md

# ---------------------------------------------------------------------------------
git:
	cd ../../ && \
	git add blog/stoney/*.md  && \
	git commit -m "modify blog data" && \
	git push -u https://github.com/sikang99/caddy-example master


make m:
	vi Makefile

usage:
	@echo ""
	@echo "make [edit|make]"
	@echo ""
