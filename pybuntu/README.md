# [Pybuntu](https://hub.docker.com/r/brienzb/pybuntu) (Python(pyenv) + ubuntu)
Custom image with **Python(pyenv)** installed on **Ubuntu** base image
- Default python version: 3.10.13

## Pull image
> Docker image: `brienzb/pybuntu:{UBUNTU_VERSION}-{PYBUNTU_IMAGE_VERSION}`

```bash
docker pull brienzb/pybuntu:20.04-v1
```

## Run docker
```bash
docker run --rm -it -v {PYTHON_PROJECTS_PATH}:/workspace/projects --name pybuntu brienzb/pybuntu:20.04-v1
```