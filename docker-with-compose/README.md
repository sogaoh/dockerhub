# sogaoh/docker-with-compose

CI、たとえば Bitbucket Pipeline で使う docker-compose 入りの container image base.

## build command example

``` 
cd /path/to/docker-with-compose

docker build -t docker-with-compose:20-dind --build-arg COMPOSE_VERSION=v2.6.1 .
```


## Note

### 内包コマンド
- docker
- docker-compose
- bash
- make 
- jq 
- curl

### Versions
```
❯ docker run -it --rm sogaoh/docker-with-compose:20-dind ash

/ # cat /etc/os-release
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.16.0
PRETTY_NAME="Alpine Linux v3.16"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://gitlab.alpinelinux.org/alpine/aports/-/issues"

/ # docker --version
Docker version 20.10.17, build 100c701

/ # docker-compose --version
Docker Compose version v2.6.1

/ # make --version
GNU Make 4.3
Built for x86_64-alpine-linux-musl
Copyright (C) 1988-2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # bash --version
GNU bash, version 5.1.16(1)-release (x86_64-alpine-linux-musl)
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # jq --version
jq-master-v20220328-1108-g836ca403de

/ # curl --version
curl 7.83.1 (x86_64-alpine-linux-musl) libcurl/7.83.1 OpenSSL/1.1.1o zlib/1.2.12 brotli/1.0.9 nghttp2/1.47.0
Release-Date: 2022-05-11
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL TLS-SRP UnixSockets
/ #
```


### Reference
- [Bitbucket Pipelines で Docker コマンドを実行する - アトラシアン製品ドキュメント](https://ja.confluence.atlassian.com/bitbucket/run-docker-commands-in-bitbucket-pipelines-879254331.html)
- [Bitbucket PipelinesでDocker Composeプロジェクトをインテグレーションテストする | SEEDS Creators' Blog | 株式会社シーズ](https://www.seeds-std.co.jp/blog/creators/2019-09-30-103052/)
