FROM node:14

WORKDIR apps

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g pm2 serve

EXPOSE 3000

CMD ["pm2-runtime", "serve", "-s", "build", "-l", "3000"]
