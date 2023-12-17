# [rust-bash](https://hub.docker.com/r/brienzb/rust-bash)
Custom image made to use Rust in a bash environment

## Pull image
> Docker image: `brienzb/rust-bash:{RUST_VERSION}`

```bash
docker pull brienzb/rust-bash:1.74
```

## Run docker
```bash
docker run --rm -it -v {RUST_PROJECTS_PATH}:/workspace/projects --name rust-bash brienzb/rust-bash:1.74
```
