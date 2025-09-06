FROM node:18
RUN corepack enable
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]

