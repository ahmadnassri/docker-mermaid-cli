> **WARNING**  
> UNMAINTAINED PROJECT

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
