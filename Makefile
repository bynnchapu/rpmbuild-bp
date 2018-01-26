.PHONY: bp7 bp6
curdir = `pwd`
uid = `id -u`
gid = `id -g`

init: makedir build7 build6

makedir:
	mkdir -p SRPMS/pkg

build7: 7/Dockerfile 7/script/bp
	docker build -t rpmbuild-bp:7 ./7/
	utils/maketimestamp.sh $@

build6: 6/Dockerfile 6/script/bp
	docker build -t rpmbuild-bp:6 ./6/
	utils/maketimestamp.sh $@

build5: 5/Dockerfile
	docker build -t rpmbuild-bp:5 ./5/
	utils/maketimestamp.sh $@

bp7:
	docker run -v $(curdir)/SRPMS:/root/SRPMS -it rpmbuild-bp:7 bp $(PKG) $(uid) $(gid)

bp6:
	docker run -v $(curdir)/SRPMS:/root/SRPMS -it rpmbuild-bp:6 bp $(PKG) $(uid) $(gid)
