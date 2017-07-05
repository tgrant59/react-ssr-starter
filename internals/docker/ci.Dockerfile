FROM ssr-base

# Install project dependencies and Build project
COPY . .
RUN yarn install
RUN yarn build
