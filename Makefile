help:
	@echo ""
	@echo "\033[0;34m    Velo Payments - Ruby Client (\033[1;34mvelopaymentsapi/velo-ruby\033[0;34m) \033[0m"
	@echo ""
	@echo "    To dynamically generate the Ruby client based on a spec issue the following command."
	@echo "    You can specify the spec by replacing the url parameter"
	@echo ""
	@echo "\033[92m    make WORKING_SPEC=https://raw.githubusercontent.com/velopaymentsapi/VeloOpenApi/master/spec/openapi.yaml client \033[0m"
	@echo ""

version:
	@docker run -i --rm mikefarah/yq sh -c "apk -q add curl && curl -s $$WORKING_SPEC -o /tmp/oa3.yaml;  yq r /tmp/oa3.yaml info.version" 2>&1

oa3config:
	sed -i.bak 's/"gemVersion": ".*"/"gemVersion": "${VERSION}"/g' oa3-config.json && rm oa3-config.json.bak

clean:
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

generate:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i $$WORKING_SPEC \
		-g ruby \
		-o /local \
		-c /local/oa3-config.json

trim:
	- rm -Rf .openapi-generator
	- rm .openapi-generator-ignore
	- rm .travis.yml
	- rm git_push.sh

info:
	sed -i.bak '1s/.*/# Ruby client for Velo/' README.md && rm README.md.bak
	sed -i.bak '2s/.*/[![License](https:\/\/img.shields.io\/badge\/License-Apache%202.0-blue.svg)](https:\/\/opensource.org\/licenses\/Apache-2.0) [![npm version](https:\/\/badge.fury.io\/rb\/velopayments.svg)](https:\/\/badge.fury.io\/rb\/velopayments) [![CircleCI](https:\/\/circleci.com\/gh\/velopaymentsapi\/velo-ruby.svg?style=svg)](https:\/\/circleci.com\/gh\/velopaymentsapi\/velo-ruby)\\/' README.md && rm README.md.bak
	sed -i.bak "14s/.*/require 'velopayments\/models\/paged_response'/" lib/velopayments/models/get_fundings_response.rb  && rm lib/velopayments/models/get_fundings_response.rb.bak

build_client:
	#

client: clean generate trim info build_client

tests:
	cp -Rf specs/ spec/
	docker build -t=client-ruby-tests .
	docker run -v $(PWD):/myapp -e KEY=${KEY} -e SECRET=${SECRET} -e PAYOR=${PAYOR} client-ruby-tests bundle exec rspec

commit:
	git add --all
	git commit -am 'bump version to ${VERSION}'
	git push --set-upstream origin master

build:
	sed -i.bak "s/VERSION = '.*'/VERSION = '${VERSION}'/g" lib/velopayments/version.rb && rm lib/velopayments/version.rb.bak
	gem build velopayments.gemspec

publish:
	git tag $(VERSION)
	git push origin tag $(VERSION)
	gem push velopayments-$(VERSION).gem