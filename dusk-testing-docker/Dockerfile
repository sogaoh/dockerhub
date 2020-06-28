FROM docker:stable

# Install fonts
RUN apk add --no-cache curl fontconfig font-noto-cjk \
  && fc-cache -fv

# Add python pip and bash , node npm
RUN apk add --no-cache py-pip \
    && apk add --no-cache python3-dev libffi-dev openssl-dev gcc libc-dev make jq \
    && apk add --no-cache bash nodejs nodejs-npm

# Install docker-compose via pip
RUN pip install --no-cache-dir docker-compose
