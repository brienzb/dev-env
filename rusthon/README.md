# [Rusthon](https://hub.docker.com/r/brienzb/rusthon) (Rust + pyenv)
Custom image with **pyenv** installed on **[Rush](https://hub.docker.com/r/brienzb/rush)**

## Pull image
> Docker image: `brienzb/rusthon:{RUST_VERSION}-{RUSTHON_IMAGE_VERSION}`

```bash
docker pull brienzb/rusthon:1.74-v1
```

## Run docker
```bash
docker run --rm -it -v {RUST_PROJECTS_PATH}:/workspace/projects --name rusthon brienzb/rusthon:1.74-v1
```