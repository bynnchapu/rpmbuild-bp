rpmbuild-bp
===========

This repository provides docker images and utilities for
building Source RPMs (SRPMs).

_Currentry, this repository provides docker and utility for
CentOS 7._

How to use
----------

### How to build docker container

Run `make init` command. This make target will create `SRPMS`
and `SRPMS/pkg` directories, build docker container which is
tagged `rpmbuild-bp:7`.

### How to get source tree from SRPM package file

Run following `make bp7` command.

```
$ make bp7 PKG=<URL of SRPM Package>
$ make bp7 PKG=<File name of SRPM Package in SRPMS/pkg>
```

Example:

```
$ make bp7 PKG=http://vault.centos.org/7.4.1708/os/Source/SPackages/ElectricFence-2.2.2-39.el7.src.rpm
$ make bp7 PKG=automake-1.13.4-3.el7.src.rpm
```

Source tree will be created into `SRPMS` directory.
