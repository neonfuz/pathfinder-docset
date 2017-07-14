
all: pathfinder.tgz

clean:
	rm pathfinder.tgz
	rm -r pathfinder.docset

# TODO add better selector for html files, etc
pathfinder.docset: dashing.json *.html
	~/.gopath/bin/dashing build

pathfinder.tgz: pathfinder.docset
	tar --exclude='.DS_Store' -cvzf pathfinder.tgz pathfinder.docset

.PHONY: all clean
