#!/bin/sh

# Docker Mirror
mkdir -p docker-mirror/linux/centos/7/x86_64/stable/repodata/
mkdir -p docker-mirror/linux/centos/7/x86_64/stable/Packages/
cd docker-mirror/linux/centos/7/x86_64/stable/repodata/
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/repomd.xml
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/27151177db68b47d024022599f6cdb8d0758feaefd8c65e43e8313af62eed131-filelists.xml.gz
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/2811439ca3c66a6cb946abe2a8e4cfea7f364e09ca9ab0f4ba10f2333b74b911-filelists.sqlite.bz2
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/65c4f66e2808d328890505c3c2f13bb35a96f457d1c21a6346191c4dc07e6080-updateinfo.xml.gz
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/83a7f2e6c4dffb21fe0cc818e572bb4bf2bbb8dbd860dad66179a8bbc06f64d9-other.xml.gz
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/b292d47325588b6eb4f589e04bbf0f95727fa1755d8fa65d6978e1294f11b167-primary.sqlite.bz2
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/c2d756b11328eaa080323355c4b1c1d9442bbe8798b183b79fa53841274f1633-other.sqlite.bz2
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/repodata/ff7792a80a96a8fd9eb9843f830bf7ffc031e67eef965d918f724f250b9e38bc-primary.xml.gz
cd ../Packages/
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-17.03.3.ce-1.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-selinux-17.03.3.ce-1.el7.noarch.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.06.3.ce-3.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.09.6-3.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-18.09.6-3.el7.x86_64.rpm
wget -c https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.5-3.1.el7.x86_64.rpm

# Kubernetes Mirror
KUBERNETES_VERSION=1.11.9
mkdir -p kubernetes-mirror/
cd kubernetes-mirror/$KUBERNETES_VERSION
wget -c https://site/kubelet-$KUBERNETES_VERSION
wget -c https://site/kubeadm-$KUBERNETES_VERSION
wget -c https://site/kubectl-$KUBERNETES_VERSION
cd ../..

# cfssl mirro
CFSSL_VERSION=R1.2
mkdir -p cfssl-mirror/$CFSSL_VERSION
cd cfssl-mirror/$CFSSL_VERSION
wget -c http://pkg.cfssl.org/$CFSSL_VERSION/cfssl_linux-amd64
wget -c http://pkg.cfssl.org/$CFSSL_VERSION/cfssljson_linux-amd64
wget -c http://pkg.cfssl.org/$CFSSL_VERSION/cfssl-certinfo_linux-amd64
cd ../..


ETCD_VERSION=v3.1.13
mkdir -p etcd-mirror/etc/$ETCD_VERSION
cd etcd-mirror/etc/$ETCD_VERSION
wget -c https://storage.googleapis.com/etcd/$ETCD_VERSION/etcd-$ETCD_VERSION-linux-amd64.tar.gz
cd ../..