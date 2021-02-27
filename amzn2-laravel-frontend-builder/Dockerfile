FROM amazonlinux:2

# refs https://docs.aws.amazon.com/ja_jp/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
# refs https://github.com/sogaoh/alw-provisioner/blob/main/roles/nvm/tasks/main.yml
RUN yum install -y tar gzip wget
RUN wget -P /tmp/ https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh
RUN bash /tmp/install.sh

ARG NODE_VERSION

RUN echo $NODE_VERSION

RUN nvm --version

#RUN nvm install ${NODE_VERSION}
