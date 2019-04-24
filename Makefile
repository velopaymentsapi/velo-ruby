help:
	@echo ""
	@echo "\033[0;34m    Velo Payments - Ruby Client (\033[1;34mvelopaymentsapi/velo-ruby\033[0;34m) \033[0m"
	@echo ""
	@echo "    To dynamically generate the Ruby client based on a spec issue the following command."
	@echo "    You can specify the spec by replacing the url parameter"
	@echo ""
	@echo "\033[92m    make WORKING_SPEC=https://raw.githubusercontent.com/velopaymentsapi/VeloOpenApi/master/spec/openapi.yaml client \033[0m"
	@echo ""

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

ruby-client:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i $$WORKING_SPEC \
		-g ruby \
		-o /local \
		-c /local/oa3-config.json

trim:
	rm -Rf .openapi-generator
	rm .openapi-generator-ignore
	rm .travis.yml
	rm git_push.sh

info:
	sed -i.bak '1s/.*/# Ruby client for Velo/' README.md && rm README.md.bak
	
client: clean ruby-client trim info