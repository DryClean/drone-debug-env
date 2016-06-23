FROM alpine:3.3

RUN apk update && \
  apk add \
    ca-certificates \
    git \
    nodejs && \
    rm -rf \
    /var/cache/apk/*

# Create app directory
RUN mkdir /debug
WORKDIR /debug

# Install app dependencies
# ADD package.json /debug/
# RUN npm install --unsafe-perm

# Bundle app source
COPY . /debug

ENTRYPOINT ["node", "/debug/print-drone-env.js"]