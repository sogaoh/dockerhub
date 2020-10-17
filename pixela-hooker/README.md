# sogaoh/pixela-hooker

Alpine Linux に curl をインストールしただけの、webhook で API を リクエストする用の container image base.


## Note

### 内包コマンド
- curl

### Versions
```
❯ docker run -it --rm sogaoh/pixela-hooker ash

/ # cat /etc/os-release
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.11.6
PRETTY_NAME="Alpine Linux v3.11"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://bugs.alpinelinux.org/"

/ # curl --version
curl 7.67.0 (x86_64-alpine-linux-musl) libcurl/7.67.0 OpenSSL/1.1.1g zlib/1.2.11 nghttp2/1.40.0
Release-Date: 2019-11-06
Protocols: dict file ftp ftps gopher http https imap imaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: AsynchDNS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL TLS-SRP UnixSockets
```


### Reference
