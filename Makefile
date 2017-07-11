
all: pathfinder.tgz

clean:
	rm pathfinder.tgz
	rm -r pathfinder.docset

pathfinder.docset: dashing.json
	~/.gopath/bin/dashing build

pathfinder.tgz: pathfinder.docset
	tar --exclude='.DS_Store' -cvzf pathfinder.tgz pathfinder.docset

.PHONY: all clean
