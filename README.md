# augmented jupyter notebook

## Basic usage

```sh
docker run -it --rm -p 8888:8888 -e JUPYTER_TOKEN=password buarki/augmented-jupyter-notebook
```

Then you can open `http://localhost:8888/` on a browser and it'll ask you for a token or password. If you just ran above command you can pass `password` as param.

## Build and running locally

You can build and run image locally using. One simple way is using the available commands on Makefile. To build the image you can run:

```sh
make build
```

To run with docker-compose you can:

```sh
make run_with_docker_compose
```

## Base image
The base image docs can be found at [jupyter-docker-stacks](https://github.com/Paperspace/jupyter-docker-stacks/blob/master/base-notebook/README.md), base base image is sourced from [jupyter dockerhub](https://hub.docker.com/r/jupyter/base-notebook/tags).
