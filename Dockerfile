# Container image that runs your code
FROM node:16

WORKDIR /github/workspace

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .

CMD ["node", "/github/workspace/index.js"]