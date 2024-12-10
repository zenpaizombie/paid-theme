 Local Development
Pterodactyl is now powered by React, Typescript, and Tailwindcss using webpack at its core t>
Release versions of Pterodactyl will include pre-compiled, minified, and hashed assets ready>
However, if you are interested in running custom themes or making modifications to the React>
system in place to generate these compiled assets. To get your environment setup you'll need>
* [Node.js](https://nodejs.org/en/) v14.x.x
* [Yarn](https://classic.yarnpkg.com/lang/en/) v1.x.x
* [Go](https://golang.org/) 1.17.x
### Install Dependencies
```bash
yarn install
```
The command above will download all of the dependencies necessary to get Pterodactyl assets >
simple as running the command below to generate assets while you're developing. Until you've>
once you'll likely see a 500 error on your Panel about a missing `manifest.json` file. This >
below.
```bash
# Build the compiled set of assets for development.
yarn run build

# Build the assets automatically as they are changed. This allows you to refresh
# the page and see the changes immediately.
yarn run watch
```
### Hot Module Reloading
For more advanced users, we also support 'Hot Module Reloading', allowing you to quickly see>
to the Vue template files without having to reload the page you're on. To Get started with t>
to run the command below.
```bash
PUBLIC_PATH=http://192.168.1.1:8080 yarn run serve --host 192.168.1.1
```
There are two _very important_ parts of this command to take note of and change for your spe>
is the `--host` flag, which is required and should point to the machine where the `webpack-s>
The second is the `PUBLIC_PATH` environment variable which is the URL pointing to the HMR se>
the asset URLs used in Pterodactyl.
#### Development Environment
If you're using the [`pterodactyl/development`](https://github.com/pterodactyl/development) >
highly recommended, you can just run `yarn run serve` to run the HMR server, no additional c>
### Building for Production
Once you have your files squared away and ready for the live server, you'll be needing to ge>
and hashed assets to push live. To do so, run the command below:
```bash
yarn run build:production
```
This will generate a production JS bundle and associated assets, all located in `public/asse>
be uploaded to your server or CDN for clients to use.
### Running Wings
To run `wings` in development all you need to do is set up the configuration file as normal >
then you can build and run a local version of Wings by executing `make debug` in the Wings c>
be run on a Linux VM of some sort, you cannot run this locally on macOS or Windows.
