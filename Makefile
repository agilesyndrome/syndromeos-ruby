RUBY_MAJOR=2
RUBY_MINOR=7
RUBY_PATCH=0
docker:
	docker build --build-arg rubyMajor=$(RUBY_MAJOR) --build-arg rubyMinor=$(RUBY_MINOR) --build-arg rubyPatch=$(RUBY_PATCH) -t agilesyndrome/$(SYNDROME_PROJECT):$(RUBY_MAJOR).$(RUBY_MINOR).$(RUBY_PATCH) .

build: docker

clean:
	rm -rf built
	mkdir -p built

publish: clean
	docker push agilesyndrome/$(SYNDROME_PROJECT):$(RUBY_VERSION)	
