.PHONY: all
all: test-update test

.PHONY: test
test:
	@./tests/run-tests.sh

.PHONY: test-update
test-update:
	@./tests/update.sh

.PHONY: update
update:
	@./scripts/update-release.sh asdf
