# Docker build overextended

Simple docker container to build [ox_inventory](https://github.com/overextended/ox_inventory), [ox_core](https://github.com/overextended/ox_core) and probably the other overextended source code too.

## Usage

Clone the ox_inventory branch you want to build. Open a Powershell, cmd, whatever. Navigate into the downloaded directory and within that directory into the `web` folder. Now run docker with the commands below.

## Powershell
```
docker run --rm -v ${PWD}:/build filiaes/build-overextended-src pnpm i
docker run --rm -v ${PWD}:/build filiaes/build-overextended-src pnpm build
```

## CMD
```
docker run --rm -v %cd%:/build filiaes/build-overextended-src pnpm i
docker run --rm -v %cd%:/build filiaes/build-overextended-src pnpm i && pnpm build
```

## sh/bash/..
I guess you will figure it out. Change the variable `${PWD}` of the example above to something that is working for you.

## Cleanup
Just in case it is needed - may not appear to you.

Noticed some permission issues deleting files created by docker. Probably needs some umask stuff I am to lazy to include yet. If you get a warning that the folder ox_inventory is missing or any other file skip that warning, do not cancel it, otherwise the files won't be deleted. If you still have permission issues you can delete the files created by the container with the container itself.

This command will delete files on YOUR system. Make sure you are in the correct directory!

```
docker run --rm -v ${PWD}:/build filiaes/build-overextended-src rm -rf ./*
```