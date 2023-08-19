default: docs

docs:
	$(MAKE) -C spec

clean:
	$(MAKE) -C spec clean
