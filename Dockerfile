# alexindigo/node-dev
FROM      alexindigo/base-dev
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Node version
ENV NODE_VERSION v0.10.29

# Pull latest node
RUN       wget --quiet http://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}.tar.gz && tar -xzf node-${NODE_VERSION}.tar.gz

# Install node
RUN       cd node-${NODE_VERSION} && ./configure && make && make install

# Cleanup
RUN       rm -rf "node-${NODE_VERSION}*"
