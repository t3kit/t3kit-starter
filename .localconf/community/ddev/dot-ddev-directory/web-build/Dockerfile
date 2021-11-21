ARG BASE_IMAGE
FROM $BASE_IMAGE

ENV NVM_DIR=/usr/local/nvm
ENV NVM_VERSION=v0.39.0
ENV NODE_DEFAULT_VERSION=v16.13.0

RUN curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh -o install_nvm.sh
RUN mkdir -p $NVM_DIR && bash install_nvm.sh
RUN echo "source $NVM_DIR/nvm.sh" >>/etc/profile
RUN bash -ic "nvm install $NODE_DEFAULT_VERSION && nvm use $NODE_DEFAULT_VERSION"
RUN chmod -R ugo+w $NVM_DIR

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y g++ python build-essential
RUN npm install -g npm@^8
