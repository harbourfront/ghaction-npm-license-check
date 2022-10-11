# Container image that runs your code
FROM node:16

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["node", "index.js"]