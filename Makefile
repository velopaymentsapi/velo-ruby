.DEFAULT_GOAL := help

.PHONY: help
help: ## Display this help section
	@echo ""
	@echo "\033[0;34m    Velo Payments - Ruby Client (\033[1;34mvelopaymentsapi/velo-ruby\033[0;34m) \033[0m"
	@echo ""
	@echo "    To dynamically generate the Ruby client based on a spec issue the following command."
	@echo "    You can specify the spec by replacing the url parameter"
	@echo ""
	@echo "\033[92m    make client WORKING_SPEC=https://raw.githubusercontent.com/velopaymentsapi/VeloOpenApi/master/spec/openapi.yaml \033[0m"
	@echo ""
	@echo "     *** Available Targets ***"
	@echo ""
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "    \033[36m%-38s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo ""

version: ## Parse (via docker) spec file passed in WORKING_SPEC variable to print the version
	@docker run -i --rm mikefarah/yq:3 sh -c "apk -q add curl && curl -s $$WORKING_SPEC -o /tmp/oa3.yaml;  yq r /tmp/oa3.yaml info.version" 2>&1

oa3config: ## Set version on the openapi generator config to value of the VERSION variable
	@sed -i.bak 's/"gemVersion": ".*"/"gemVersion": "${VERSION}"/g' oa3-config.json && rm oa3-config.json.bak

clean: ## Remove files & directories that are auto created by generator cli
	rm -Rf lib
	rm -Rf docs
	rm -Rf spec
	rm -f .rspec
	rm -f README.md
	rm -Rf .rubocop.yml
	rm -f Gemfile
	rm -f Gemfile.lock
	rm -f Rakefile
	rm -f *.gemspec
	rm -f velopayments-*.gem

generate: ## Run (via docker) generator cli against a spec file passed in WORKING_SPEC variable to create files
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i $$WORKING_SPEC \
		-g ruby \
		-o /local \
		--global-property=skipFormModel=false \
		-c /local/oa3-config.json

trim: ## Remove unused files that are auto geneated
	- rm -Rf .openapi-generator
	- rm .openapi-generator-ignore
	- rm .travis.yml
	- rm git_push.sh

adjustments: ## Update the auto generated README.md with Velo info
	sed -i.bak '1s/.*/# Ruby client for Velo/' README.md && rm README.md.bak
	sed -i.bak '2s/.*/[![License](https:\/\/img.shields.io\/badge\/License-Apache%202.0-blue.svg)](https:\/\/opensource.org\/licenses\/Apache-2.0) [![npm version](https:\/\/badge.fury.io\/rb\/velopayments.svg)](https:\/\/badge.fury.io\/rb\/velopayments) [![CircleCI](https:\/\/circleci.com\/gh\/velopaymentsapi\/velo-ruby.svg?style=svg)](https:\/\/circleci.com\/gh\/velopaymentsapi\/velo-ruby)\\/' README.md && rm README.md.bak
	
rcnaming: ## 
	$(eval RC_REVISION="$(shell make WORKING_SPEC=${WORKING_SPEC} version)")
	@echo "${RC_REVISION}.beta${RC_BUILD}"

client: clean generate trim adjustments build_client ## Generate sdk via cli

tests: ## Run (via docker) tests using supplied variables KEY, SECRET, PAYOR, APIURL
	rm -Rf spec/models 
	cp -Rf specs/ spec/
	docker build -t=velo-sdk-ruby-tests .
	docker run -t -v $(PWD):/myapp -e KEY=${KEY} -e SECRET=${SECRET} -e PAYOR=${PAYOR} -e APIURL=${APIURL} -e APITOKEN="" velo-sdk-ruby-tests bundle exec rspec
