FROM node:8-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./

# RUN npm install
RUN yarn

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "yarn", "start" ]
