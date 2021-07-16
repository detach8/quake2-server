# Quake II Server in Docker

This creates a simple Quake II server based on the default/latest version of 
[Yamagi Quake II](https://www.yamagi.org/quake2/) available in Debian Buster.

## Setup/pre-requisites

1. Install [Docker](https://www.docker.com/)
2. Copy the `.pak` files from your own copy of the full version of Quake II to `baseq2/`
2. Create `baseq2/server.cfg` configuration file (a sample is provided)

## Starting in foreground (for testing/debugging)

	make run

## Starting in background

	make up

## Stopping container running in background

	make down

## Configuring

For more configuration, see:
https://github.com/yquake2/yquake2/blob/master/doc/040_cvarlist.md
