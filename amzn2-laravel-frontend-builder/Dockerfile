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
    yum install -y git less tar gzip wget gcc make python3
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash


#################################################
# Install php7.4,composer
#################################################
RUN amazon-linux-extras install php7.4 -y
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer \
    && ln -s /usr/local/bin/composer /usr/bin/composer


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
#RUN amazon-linux-extras install docker -y
#RUN curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
#    && chmod +x /usr/local/bin/docker-compose \
#    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
