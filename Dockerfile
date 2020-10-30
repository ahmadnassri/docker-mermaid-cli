# ---- base image ----
FROM ahmadnassri/node-puppeteer:1.0.2

# ---- meta data ----
LABEL name="mermaid-cli"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

# ---- run everything as non-privileged user ----
USER pptruser

# ---- install dependencies globally ----
WORKDIR /home/pptruser
COPY src/* /home/pptruser/

# ---- install packages globally ----
RUN node /home/pptruser/install.js

# ---- create app directory ----
WORKDIR /app
