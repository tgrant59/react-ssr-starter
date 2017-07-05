FROM ssr-base

# Make sure artifact directoies exist
RUN mkdir -p artifacts/test_results/jest
RUN mkdir -p artifacts/test_results/eslint
RUN mkdir -p artifacts/test_results/stylelint

# Install project dependencies and Build project
COPY . .
RUN yarn install
RUN yarn build
