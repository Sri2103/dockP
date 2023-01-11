
#Here’s the complete Dockerfile.
# syntax=docker/dockerfile:1

FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]


#To use a file in the build context, the
#Dockerfile refers to the file specified in an instruction, for example, a
#COPY instruction. A .dockerignore file lets you specify files and directories
#to be excluded from the build context. To improve the build’s performance,
#create a .dockerignore file and add the node_modules directory in it:
