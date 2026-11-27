KATZIERROR_REV = 33d6ef33307e81cff3ce78f9a43e9816d996cde6
KATZIERROR_URL = https://github.com/KatziIndustries/KatziError.git

.PHONY: all
.DELETE_ON_ERROR:
all: libkerror.so

libkerror.so: Makefile
	@set -eu; \
	build_dir=$$(mktemp -d); \
	trap 'rm -rf -- "$$build_dir"' EXIT; \
	git -C "$$build_dir" init -q; \
	git -C "$$build_dir" fetch -q --depth 1 "$(KATZIERROR_URL)" "$(KATZIERROR_REV)"; \
	git -C "$$build_dir" checkout -q --detach FETCH_HEAD; \
	flags=$$(pkg-config --cflags --libs wayland-client x11); \
	cd "$$build_dir"; \
	$(CC) -fPIC -shared -Wl,-z,defs -Iinclude -o libkerror.so \
		linux/main.c linux/x11.c linux/wayland.c linux/xdg-shell-protocol.c shared/message.c $$flags; \
	install -m 755 libkerror.so "$(abspath $@)"
