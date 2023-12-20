# [Rush](https://hub.docker.com/r/brienzb/rush) (rust + bash)
Custom image with **oh-my-bash** installed on **Rust** base image

## Pull image
> Docker image: `brienzb/rush:{RUST_VERSION}-{RUSH_IMAGE_VERSION}`

```bash
docker pull brienzb/rush:1.74-v1
```

## Run docker
```bash
docker run --rm -it -v {RUST_PROJECTS_PATH}:/workspace/projects --name rush brienzb/rush:1.74-v1
```