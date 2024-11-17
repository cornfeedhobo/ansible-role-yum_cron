.PHONY: help
help: ## Prints help for targets
	@cat $(MAKEFILE_LIST) | \
		grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: pipenv-sync
pipenv-sync: ## Run pipenv sync
	pipenv sync


.PHONY: pipenv-update
pipenv-update: ## Run pipenv update
	pipenv lock
	jq -r 'del(.default.selinux)' < Pipfile.lock > Pipfile.lock.new
	mv Pipfile.lock.new Pipfile.lock
	pipenv sync


.PHONY: generate-docs
docs: ## Run ansible-doctor
	pipenv run ansible-doctor ./
