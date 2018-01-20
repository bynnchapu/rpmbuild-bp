curdir = `pwd`

makedir:
	mkdir -p SRPMS/pkg

build7: 7/Dockerfile 7/script/bp
	docker build -t rpmbuild-bp:7 ./7/

bp7:
	docker run -v $(curdir)/SRPMS:/root/SRPMS -it rpmbuild-bp:7 bp $(PKG)
