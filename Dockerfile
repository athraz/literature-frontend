FROM node:14-alpine

WORKDIR apps

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g pm2 serve

EXPOSE 3000

CMD ["pm2", "start", "serve", "--name", "frontend", "-s", "build", "-l", "3000", "--no-daemon"]
