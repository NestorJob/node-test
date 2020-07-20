FROM node:14-alpine
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
RUN npm install -g @vue/cli
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install


COPY --chown=node:node . .
RUN npm run build