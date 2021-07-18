FROM rust:latest

ADD config /usr/local/cargo
ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y musl musl-tools postgresql
RUN rustup target add x86_64-unknown-linux-musl
