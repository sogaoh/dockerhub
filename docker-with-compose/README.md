# sogaoh/docker-with-compose

CI、たとえば Bitbucket Pipeline で使う docker-compose 入りの container image base.


## Note

### 内包コマンド
- docker
- docker-compose
- bash
- make 
- jq 

### Versions
```
❯ docker run -it --rm sogaoh/docker-with-compose ash

/ # cat /etc/os-release
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.11.6
PRETTY_NAME="Alpine Linux v3.11"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://bugs.alpinelinux.org/"

/ # docker --version
Docker version 19.03.8, build afacb8b7f0

/ # docker-compose --version
docker-compose version 1.25.5, build unknown

/ # make --version
GNU Make 4.2.1
Built for x86_64-alpine-linux-musl
Copyright (C) 1988-2016 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # bash --version
GNU bash, version 5.0.11(1)-release (x86_64-alpine-linux-musl)
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # jq --version
jq-master-v20191114-85-g260888d269
```


### Reference
- [Bitbucket Pipelines で Docker コマンドを実行する - アトラシアン製品ドキュメント](https://ja.confluence.atlassian.com/bitbucket/run-docker-commands-in-bitbucket-pipelines-879254331.html)
- [Bitbucket PipelinesでDocker Composeプロジェクトをインテグレーションテストする | SEEDS Creators' Blog | 株式会社シーズ](https://www.seeds-std.co.jp/blog/creators/2019-09-30-103052/)
