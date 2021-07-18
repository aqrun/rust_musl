# Docker image rust-musl

## build

```shell
docker build -t rust-musl .
```

## Usage

```shell
docker run --name todos \
-v /Volumes/todos:/code \
rust-musl \
cd /code & cargo build --release --target=x86_64-unknown-linux-musl
```