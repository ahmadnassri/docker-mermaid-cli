# Mermaid CLI Container

[![][lint-badge]][lint-link]
[![][release-badge]][release-link]
[![][publish-badge]][publish-link]

[lint-badge]: https://github.com/ahmadnassri/docker-mermaid-cli/workflows/lint/badge.svg
[lint-link]: https://github.com/ahmadnassri/docker-mermaid-cli/actions?query=workflow:lint
[release-badge]: https://github.com/ahmadnassri/docker-mermaid-cli/workflows/release/badge.svg
[release-link]: https://github.com/ahmadnassri/docker-mermaid-cli/actions?query=workflow:release
[publish-badge]: https://github.com/ahmadnassri/docker-mermaid-cli/workflows/publish/badge.svg
[publish-link]: https://github.com/ahmadnassri/docker-mermaid-cli/actions?query=workflow:publish

a slim container with ready-to-run [Mermaid CLI](https://github.com/mermaid-js/mermaid-cli) using both [Node](https://nodejs.org/en/) & [Puppeteer](https://pptr.dev/)

## Flavors

The image is published to two registries:

- [Docker Hub](https://hub.docker.com/r/ahmadnassri/mermaid-cli)
- [GitHub Package Registry](https://github.com/ahmadnassri/docker-mermaid-cli/packages)

## Usage

create a `docker-compose.yml` with the following:

```yaml
version: '3'

services:
  puppeteer:
    image: ahmadnassri/mermaid-cli
    volumes:
      - ${PWD}:/app
```

> #### Volumes
>
> Map the the directory where will copy your application files to `/app`
>
> #### Image
>
> For GitHub Package Registry, use `image: docker.pkg.github.com/ahmadnassri/mermaid-cli/mermaid-cli`
