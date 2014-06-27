# alexindigo/node-dev
FROM      alexindigo/base-dev:ubuntu_12.04-1
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Node version
ENV       NODE_VERSION v0.10.29

# Pull specified node
RUN       curl -L -s http://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}.tar.gz -o node-${NODE_VERSION}.tar.gz && \
          tar -xzf node-${NODE_VERSION}.tar.gz

# Install node
RUN       cd node-${NODE_VERSION} && ./configure && make && make install

# Cleanup
RUN       rm -rf node-${NODE_VERSION}*
