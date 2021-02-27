# sogaoh/amzn2-laravel-frontend-builder

Amazon Linux2 ベースで Laravel アプリケーションのフロントエンドビルド（npm run [dev|production] 相当）を行うときに利用できる Docker image


## build command example

``` 
cd /path/to/amzn2-laravel-frontend-builder

docker build -t amzn2-laravel-frontend-builder:latest --build-arg NODE_VERSION=v14.15.4 .
```
