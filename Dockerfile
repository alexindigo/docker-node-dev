# alexindigo/node-dev
FROM      alexindigo/base-dev
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Pull latest node
RUN       wget --quiet http://nodejs.org/dist/node-latest.tar.gz && tar -xzf node-latest.tar.gz

# Install node
RUN       cd "$(ls | grep node-v)" && ./configure && make && make install

# Cleanup
RUN       rm -rf node-*
