rpmbuild-bp
===========

This repository provides docker images and utilities for
building Source RPMs (SRPMs).

How to use
----------

### How to build docker container

Run `make init` command. This make target will create `SRPMS`
and `SRPMS/pkg` directories, build docker containers which are
tagged `rpmbuild-bp:7` and `rpmbuild-bp:6`.

### How to get source tree from SRPM package file

Run following `make bp7` or `make bp6` command.

```
$ make bp7 PKG=<URL of SRPM Package>
$ make bp7 PKG=<File name of SRPM Package in SRPMS/pkg>
```

```
$ make bp6 PKG=<URL of SRPM Package>
$ make bp6 PKG=<File name of SRPM Package in SRPMS/pkg>
```

Example:

```
$ make bp7 PKG=http://vault.centos.org/7.4.1708/os/Source/SPackages/ElectricFence-2.2.2-39.el7.src.rpm
$ make bp6 PKG=nkf-2.0.8b-6.2.el6.src.rpm
```

Source tree will be created into `SRPMS` directory.
