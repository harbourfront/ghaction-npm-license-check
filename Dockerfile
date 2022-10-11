# Container image that runs your code
FROM node:16

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["node", "index.js"]