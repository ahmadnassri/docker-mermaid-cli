# ---- base image ----
FROM ahmadnassri/node-puppeteer:1.0.1

# ---- meta data ----
LABEL name="mermaid-cli"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

# ---- run everything as non-privileged user ----
USER pptruser

# ---- install dependencies globally ----
WORKDIR /home/pptruser
COPY package.json package-lock.json /home/pptruser/
RUN npm install --global

# ---- puppeteer config file
COPY config.json /home/pptruser

# ---- create app directory ----
WORKDIR /app
