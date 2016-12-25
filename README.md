# Jekyll-dev

This docker image helps you do local development / testing of Jekyll.

## New Jekyll Site

To start a new Jekyll site, lets call it `example`, run the following commands:

```bash
mkdir example
cd example
docker run -it -v `pwd`:/usr/app/src jekyll-dev new
```

## Development

As you write content, to preview it locally, you can use Jekyll's built-in server:

```bash
docker run -it -v `pwd`:/usr/app/src -p 4000:4000 jekyll-dev serve
```

## Build

To build your Jekyll site, run the following command:

```bash
docker run -it -v `pwd`:/usr/app/src jekyll-dev build
```

## Bash

To drop into a bash shell inside your docker container:

```bash
docker run -it -v `pwd`:/usr/app/src jekyll-dev sh
```

## Ahoy

If it is getting hard to type the long docker commands above, there is an easier way.
Install [Ahoy](https://github.com/ahoy-cli/ahoy/releases/tag/1.1.0) and copy the .ahoy.yml to your `example` folder:

```
mkdir example
cd example
wget https://github.com/msound/jekyll-dev/blob/master/.ahoy.yml
ahoy serve
```

You can also run `ahoy new`, `ahoy build` and `ahoy sh`.
