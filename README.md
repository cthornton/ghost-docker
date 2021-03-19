Ghost on Docker + Digital Ocean Apps
====================================
This is what I use to get a personal repo working on Docker + [Digital Ocean Apps](https://www.digitalocean.com/products/app-platform/).
Combined with a [managed database](https://www.digitalocean.com/products/managed-databases/) and [spaces](https://www.digitalocean.com/products/spaces/),
this setup costs me $25/mo - and I don't have to worry about backups, security updates, ssl certificates, and so on.

This could also work outside of Digital Ocean apps.

## Running Locally

### Without Docker
You can run this app locally without docker with the `run.sh` command:

```bash
ENV=development ./run.sh
```

This assumes you have a local MySQL 8 server running with a user named `legacyroot`
that uses the legacy MySQL native password authorization. See `local_migration_workaround/local-ghost.sql`
for some sql snippets on how to set this up

### With Docker
You can build and run this docker container like any normal docker setup.

This repo has some scripts provided to make this simpelr:

```bash
tools/local-docker-build.sh
tools/local-docker-run.sh
```

**Caveat**: I haven't gotten this working locally with docker + MySQL (i.e. using docker compose). So if you're going
to run this locally, you may need to modify the docker config to use an sqlite3 database.

## In Production with Digital Ocean Apps
This repo is designed to work with [Digital Ocean Apps](https://www.digitalocean.com/products/app-platform/). You should
be able to simply fork this repo, add your own touches to it, and create a new digital ocean app with your forked repo.

The only remaining tasks are adding a **managed database** and setting up **spaces** (i.e. image uploads). Since Docker
containers will get nuked on every deploy, you have to set up your blog such that it doesn't rely on TODO FIGURE THIS OUT

Secret key management is done locally with