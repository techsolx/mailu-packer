YAML2JSON=./yaml2json.py
INPUT_FILE=./packer-config.yml
PACKER=packer

.PHONY: help
help: Makefile
		@sed -n 's/^##//p' $<

## validate	: validate the packer configuration
validate:
		cat $(INPUT_FILE) | $(YAML2JSON) | $(PACKER) validate -

## build		: build the packer configuration
build:
		cat $(INPUT_FILE) | $(YAML2JSON) | $(PACKER) build - | tee ./logs/packer_output.txt

## debug		: debug the packer configuration
debug:
		cat $(INPUT_FILE) | $(YAML2JSON) | $(PACKER) build -debug -
