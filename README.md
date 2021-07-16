# Quake II Server in Docker

This creates a simple Quake II server based on the default/latest version of 
Yamagi Quake II in Debian Buster.

## Setup/pre-requisites

1. Install Docker
2. Copy the `.pak` files from your own copy of the full version of Quake II to `baseq2/`
2. Create `baseq2/server.cfg` configuration file (a sample is provided)

## Starting in foreground (for testing/debugging)

	make run

## Starting in background

	make up

## Stopping container running in background

	make down
