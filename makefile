setup:
	mkdir -p $(GOPATH)/src/github.com/jBugman
	ln -s `pwd` $(GOPATH)/src/github.com/jBugman/gomobile-test

build:
	gomobile bind -a -target=ios github.com/jBugman/gomobile-test/server
