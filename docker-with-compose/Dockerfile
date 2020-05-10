FROM docker:stable

# Add python pip and bash,make,jq
RUN apk add --no-cache py-pip \
    && apk add --no-cache python-dev libffi-dev openssl-dev gcc libc-dev \
    && apk add --no-cache bash make jq

# Install docker-compose via pip
RUN pip install --no-cache-dir docker-compose
