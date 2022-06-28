FROM docker:20-dind

# Add python pip and bash,make,jq
RUN apk add --no-cache py-pip \
    && apk add --no-cache python3-dev libffi-dev openssl-dev gcc libc-dev \
    && apk add --no-cache bash make jq curl git tar

# Install docker-compose 
ARG COMPOSE_VERSION
RUN curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
