CLAW_REV = 50ee792b65e671125f1190b978d1d9b14270012d
CLAW_URL = https://github.com/StonkDragon/claw-lang.git
CLAW_PATCH = patches/claw-ffi-returns.patch

.PHONY: all arcade
.DELETE_ON_ERROR:
all: claw-cli

arcade: claw-cli
	$(MAKE) -C krebs-arcade

claw-cli: Makefile $(CLAW_PATCH)
	@set -eu; \
	build_dir=$$(mktemp -d); \
	trap 'rm -rf -- "$$build_dir"' EXIT; \
	git -C "$$build_dir" init -q; \
	git -C "$$build_dir" fetch -q --depth 1 "$(CLAW_URL)" "$(CLAW_REV)"; \
	git -C "$$build_dir" checkout -q --detach FETCH_HEAD; \
	git -C "$$build_dir" apply "$(abspath $(CLAW_PATCH))"; \
	$(MAKE) -C "$$build_dir" CC="$(CC)"; \
	install -m 755 "$$build_dir/claw-cli" "$@"
