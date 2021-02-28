FROM amazonlinux:2

# refs
# https://docs.aws.amazon.com/ja_jp/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
# https://github.com/nvm-sh/nvm
# https://github.com/samtoi/amazonlinux-nvm/blob/master/Dockerfile
# https://docs.docker.com/compose/install/


#################################################
# Install tools & nvm
#################################################
RUN yum -y update && \
    yum install -y git less tar gzip wget gcc make python3 unzip
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash


#################################################
# Setup Node.js (version your intend)
#################################################
ARG NODE_VERSION
#RUN echo $NODE_VERSION
RUN /bin/bash -c "source /root/.nvm/nvm.sh; nvm install ${NODE_VERSION}"

RUN { \
  echo 'export NVM_DIR=~/.nvm'; \
  echo '. ~/.nvm/nvm.sh'; \
  } > /root/.bashrc

CMD /bin/bash -c "source /root/.nvm/nvm.sh; nvm use ${NODE_VERSION}"


#################################################
# Install docker,docker-compose
#################################################
RUN amazon-linux-extras install docker -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


#################################################
# Install AWS CLI v2
#################################################
RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip \
    && unzip /tmp/awscliv2.zip -d /tmp \
    && /tmp/aws/install \
    && rm -f /tmp/awscliv2.zip \
    && rm -rf /tmp/aws
