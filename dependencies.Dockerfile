# This is a renovate-friendly source of Docker images.
FROM busybox:musl@sha256:ea2b9914a16a4ac1981994af97b318f7c7d4db76b580c56177f08bf76f4a0be8 AS busybox-musl
FROM davidanson/markdownlint-cli2:v0.23.3@sha256:d5f3f3f04b2e285dcbcdcd13b4454d119e273e3c393a9dabd163dba4abad526d AS markdown
FROM gradle:9.8.0-jdk21-noble@sha256:4ba56abe003e8c82a15bb9af9ff31ea094de90686a7b3d4ba9c0ffa31838c12e AS gradle-java
FROM ghcr.io/astral-sh/uv:python3.9-trixie-slim@sha256:65e0c79f599008379c711710e061f113d4635d78153a3d9fef912ac722e11732 AS python39
FROM ghcr.io/astral-sh/uv:python3.14-trixie-slim@sha256:8f4ab6a0f2cc074290ba6a136eb016350b2b6b93a2108e07b72724901ad1914f AS python314
FROM golang:1.27.1@sha256:e0174e51e81218523251d85d248a90d24c3d5e81543b4f07a5d66229397db190 AS golang
FROM otel/weaver:v0.26.1@sha256:9094862c0ab261bdbcb079bb981f9a573b3659b130a6d2ab8616eca6ba37aaec AS weaver
