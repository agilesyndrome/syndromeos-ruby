ci:
	docker build --build-arg rubyMajor=$(RUBY_MAJOR) --build-arg rubyMinor=$(RUBY_MINOR) --build-arg rubyPatch=$(RUBY_PATCH) -t docker.pkg.github.com/agilesyndrome/syndromeos-ruby/ruby:$(RUBY_MAJOR).$(RUBY_MINOR).$(RUBY_PATCH) .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-ruby/ruby:$(RUBY_MAJOR).$(RUBY_MINOR).$(RUBY_PATCH)
