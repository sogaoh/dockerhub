# sogaoh/cicd-base

CI/CD の土台に利用できる Docker image

- Amazon Linux 2 
- Ubuntu 20.04 (focal)
- Debian 11 (bullseye) (stable-slim)


## build command example

```bash 
cd /path/to/cicd-base
```

```bash
make build
```

### Makefile example

```Makefile

.PHONY:

help:
	cat Makefile

ORG := sogaoh
TAG := amzn2
DOCKERFILE := Dockerfile_amzn2
NVM_VERSION := v0.39.1
COMPOSE_VERSION := v2.6.1

build:
	docker build --no-cache -t cicd-base:$(TAG) --build-arg NVM_VERSION=$(NVM_VERSION) --build-arg COMPOSE_VERSION=$(COMPOSE_VERSION) -f ./$(DOCKERFILE) .
tag:
	docker tag cicd-base:$(TAG) $(ORG)/cicd-base:$(TAG)
push:
	docker push $(ORG)/cicd-base:$(TAG)

all: build tag push
```


## refs

- https://docs.aws.amazon.com/ja_jp/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
- https://github.com/nvm-sh/nvm
- https://github.com/docker/compose
- https://github.com/samtoi/amazonlinux-nvm/blob/master/Dockerfile
- https://docs.docker.com/compose/install/
- https://matsuand.github.io/docs.docker.jp.onthefly/engine/install/ubuntu/
- https://matsuand.github.io/docs.docker.jp.onthefly/engine/install/debian/
- https://northshorequantum.com/archives/dockerbuild_tz_hang.html
