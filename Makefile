curdir = `pwd`

build7: 7/Dockerfile
	docker build -t rpmbuild-bp:7 ./7/

bp7:
	docker run -v $(curdir)/SRPMS:/root/SRPMS -it rpmbuild-bp:7 bp $(PKG)
