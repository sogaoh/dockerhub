FROM amazonlinux:2

# refs https://docs.aws.amazon.com/ja_jp/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
RUN yum install -y tar gzip
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN . ~/.nvm/nvm.sh

ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION}

RUN nvm install ${NODE_VERSION}
