# Development Instructions and Guidelines

## Getting Started

We use [Lando](https://lando.dev/) and [Docker](https://www.docker.com/) for local development. Both will need to be installed to run the IDMS stack locally.

COmanage requires building a local image before the main stack can be run:

```bash
services/comanage/docker-build/build-image.sh
```

Then you should be able to run the stack:

```bash
lando start
```

## Configuration

Lando is configured primarily through the [Landofile](../.lando.yml), which is based on Docker compose. For documentation, please see: [Landofile | Lando 3](https://docs.lando.dev/landofile/)

## Git

There are two principle branches:

- `main` -- The current version of the stack. This branch might be called `development` in other repositories. Feature branches should be created from and merged to `main`.
- `production` -- The current production version of the stack. Ideally this branch should only be updated by fast-forward merges from `main`.

Feature branches should be short-lived and merged frequently to `main`.

## Secrets, Environment Variables, and Testing

Ideally, no secrets and no real data should be necessary to run and test the stack locally. Environment variables should be included in the Landofile (not `.env` files) and any user accounts & data should be synthetic rather than imported from live services. When a bug is found on the live site, attempt to replicate it synthetically.
