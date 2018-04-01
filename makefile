
assert-command-present = $(if $(shell which $1),,$(error '$1' missing and needed for this build))

$(call assert-command-present,hugo)
$(call assert-command-present,tar)

.DEFAULT_GOAL = build

public/*.html: content/*/*.md
	echo "Building pages"
	@hugo --quiet

content/*/*.md:
	@echo "Detected change on md files"

blag.tar.gz: public/*.html
	echo "Tarring"
	tar -zcvf blag.tar.gz public/

.PHONY=build
build: blag.tar.gz

.PHONY=deploy
deploy: build
	@echo "Deploying!"

.PHONY=clean
clean:
	@touch blag.tar.gz
	@rm blag.tar.gz