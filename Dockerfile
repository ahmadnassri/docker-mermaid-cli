# ---- base image ----
FROM ahmadnassri/node-puppeteer:2.0.3

# ---- meta data ----
LABEL name="mermaid-cli"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

# ---- install mermaid cli globally ----
RUN npm install --global @mermaid-js/mermaid-cli

# ---- puppeteer config file
COPY config.json /home/pptruser

# ---- create app directory ----
WORKDIR /app
