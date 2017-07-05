FROM ssr-base

# Install project dependencies and Build project
COPY . .
RUN yarn install
RUN yarn build

# Clean up
RUN rm -f /var/cache/apk/*
RUN rm -rf app internals node_modules

# Re-install the minimum required to run the server
RUN yarn install --production --ignore-scripts --offline
RUN yarn cache clean

EXPOSE 3000
CMD yarn start:production
