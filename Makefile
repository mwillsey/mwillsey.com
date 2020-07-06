# targets that aren't filenames
.PHONY: all clean deploy build serve

all: build

ZOLA=zola

build:
	$(ZOLA) build

# you can configure these at the shell, e.g.:
# SERVE_PORT=5001 make serve
SERVE_PORT ?= 5000

serve:
	$(ZOLA) serve --port $(SERVE_PORT)

RCLONE := rclone copy --progress --verbose
DEPLOY_PATH ?= fastmail:me.mwillsey.com/files/public/

deploy: build
	$(RCLONE) public/ $(DEPLOY_PATH)
