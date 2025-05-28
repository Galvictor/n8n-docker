FROM n8nio/n8n:1.83.2

# Instala bibliotecas necessárias para o Puppeteer (Chromium headless)
USER root

RUN apt-get update && apt-get install -y \
  gconf-service \
  libasound2 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libc6 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libgcc1 \
  libgconf-2-4 \
  libgdk-pixbuf2.0-0 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libpango-1.0-0 \
  libx11-6 \
  libxcomposite1 \
  libxdamage1 \
  libxrandr2 \
  libxext6 \
  libxfixes3 \
  libxrender1 \
  libxtst6 \
  libnss3 \
  libxss1 \
  libxkbcommon0 \
  libgbm1 \
  libatspi2.0-0 \
  ca-certificates \
  fonts-liberation \
  libappindicator1 \
  lsb-release \
  xdg-utils \
  wget \
  --no-install-recommends && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

# Volta para o usuário node
USER node

# Instala o node Puppeteer do n8n
RUN npm install --omit=dev --production n8n-nodes-puppeteer
