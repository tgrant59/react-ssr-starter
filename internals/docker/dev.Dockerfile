FROM ssr-base

# Install system dependencies
RUN apk add --no-cache \
  bash=4.3.48-r1

# Install project dependencies
COPY package.json yarn.lock ./
COPY internals ./internals/
RUN yarn install && yarn cache clean

# Copy project
COPY . .

EXPOSE 3000
CMD yarn start
