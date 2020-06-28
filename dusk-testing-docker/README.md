# sogaoh/dusk-testing-docker

Laravel Dusk を利用したブラウザテストをCI、たとえば Bitbucket Pipeline で実行するのに使う docker-compose 入りの container image base.


## Note

### 内包コマンド
- docker
- docker-compose
- bash
- make 
- jq 
- node
- npm 

### Versions
```
❯ docker run -it --rm sogaoh/dusk-testing-docker ash

/ # cat /etc/os-release
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.12.0
PRETTY_NAME="Alpine Linux v3.12"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://bugs.alpinelinux.org/"

/ # docker --version
Docker version 19.03.12, build 48a66213fe

/ # docker-compose --version
docker-compose version 1.26.0, build unknown

/ # make --version
GNU Make 4.3
Built for x86_64-alpine-linux-musl
Copyright (C) 1988-2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # bash --version
GNU bash, version 5.0.17(1)-release (x86_64-alpine-linux-musl)
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

/ # jq --version
jq-master-v20200428-28-g864c859e9d

/ # node --version
v12.17.0

/ # npm --version
6.14.4
```


### Reference
