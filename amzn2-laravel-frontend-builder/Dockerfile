FROM amazonlinux:2

# refs
# https://docs.aws.amazon.com/ja_jp/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
# https://github.com/nvm-sh/nvm
# https://github.com/samtoi/amazonlinux-nvm/blob/master/Dockerfile
# https://docs.docker.com/compose/install/


##############################################3
# Install tools & nvm
##############################################3
RUN yum -y update && \
    yum install -y git less tar gzip wget gcc make python3
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash


##############################################3
# Setup Node.js (version your intend)
##############################################3
ARG NODE_VERSION
#RUN echo $NODE_VERSION
RUN /bin/bash -c "source /root/.nvm/nvm.sh; nvm install ${NODE_VERSION}"

RUN { \
  echo 'export NVM_DIR=~/.nvm'; \
  echo '. ~/.nvm/nvm.sh'; \
  } > /root/.bashrc

CMD /bin/bash -c "source /root/.nvm/nvm.sh; nvm use ${NODE_VERSION}"


##############################################3
# Install docker,docker-compose
##############################################3
RUN amazon-linux-extras install docker -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
