FROM n8nio/n8n:1.83.2

USER root

# Instala dependências do Chromium para Puppeteer no Alpine
RUN apk add --no-cache \
  chromium \
  nss \
  freetype \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  nodejs \
  npm \
  dumb-init \
  udev \
  bash

# Define variáveis de ambiente necessárias para o Puppeteer
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Instala o pacote n8n-nodes-puppeteer (ajuste conforme necessário)
RUN npm install --omit=dev --production n8n-nodes-puppeteer

USER node
