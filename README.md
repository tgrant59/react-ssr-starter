# Mash Magazine

The online publication of Mash Magazine

## Documentation

- [**The Hitchhikers Guide to `mash`**](docs/general/introduction.md): An introduction for newcomers to this boilerplate.
- [Overview](docs/general): A short overview of the included tools
- [**Commands**](docs/general/commands.md): Getting the most out of this boilerplate
- [Testing](docs/testing): How to work with the built-in test harness
- [Styling](docs/css): How to work with the CSS tooling
- [Your app](docs/js): Supercharging your app with Routing, Redux, simple asynchronicity helpers, etc.
- [**Troubleshooting**](docs/general/gotchas.md): Solutions to common problems faced by developers.

## Setup

1. Install System Dependencies
  - [Homebrew](https://brew.sh)
  
  - Git
    ```bash
    brew install git
    ```

1. Clone the repo
  ```bash
  git clone https://github.com/tgrant59/mash.git
  cd mash
  ```
  
1. Run setup script
  ```bash
  ./internals/scripts/setup.sh
  ```

## Commands

- `yarn docker:build` - Build the docker images
- `yarn docker:start` - Start the hot-reloading server
- `yarn docker:connect` - Connect to the container
  - *Run these commands while inside the container*
  - `yarn test` - Run the entire test suite
  - `yarn test:watch` - Start the hot-reloading
  - `yarn lint` - Lint the code base
  - `yarn lint:fix` - Lint and autofix styling problems in the code base
  - `yarn generate` - Generate new components (also containers, routes, etc.) from templates
  - `yarn extract-intl` - Extract the internationalization messages to create transalations
  - `yarn analyze` - Generate stats on the Webpack build. Upload stats.json to the [Webpack build analyzer](https://webpack.github.io/analyse/)
- `yarn docker:destroy` - Destroy all docker containers, images, volumes, and networks
- `yarn open:coverage` - Open the coverage report generated by `yarn test` 
