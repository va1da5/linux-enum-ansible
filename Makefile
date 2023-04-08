.PHONY: help
help:
	@cat ./Makefile | grep -Ev ".PHONY"


.PHONY: up
up:
	vagrant up

.PHONY: down
down:
	vagrant destroy -f

.PHONY: enum
enum:
	source ./.venv/bin/activate && ansible-playbook enum.yml


.PHONY: clean
clean:
	rm -rf reports