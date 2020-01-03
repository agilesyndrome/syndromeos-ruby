docker:
	docker build -t agilesyndrome/$(SYNDROME_PROJECT):$(RUBY_VERSION) .

build: docker

clean:
	rm -rf built
	mkdir -p built

publish: clean
	docker push agilesyndrome/$(SYNDROME_PROJECT):$(RUBY_VERSION)	
